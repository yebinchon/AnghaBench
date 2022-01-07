; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_mei_phy.c_nfc_mei_rx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_mei_phy.c_nfc_mei_rx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32 }
%struct.nfc_mei_phy = type { i64, i32 }
%struct.sk_buff = type { i32 }

@MEI_NFC_MAX_READ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEI_NFC_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mei frame read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_cl_device*)* @nfc_mei_rx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfc_mei_rx_cb(%struct.mei_cl_device* %0) #0 {
  %2 = alloca %struct.mei_cl_device*, align 8
  %3 = alloca %struct.nfc_mei_phy*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %2, align 8
  %6 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %7 = call %struct.nfc_mei_phy* @mei_cldev_get_drvdata(%struct.mei_cl_device* %6)
  store %struct.nfc_mei_phy* %7, %struct.nfc_mei_phy** %3, align 8
  %8 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %3, align 8
  %9 = icmp ne %struct.nfc_mei_phy* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %3, align 8
  %13 = getelementptr inbounds %struct.nfc_mei_phy, %struct.nfc_mei_phy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %51

17:                                               ; preds = %11
  %18 = load i32, i32* @MEI_NFC_MAX_READ, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %51

24:                                               ; preds = %17
  %25 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %3, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MEI_NFC_MAX_READ, align 4
  %30 = call i32 @mei_nfc_recv(%struct.nfc_mei_phy* %25, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MEI_NFC_HEADER_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  br label %51

37:                                               ; preds = %24
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @skb_put(%struct.sk_buff* %38, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load i32, i32* @MEI_NFC_HEADER_SIZE, align 4
  %43 = call i32 @skb_pull(%struct.sk_buff* %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @MEI_DUMP_SKB_IN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %44)
  %46 = load %struct.nfc_mei_phy*, %struct.nfc_mei_phy** %3, align 8
  %47 = getelementptr inbounds %struct.nfc_mei_phy, %struct.nfc_mei_phy* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32 @nfc_hci_recv_frame(i32 %48, %struct.sk_buff* %49)
  br label %51

51:                                               ; preds = %37, %34, %23, %16, %10
  ret void
}

declare dso_local %struct.nfc_mei_phy* @mei_cldev_get_drvdata(%struct.mei_cl_device*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @mei_nfc_recv(%struct.nfc_mei_phy*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @MEI_DUMP_SKB_IN(i8*, %struct.sk_buff*) #1

declare dso_local i32 @nfc_hci_recv_frame(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
