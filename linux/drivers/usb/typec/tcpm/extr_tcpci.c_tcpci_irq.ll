; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpci = type { i32, i32 }
%struct.pd_message = type { i32, i32 }

@TCPC_ALERT = common dso_local global i32 0, align 4
@TCPC_ALERT_RX_STATUS = common dso_local global i32 0, align 4
@TCPC_ALERT_CC_STATUS = common dso_local global i32 0, align 4
@TCPC_ALERT_POWER_STATUS = common dso_local global i32 0, align 4
@TCPC_POWER_STATUS_MASK = common dso_local global i32 0, align 4
@TCPC_RX_BYTE_CNT = common dso_local global i32 0, align 4
@TCPC_RX_HDR = common dso_local global i32 0, align 4
@TCPC_RX_DATA = common dso_local global i32 0, align 4
@TCPC_ALERT_RX_HARD_RST = common dso_local global i32 0, align 4
@TCPC_ALERT_TX_SUCCESS = common dso_local global i32 0, align 4
@TCPC_TX_SUCCESS = common dso_local global i32 0, align 4
@TCPC_ALERT_TX_DISCARDED = common dso_local global i32 0, align 4
@TCPC_TX_DISCARDED = common dso_local global i32 0, align 4
@TCPC_ALERT_TX_FAILED = common dso_local global i32 0, align 4
@TCPC_TX_FAILED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcpci_irq(%struct.tcpci* %0) #0 {
  %2 = alloca %struct.tcpci*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pd_message, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tcpci* %0, %struct.tcpci** %2, align 8
  %8 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %9 = load i32, i32* @TCPC_ALERT, align 4
  %10 = call i32 @tcpci_read16(%struct.tcpci* %8, i32 %9, i32* %3)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @TCPC_ALERT_RX_STATUS, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %18 = load i32, i32* @TCPC_ALERT, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @TCPC_ALERT_RX_STATUS, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @tcpci_write16(%struct.tcpci* %17, i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @TCPC_ALERT_CC_STATUS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %31 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tcpm_cc_change(i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @TCPC_ALERT_POWER_STATUS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %41 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TCPC_POWER_STATUS_MASK, align 4
  %44 = call i32 @regmap_read(i32 %42, i32 %43, i32* %4)
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 255
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %49 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @tcpm_tcpc_reset(i32 %50)
  br label %57

52:                                               ; preds = %39
  %53 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %54 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @tcpm_vbus_change(i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %57, %34
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @TCPC_ALERT_RX_STATUS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %102

63:                                               ; preds = %58
  %64 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %65 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TCPC_RX_BYTE_CNT, align 4
  %68 = call i32 @regmap_read(i32 %66, i32 %67, i32* %6)
  %69 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %70 = load i32, i32* @TCPC_RX_HDR, align 4
  %71 = call i32 @tcpci_read16(%struct.tcpci* %69, i32 %70, i32* %7)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @cpu_to_le16(i32 %72)
  %74 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %5, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = icmp ugt i64 %76, 4
  %78 = zext i1 %77 to i32
  %79 = call i64 @WARN_ON(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %63
  store i32 4, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %63
  %83 = load i32, i32* %6, align 4
  %84 = icmp ugt i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %87 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TCPC_RX_DATA, align 4
  %90 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %5, i32 0, i32 0
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @regmap_raw_read(i32 %88, i32 %89, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %85, %82
  %94 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %95 = load i32, i32* @TCPC_ALERT, align 4
  %96 = load i32, i32* @TCPC_ALERT_RX_STATUS, align 4
  %97 = call i32 @tcpci_write16(%struct.tcpci* %94, i32 %95, i32 %96)
  %98 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %99 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @tcpm_pd_receive(i32 %100, %struct.pd_message* %5)
  br label %102

102:                                              ; preds = %93, %58
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @TCPC_ALERT_RX_HARD_RST, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %109 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @tcpm_pd_hard_reset(i32 %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @TCPC_ALERT_TX_SUCCESS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %119 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TCPC_TX_SUCCESS, align 4
  %122 = call i32 @tcpm_pd_transmit_complete(i32 %120, i32 %121)
  br label %147

123:                                              ; preds = %112
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @TCPC_ALERT_TX_DISCARDED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %130 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @TCPC_TX_DISCARDED, align 4
  %133 = call i32 @tcpm_pd_transmit_complete(i32 %131, i32 %132)
  br label %146

134:                                              ; preds = %123
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @TCPC_ALERT_TX_FAILED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.tcpci*, %struct.tcpci** %2, align 8
  %141 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @TCPC_TX_FAILED, align 4
  %144 = call i32 @tcpm_pd_transmit_complete(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %139, %134
  br label %146

146:                                              ; preds = %145, %128
  br label %147

147:                                              ; preds = %146, %117
  %148 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %148
}

declare dso_local i32 @tcpci_read16(%struct.tcpci*, i32, i32*) #1

declare dso_local i32 @tcpci_write16(%struct.tcpci*, i32, i32) #1

declare dso_local i32 @tcpm_cc_change(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @tcpm_tcpc_reset(i32) #1

declare dso_local i32 @tcpm_vbus_change(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @regmap_raw_read(i32, i32, i32*, i32) #1

declare dso_local i32 @tcpm_pd_receive(i32, %struct.pd_message*) #1

declare dso_local i32 @tcpm_pd_hard_reset(i32) #1

declare dso_local i32 @tcpm_pd_transmit_complete(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
