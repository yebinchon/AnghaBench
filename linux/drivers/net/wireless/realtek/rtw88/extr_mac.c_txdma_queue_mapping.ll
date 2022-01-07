; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_txdma_queue_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_txdma_queue_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_chip_info* }
%struct.TYPE_2__ = type { i32 }
%struct.rtw_chip_info = type { %struct.rtw_rqpn* }
%struct.rtw_rqpn = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_TXDMA_PQ_MAP = common dso_local global i32 0, align 4
@REG_CR = common dso_local global i32 0, align 4
@MAC_TRX_ENABLE = common dso_local global i32 0, align 4
@REG_H2CQ_CSR = common dso_local global i32 0, align 4
@BIT_H2CQ_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @txdma_queue_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txdma_queue_mapping(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_chip_info*, align 8
  %5 = alloca %struct.rtw_rqpn*, align 8
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 1
  %9 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %8, align 8
  store %struct.rtw_chip_info* %9, %struct.rtw_chip_info** %4, align 8
  store %struct.rtw_rqpn* null, %struct.rtw_rqpn** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %11 = call i32 @rtw_hci_type(%struct.rtw_dev* %10)
  switch i32 %11, label %56 [
    i32 129, label %12
    i32 128, label %17
  ]

12:                                               ; preds = %1
  %13 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %14 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %13, i32 0, i32 0
  %15 = load %struct.rtw_rqpn*, %struct.rtw_rqpn** %14, align 8
  %16 = getelementptr inbounds %struct.rtw_rqpn, %struct.rtw_rqpn* %15, i64 1
  store %struct.rtw_rqpn* %16, %struct.rtw_rqpn** %5, align 8
  br label %59

17:                                               ; preds = %1
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %25 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %24, i32 0, i32 0
  %26 = load %struct.rtw_rqpn*, %struct.rtw_rqpn** %25, align 8
  %27 = getelementptr inbounds %struct.rtw_rqpn, %struct.rtw_rqpn* %26, i64 2
  store %struct.rtw_rqpn* %27, %struct.rtw_rqpn** %5, align 8
  br label %55

28:                                               ; preds = %17
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %30 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %36 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %35, i32 0, i32 0
  %37 = load %struct.rtw_rqpn*, %struct.rtw_rqpn** %36, align 8
  %38 = getelementptr inbounds %struct.rtw_rqpn, %struct.rtw_rqpn* %37, i64 3
  store %struct.rtw_rqpn* %38, %struct.rtw_rqpn** %5, align 8
  br label %54

39:                                               ; preds = %28
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %47 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %46, i32 0, i32 0
  %48 = load %struct.rtw_rqpn*, %struct.rtw_rqpn** %47, align 8
  %49 = getelementptr inbounds %struct.rtw_rqpn, %struct.rtw_rqpn* %48, i64 4
  store %struct.rtw_rqpn* %49, %struct.rtw_rqpn** %5, align 8
  br label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %111

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %34
  br label %55

55:                                               ; preds = %54, %23
  br label %59

56:                                               ; preds = %1
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %111

59:                                               ; preds = %55, %12
  %60 = load %struct.rtw_rqpn*, %struct.rtw_rqpn** %5, align 8
  %61 = getelementptr inbounds %struct.rtw_rqpn, %struct.rtw_rqpn* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @BIT_TXDMA_HIQ_MAP(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.rtw_rqpn*, %struct.rtw_rqpn** %5, align 8
  %67 = getelementptr inbounds %struct.rtw_rqpn, %struct.rtw_rqpn* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @BIT_TXDMA_MGQ_MAP(i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.rtw_rqpn*, %struct.rtw_rqpn** %5, align 8
  %73 = getelementptr inbounds %struct.rtw_rqpn, %struct.rtw_rqpn* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BIT_TXDMA_BKQ_MAP(i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load %struct.rtw_rqpn*, %struct.rtw_rqpn** %5, align 8
  %79 = getelementptr inbounds %struct.rtw_rqpn, %struct.rtw_rqpn* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BIT_TXDMA_BEQ_MAP(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load %struct.rtw_rqpn*, %struct.rtw_rqpn** %5, align 8
  %85 = getelementptr inbounds %struct.rtw_rqpn, %struct.rtw_rqpn* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @BIT_TXDMA_VIQ_MAP(i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load %struct.rtw_rqpn*, %struct.rtw_rqpn** %5, align 8
  %91 = getelementptr inbounds %struct.rtw_rqpn, %struct.rtw_rqpn* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @BIT_TXDMA_VOQ_MAP(i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %97 = load i32, i32* @REG_TXDMA_PQ_MAP, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @rtw_write16(%struct.rtw_dev* %96, i32 %97, i32 %98)
  %100 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %101 = load i32, i32* @REG_CR, align 4
  %102 = call i32 @rtw_write8(%struct.rtw_dev* %100, i32 %101, i32 0)
  %103 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %104 = load i32, i32* @REG_CR, align 4
  %105 = load i32, i32* @MAC_TRX_ENABLE, align 4
  %106 = call i32 @rtw_write8(%struct.rtw_dev* %103, i32 %104, i32 %105)
  %107 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %108 = load i32, i32* @REG_H2CQ_CSR, align 4
  %109 = load i32, i32* @BIT_H2CQ_FULL, align 4
  %110 = call i32 @rtw_write32(%struct.rtw_dev* %107, i32 %108, i32 %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %59, %56, %50
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @rtw_hci_type(%struct.rtw_dev*) #1

declare dso_local i32 @BIT_TXDMA_HIQ_MAP(i32) #1

declare dso_local i32 @BIT_TXDMA_MGQ_MAP(i32) #1

declare dso_local i32 @BIT_TXDMA_BKQ_MAP(i32) #1

declare dso_local i32 @BIT_TXDMA_BEQ_MAP(i32) #1

declare dso_local i32 @BIT_TXDMA_VIQ_MAP(i32) #1

declare dso_local i32 @BIT_TXDMA_VOQ_MAP(i32) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
