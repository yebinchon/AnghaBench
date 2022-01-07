; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_geni_spi_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_geni_spi_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_geni_master = type { i64, i32, i32, i32, i64, i32, i64, %struct.geni_se }
%struct.geni_se = type { i64 }

@CMD_NONE = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@SE_GENI_M_IRQ_STATUS = common dso_local global i64 0, align 8
@M_RX_FIFO_WATERMARK_EN = common dso_local global i32 0, align 4
@M_RX_FIFO_LAST_EN = common dso_local global i32 0, align 4
@M_TX_FIFO_WATERMARK_EN = common dso_local global i32 0, align 4
@M_CMD_DONE_EN = common dso_local global i32 0, align 4
@CMD_XFER = common dso_local global i64 0, align 8
@CMD_CS = common dso_local global i64 0, align 8
@SE_GENI_TX_WATERMARK_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Premature done. tx_rem = %d bpw%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Premature done. rx_rem = %d bpw%d\0A\00", align 1
@M_CMD_CANCEL_EN = common dso_local global i32 0, align 4
@M_CMD_ABORT_EN = common dso_local global i32 0, align 4
@SE_GENI_M_IRQ_CLEAR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @geni_spi_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geni_spi_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.spi_geni_master*, align 8
  %8 = alloca %struct.geni_se*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.spi_master*
  store %struct.spi_master* %12, %struct.spi_master** %6, align 8
  %13 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %14 = call %struct.spi_geni_master* @spi_master_get_devdata(%struct.spi_master* %13)
  store %struct.spi_geni_master* %14, %struct.spi_geni_master** %7, align 8
  %15 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %16 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %15, i32 0, i32 7
  store %struct.geni_se* %16, %struct.geni_se** %8, align 8
  %17 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %18 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CMD_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %152

24:                                               ; preds = %2
  %25 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %26 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %25, i32 0, i32 1
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.geni_se*, %struct.geni_se** %8, align 8
  %30 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SE_GENI_M_IRQ_STATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @M_RX_FIFO_WATERMARK_EN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @M_RX_FIFO_LAST_EN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %24
  %45 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %46 = call i32 @geni_spi_handle_rx(%struct.spi_geni_master* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @M_TX_FIFO_WATERMARK_EN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %54 = call i32 @geni_spi_handle_tx(%struct.spi_geni_master* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @M_CMD_DONE_EN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %122

60:                                               ; preds = %55
  %61 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %62 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CMD_XFER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %68 = call i32 @spi_finalize_current_transfer(%struct.spi_master* %67)
  br label %80

69:                                               ; preds = %60
  %70 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %71 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CMD_CS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %77 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %76, i32 0, i32 2
  %78 = call i32 @complete(i32* %77)
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %66
  %81 = load i64, i64* @CMD_NONE, align 8
  %82 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %83 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %85 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %80
  %89 = load %struct.geni_se*, %struct.geni_se** %8, align 8
  %90 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SE_GENI_TX_WATERMARK_REG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 0, i64 %93)
  %95 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %96 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %99 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %102 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %100, i32 %103)
  br label %105

105:                                              ; preds = %88, %80
  %106 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %107 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %112 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %115 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %118 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %116, i32 %119)
  br label %121

121:                                              ; preds = %110, %105
  br label %122

122:                                              ; preds = %121, %55
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @M_CMD_CANCEL_EN, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @M_CMD_ABORT_EN, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127, %122
  %133 = load i64, i64* @CMD_NONE, align 8
  %134 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %135 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %137 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %136, i32 0, i32 2
  %138 = call i32 @complete(i32* %137)
  br label %139

139:                                              ; preds = %132, %127
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.geni_se*, %struct.geni_se** %8, align 8
  %142 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @SE_GENI_M_IRQ_CLEAR, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @writel(i32 %140, i64 %145)
  %147 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %148 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %147, i32 0, i32 1
  %149 = load i64, i64* %10, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %139, %22
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.spi_geni_master* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @geni_spi_handle_rx(%struct.spi_geni_master*) #1

declare dso_local i32 @geni_spi_handle_tx(%struct.spi_geni_master*) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.spi_master*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
