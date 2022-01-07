; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_event_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_event_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32, i32* }

@.str = private unnamed_addr constant [44 x i8] c"Microread received event 0x%x to gate 0x%x\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NFC_COMM_PASSIVE = common dso_local global i32 0, align 4
@MICROREAD_GATE_ID_P2P_TARGET = common dso_local global i32 0, align 4
@MICROREAD_PAR_P2P_TARGET_MODE = common dso_local global i32 0, align 4
@MICROREAD_EVT_MREAD_DISCOVERY_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i64, i64, %struct.sk_buff*)* @microread_event_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microread_event_received(%struct.nfc_hci_dev* %0, i64 %1, i64 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_hci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %13 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %14 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21)
  %23 = load i64, i64* %8, align 8
  switch i64 %23, label %140 [
    i64 131, label %24
    i64 130, label %29
    i64 132, label %68
    i64 133, label %68
    i64 129, label %71
    i64 134, label %86
    i64 128, label %125
  ]

24:                                               ; preds = %4
  %25 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call i32 @microread_target_discovered(%struct.nfc_hci_dev* %25, i64 %26, %struct.sk_buff* %27)
  store i32 0, i32* %5, align 4
  br label %143

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  %37 = load i32, i32* @EPROTO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %143

39:                                               ; preds = %29
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %143

56:                                               ; preds = %39
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = call i32 @skb_trim(%struct.sk_buff* %57, i32 %61)
  %63 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %64 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = call i32 @nfc_tm_data_received(i32 %65, %struct.sk_buff* %66)
  store i32 %67, i32* %10, align 4
  br label %141

68:                                               ; preds = %4, %4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  store i32 0, i32* %5, align 4
  br label %143

71:                                               ; preds = %4
  %72 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %73 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %76 = load i32, i32* @NFC_COMM_PASSIVE, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @nfc_tm_activated(i32 %74, i32 %75, i32 %76, i32* %79, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = call i32 @kfree_skb(%struct.sk_buff* %84)
  br label %141

86:                                               ; preds = %4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = call i32 @kfree_skb(%struct.sk_buff* %92)
  %94 = load i32, i32* @EPROTO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %143

96:                                               ; preds = %86
  %97 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %96
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = call i32 @kfree_skb(%struct.sk_buff* %109)
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %143

113:                                              ; preds = %96
  %114 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, 1
  %119 = call i32 @skb_trim(%struct.sk_buff* %114, i32 %118)
  %120 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %121 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %124 = call i32 @nfc_tm_data_received(i32 %122, %struct.sk_buff* %123)
  store i32 %124, i32* %10, align 4
  br label %141

125:                                              ; preds = %4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %127 = call i32 @kfree_skb(%struct.sk_buff* %126)
  store i64 255, i64* %12, align 8
  %128 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %129 = load i32, i32* @MICROREAD_GATE_ID_P2P_TARGET, align 4
  %130 = load i32, i32* @MICROREAD_PAR_P2P_TARGET_MODE, align 4
  %131 = call i32 @nfc_hci_set_param(%struct.nfc_hci_dev* %128, i32 %129, i32 %130, i64* %12, i32 1)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %141

135:                                              ; preds = %125
  %136 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %6, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load i32, i32* @MICROREAD_EVT_MREAD_DISCOVERY_STOP, align 4
  %139 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %136, i64 %137, i32 %138, i32* null, i32 0)
  store i32 %139, i32* %10, align 4
  br label %141

140:                                              ; preds = %4
  store i32 1, i32* %5, align 4
  br label %143

141:                                              ; preds = %135, %134, %113, %71, %56
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %140, %108, %91, %68, %51, %34, %24
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @pr_info(i8*, i64, i64) #1

declare dso_local i32 @microread_target_discovered(%struct.nfc_hci_dev*, i64, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_tm_data_received(i32, %struct.sk_buff*) #1

declare dso_local i32 @nfc_tm_activated(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @nfc_hci_set_param(%struct.nfc_hci_dev*, i32, i32, i64*, i32) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
