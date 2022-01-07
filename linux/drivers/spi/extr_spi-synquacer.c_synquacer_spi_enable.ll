; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_synquacer_spi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_synquacer_spi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.synquacer_spi = type { i64, i64 }

@SYNQUACER_HSSPI_REG_MCTRL = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_REG_TXE = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_REG_RXE = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_REG_TXC = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_REG_RXC = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_REG_FAULTC = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_REG_DMCFG = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_DMCFG_SSDC = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_DMCFG_MSTARTEN = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_CLOCK_SRC_IPCLK = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_MCTRL_CDSS = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_MCTRL_COMMAND_SEQUENCE_EN = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_MCTRL_MEN = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_MCTRL_SYNCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*)* @synquacer_spi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synquacer_spi_enable(%struct.spi_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.synquacer_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.synquacer_spi* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.synquacer_spi* %8, %struct.synquacer_spi** %6, align 8
  %9 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %10 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SYNQUACER_HSSPI_REG_MCTRL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 0, i64 %13)
  %15 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %16 = call i32 @synquacer_spi_wait_status_update(%struct.synquacer_spi* %15, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %118

21:                                               ; preds = %1
  %22 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %23 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SYNQUACER_HSSPI_REG_TXE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 0, i64 %26)
  %28 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %29 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SYNQUACER_HSSPI_REG_RXE, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 0, i64 %32)
  %34 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %35 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SYNQUACER_HSSPI_REG_TXC, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 -1, i64 %38)
  %40 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %41 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SYNQUACER_HSSPI_REG_RXC, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 -1, i64 %44)
  %46 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %47 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SYNQUACER_HSSPI_REG_FAULTC, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 -1, i64 %50)
  %52 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %53 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SYNQUACER_HSSPI_REG_DMCFG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readl(i64 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @SYNQUACER_HSSPI_DMCFG_SSDC, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @SYNQUACER_HSSPI_DMCFG_MSTARTEN, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %68 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SYNQUACER_HSSPI_REG_DMCFG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %74 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SYNQUACER_HSSPI_REG_MCTRL, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readl(i64 %77)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %80 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SYNQUACER_HSSPI_CLOCK_SRC_IPCLK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %21
  %85 = load i32, i32* @SYNQUACER_HSSPI_MCTRL_CDSS, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %93

88:                                               ; preds = %21
  %89 = load i32, i32* @SYNQUACER_HSSPI_MCTRL_CDSS, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %88, %84
  %94 = load i32, i32* @SYNQUACER_HSSPI_MCTRL_COMMAND_SEQUENCE_EN, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %4, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* @SYNQUACER_HSSPI_MCTRL_MEN, align 4
  %99 = load i32, i32* %4, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* @SYNQUACER_HSSPI_MCTRL_SYNCON, align 4
  %102 = load i32, i32* %4, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %106 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SYNQUACER_HSSPI_REG_MCTRL, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  %111 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %112 = call i32 @synquacer_spi_wait_status_update(%struct.synquacer_spi* %111, i32 1)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %93
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %118

117:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %115, %19
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.synquacer_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @synquacer_spi_wait_status_update(%struct.synquacer_spi*, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
