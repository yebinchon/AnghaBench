; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_nci_recv_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_nci_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i64* }

@NFCMRVL_HCI_EVENT_CODE = common dso_local global i64 0, align 8
@NFCMRVL_HCI_NFC_EVENT_CODE = common dso_local global i64 0, align 8
@NFCMRVL_HCI_EVENT_HEADER_SIZE = common dso_local global i32 0, align 4
@NFCMRVL_NCI_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfcmrvl_nci_recv_frame(%struct.nfcmrvl_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfcmrvl_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %7 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NFCMRVL_HCI_EVENT_CODE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %11
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NFCMRVL_HCI_NFC_EVENT_CODE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @NFCMRVL_HCI_EVENT_HEADER_SIZE, align 4
  %30 = call i32 @skb_pull(%struct.sk_buff* %28, i32 %29)
  br label %34

31:                                               ; preds = %19, %11
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  store i32 0, i32* %3, align 4
  br label %64

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %37 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @nfcmrvl_fw_dnld_recv_frame(%struct.nfcmrvl_private* %45, %struct.sk_buff* %46)
  store i32 0, i32* %3, align 4
  br label %64

48:                                               ; preds = %35
  %49 = load i32, i32* @NFCMRVL_NCI_RUNNING, align 4
  %50 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %51 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %50, i32 0, i32 1
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %56 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @nci_recv_frame(%struct.TYPE_6__* %57, %struct.sk_buff* %58)
  br label %63

60:                                               ; preds = %48
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  store i32 0, i32* %3, align 4
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60, %44, %31
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfcmrvl_fw_dnld_recv_frame(%struct.nfcmrvl_private*, %struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nci_recv_frame(%struct.TYPE_6__*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
