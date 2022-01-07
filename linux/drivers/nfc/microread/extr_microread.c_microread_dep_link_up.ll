; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_dep_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_dep_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.nfc_target = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }

@MICROREAD_PAR_P2P_INITIATOR_GT = common dso_local global i32 0, align 4
@NFC_GB_MAXSIZE = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@NFC_RF_INITIATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, i32, i32*, i64)* @microread_dep_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microread_dep_link_up(%struct.nfc_hci_dev* %0, %struct.nfc_target* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_hci_dev*, align 8
  %8 = alloca %struct.nfc_target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %7, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %14 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %7, align 8
  %15 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %16 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MICROREAD_PAR_P2P_INITIATOR_GT, align 4
  %19 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %14, i32 %17, i32 %18, %struct.sk_buff** %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %66

24:                                               ; preds = %5
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NFC_GB_MAXSIZE, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %24
  %36 = load i32, i32* @EPROTO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  br label %62

38:                                               ; preds = %29
  %39 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %7, align 8
  %40 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @nfc_set_remote_general_bytes(i32 %41, i32 %44, i64 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %38
  %52 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %7, align 8
  %53 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %56 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @NFC_RF_INITIATOR, align 4
  %60 = call i32 @nfc_dep_link_is_up(i32 %54, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %51, %38
  br label %62

62:                                               ; preds = %61, %35
  %63 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %64 = call i32 @kfree_skb(%struct.sk_buff* %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %22
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i32, i32, %struct.sk_buff**) #1

declare dso_local i32 @nfc_set_remote_general_bytes(i32, i32, i64) #1

declare dso_local i32 @nfc_dep_link_is_up(i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
