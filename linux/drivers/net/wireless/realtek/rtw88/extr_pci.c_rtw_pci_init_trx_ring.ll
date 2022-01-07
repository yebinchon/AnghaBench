; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_init_trx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_init_trx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, i64 }
%struct.rtw_chip_info = type { i32, i32 }
%struct.rtw_pci = type { %struct.rtw_pci_rx_ring*, %struct.rtw_pci_tx_ring* }
%struct.rtw_pci_rx_ring = type { i32 }
%struct.rtw_pci_tx_ring = type { i32 }

@RTK_MAX_TX_QUEUE_NUM = common dso_local global i32 0, align 4
@RTK_MAX_RX_QUEUE_NUM = common dso_local global i32 0, align 4
@RTK_MAX_RX_DESC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_pci_init_trx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_init_trx_ring(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_pci*, align 8
  %5 = alloca %struct.rtw_pci_tx_ring*, align 8
  %6 = alloca %struct.rtw_pci_rx_ring*, align 8
  %7 = alloca %struct.rtw_chip_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.rtw_pci*
  store %struct.rtw_pci* %19, %struct.rtw_pci** %4, align 8
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %21 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %20, i32 0, i32 0
  %22 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %21, align 8
  store %struct.rtw_chip_info* %22, %struct.rtw_chip_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %24 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %48, %1
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RTK_MAX_TX_QUEUE_NUM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load %struct.rtw_pci*, %struct.rtw_pci** %4, align 8
  %32 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %31, i32 0, i32 1
  %33 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %33, i64 %35
  store %struct.rtw_pci_tx_ring* %36, %struct.rtw_pci_tx_ring** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @max_num_of_tx_queue(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %40 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %5, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @rtw_pci_init_tx_ring(%struct.rtw_dev* %39, %struct.rtw_pci_tx_ring* %40, i32 %41, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  br label %79

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %26

51:                                               ; preds = %26
  %52 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %53 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %75, %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @RTK_MAX_RX_QUEUE_NUM, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load %struct.rtw_pci*, %struct.rtw_pci** %4, align 8
  %61 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %60, i32 0, i32 0
  %62 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %62, i64 %64
  store %struct.rtw_pci_rx_ring* %65, %struct.rtw_pci_rx_ring** %6, align 8
  %66 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %67 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %6, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @RTK_MAX_RX_DESC_NUM, align 4
  %70 = call i32 @rtw_pci_init_rx_ring(%struct.rtw_dev* %66, %struct.rtw_pci_rx_ring* %67, i32 %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %79

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %55

78:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %119

79:                                               ; preds = %73, %46
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %95, %79
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load %struct.rtw_pci*, %struct.rtw_pci** %4, align 8
  %87 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %86, i32 0, i32 1
  %88 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %88, i64 %90
  store %struct.rtw_pci_tx_ring* %91, %struct.rtw_pci_tx_ring** %5, align 8
  %92 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %93 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %5, align 8
  %94 = call i32 @rtw_pci_free_tx_ring(%struct.rtw_dev* %92, %struct.rtw_pci_tx_ring* %93)
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %81

98:                                               ; preds = %81
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %114, %98
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load %struct.rtw_pci*, %struct.rtw_pci** %4, align 8
  %106 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %105, i32 0, i32 0
  %107 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %107, i64 %109
  store %struct.rtw_pci_rx_ring* %110, %struct.rtw_pci_rx_ring** %6, align 8
  %111 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %112 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %6, align 8
  %113 = call i32 @rtw_pci_free_rx_ring(%struct.rtw_dev* %111, %struct.rtw_pci_rx_ring* %112)
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %100

117:                                              ; preds = %100
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %78
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @max_num_of_tx_queue(i32) #1

declare dso_local i32 @rtw_pci_init_tx_ring(%struct.rtw_dev*, %struct.rtw_pci_tx_ring*, i32, i32) #1

declare dso_local i32 @rtw_pci_init_rx_ring(%struct.rtw_dev*, %struct.rtw_pci_rx_ring*, i32, i32) #1

declare dso_local i32 @rtw_pci_free_tx_ring(%struct.rtw_dev*, %struct.rtw_pci_tx_ring*) #1

declare dso_local i32 @rtw_pci_free_rx_ring(%struct.rtw_dev*, %struct.rtw_pci_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
