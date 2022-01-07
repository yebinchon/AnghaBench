; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_interrupt_threadfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_interrupt_threadfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i64 }
%struct.rtw_pci = type { i32 }

@IMR_MGNTDOK = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_MGMT = common dso_local global i32 0, align 4
@IMR_HIGHDOK = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_HI0 = common dso_local global i32 0, align 4
@IMR_BEDOK = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_BE = common dso_local global i32 0, align 4
@IMR_BKDOK = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_BK = common dso_local global i32 0, align 4
@IMR_VODOK = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_VO = common dso_local global i32 0, align 4
@IMR_VIDOK = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_VI = common dso_local global i32 0, align 4
@IMR_H2CDOK = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_H2C = common dso_local global i32 0, align 4
@IMR_ROK = common dso_local global i32 0, align 4
@RTW_RX_QUEUE_MPDU = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rtw_pci_interrupt_threadfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_interrupt_threadfn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.rtw_pci*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rtw_dev*
  store %struct.rtw_dev* %10, %struct.rtw_dev** %5, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rtw_pci*
  store %struct.rtw_pci* %14, %struct.rtw_pci** %6, align 8
  %15 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %16 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %20 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %22 = call i32 @rtw_pci_irq_recognized(%struct.rtw_dev* %19, %struct.rtw_pci* %20, i32* %21)
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = load i32, i32* @IMR_MGNTDOK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %30 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %31 = load i32, i32* @RTW_TX_QUEUE_MGMT, align 4
  %32 = call i32 @rtw_pci_tx_isr(%struct.rtw_dev* %29, %struct.rtw_pci* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %2
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = load i32, i32* @IMR_HIGHDOK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %41 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %42 = load i32, i32* @RTW_TX_QUEUE_HI0, align 4
  %43 = call i32 @rtw_pci_tx_isr(%struct.rtw_dev* %40, %struct.rtw_pci* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %33
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = load i32, i32* @IMR_BEDOK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %52 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %53 = load i32, i32* @RTW_TX_QUEUE_BE, align 4
  %54 = call i32 @rtw_pci_tx_isr(%struct.rtw_dev* %51, %struct.rtw_pci* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %44
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = load i32, i32* @IMR_BKDOK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %63 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %64 = load i32, i32* @RTW_TX_QUEUE_BK, align 4
  %65 = call i32 @rtw_pci_tx_isr(%struct.rtw_dev* %62, %struct.rtw_pci* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %55
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = load i32, i32* @IMR_VODOK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %74 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %75 = load i32, i32* @RTW_TX_QUEUE_VO, align 4
  %76 = call i32 @rtw_pci_tx_isr(%struct.rtw_dev* %73, %struct.rtw_pci* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %66
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = load i32, i32* @IMR_VIDOK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %85 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %86 = load i32, i32* @RTW_TX_QUEUE_VI, align 4
  %87 = call i32 @rtw_pci_tx_isr(%struct.rtw_dev* %84, %struct.rtw_pci* %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %77
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IMR_H2CDOK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %96 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %97 = load i32, i32* @RTW_TX_QUEUE_H2C, align 4
  %98 = call i32 @rtw_pci_tx_isr(%struct.rtw_dev* %95, %struct.rtw_pci* %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %88
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %101 = load i32, i32* %100, align 16
  %102 = load i32, i32* @IMR_ROK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %107 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %108 = load i32, i32* @RTW_RX_QUEUE_MPDU, align 4
  %109 = call i32 @rtw_pci_rx_isr(%struct.rtw_dev* %106, %struct.rtw_pci* %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %99
  %111 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %112 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %113 = call i32 @rtw_pci_enable_interrupt(%struct.rtw_dev* %111, %struct.rtw_pci* %112)
  %114 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %115 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %114, i32 0, i32 0
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %118
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtw_pci_irq_recognized(%struct.rtw_dev*, %struct.rtw_pci*, i32*) #1

declare dso_local i32 @rtw_pci_tx_isr(%struct.rtw_dev*, %struct.rtw_pci*, i32) #1

declare dso_local i32 @rtw_pci_rx_isr(%struct.rtw_dev*, %struct.rtw_pci*, i32) #1

declare dso_local i32 @rtw_pci_enable_interrupt(%struct.rtw_dev*, %struct.rtw_pci*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
