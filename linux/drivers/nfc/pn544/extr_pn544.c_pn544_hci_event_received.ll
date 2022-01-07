; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_event_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_event_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i64*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"hci event %d\0A\00", align 1
@PN544_RF_READER_NFCIP1_INITIATOR_GATE = common dso_local global i64 0, align 8
@PN544_RF_READER_NFCIP1_TARGET_GATE = common dso_local global i64 0, align 8
@PN544_DEP_ATR_REQ = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NFC_COMM_PASSIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFC_HCI_EVT_END_OPERATION = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"data0 %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i64, i64, %struct.sk_buff*)* @pn544_hci_event_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_event_received(%struct.nfc_hci_dev* %0, i64 %1, i64 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_hci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %13 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %14 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %8, align 8
  switch i64 %22, label %100 [
    i64 130, label %23
    i64 129, label %63
    i64 128, label %68
  ]

23:                                               ; preds = %4
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @PN544_RF_READER_NFCIP1_INITIATOR_GATE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @nfc_hci_target_discovered(%struct.nfc_hci_dev* %28, i64 %29)
  store i32 %30, i32* %12, align 4
  br label %62

31:                                               ; preds = %23
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @PN544_RF_READER_NFCIP1_TARGET_GATE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* @PN544_DEP_ATR_REQ, align 4
  %39 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %36, i64 %37, i32 %38, %struct.sk_buff** %10)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %102

43:                                               ; preds = %35
  %44 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %45 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %48 = load i32, i32* @NFC_COMM_PASSIVE, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @nfc_tm_activated(i32 %46, i32 %47, i32 %48, i64* %51, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  br label %61

58:                                               ; preds = %31
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %58, %43
  br label %62

62:                                               ; preds = %61, %27
  br label %101

63:                                               ; preds = %4
  %64 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i32, i32* @NFC_HCI_EVT_END_OPERATION, align 4
  %67 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %64, i64 %65, i32 %66, i32* null, i32 0)
  store i32 %67, i32* %12, align 4
  br label %101

68:                                               ; preds = %4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %71, 2
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @EPROTO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %12, align 4
  br label %102

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @EPROTO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  br label %102

92:                                               ; preds = %76
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = call i32 @skb_pull(%struct.sk_buff* %93, i32 2)
  %95 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %96 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = call i32 @nfc_tm_data_received(i32 %97, %struct.sk_buff* %98)
  store i32 %99, i32* %5, align 4
  br label %106

100:                                              ; preds = %4
  store i32 1, i32* %5, align 4
  br label %106

101:                                              ; preds = %63, %62
  br label %102

102:                                              ; preds = %101, %83, %73, %42
  %103 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %104 = call i32 @kfree_skb(%struct.sk_buff* %103)
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %100, %92
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @nfc_hci_target_discovered(%struct.nfc_hci_dev*, i64) #1

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i64, i32, %struct.sk_buff**) #1

declare dso_local i32 @nfc_tm_activated(i32, i32, i32, i64*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i64, i32, i32*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_tm_data_received(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
