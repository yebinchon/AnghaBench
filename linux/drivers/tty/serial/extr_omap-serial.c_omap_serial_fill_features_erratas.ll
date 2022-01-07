; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_omap_serial_fill_features_erratas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_omap_serial_fill_features_erratas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_omap_port = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@UART_OMAP_MVER = common dso_local global i32 0, align 4
@OMAP_UART_MVR_SCHEME_SHIFT = common dso_local global i32 0, align 4
@OMAP_UART_LEGACY_MVR_MAJ_MASK = common dso_local global i32 0, align 4
@OMAP_UART_LEGACY_MVR_MAJ_SHIFT = common dso_local global i32 0, align 4
@OMAP_UART_LEGACY_MVR_MIN_MASK = common dso_local global i32 0, align 4
@OMAP_UART_MVR_MAJ_MASK = common dso_local global i32 0, align 4
@OMAP_UART_MVR_MAJ_SHIFT = common dso_local global i32 0, align 4
@OMAP_UART_MVR_MIN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unknown %s revision, defaulting to highest\0A\00", align 1
@UART_ERRATA_i202_MDR1_ACCESS = common dso_local global i32 0, align 4
@UART_ERRATA_i291_DMA_FORCEIDLE = common dso_local global i32 0, align 4
@OMAP_UART_WER_HAS_TX_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_omap_port*)* @omap_serial_fill_features_erratas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_serial_fill_features_erratas(%struct.uart_omap_port* %0) #0 {
  %2 = alloca %struct.uart_omap_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_omap_port* %0, %struct.uart_omap_port** %2, align 8
  %8 = load %struct.uart_omap_port*, %struct.uart_omap_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @UART_OMAP_MVER, align 4
  %13 = load %struct.uart_omap_port*, %struct.uart_omap_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %12, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %11, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @OMAP_UART_MVR_SCHEME_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %43 [
    i32 0, label %25
    i32 1, label %34
  ]

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @OMAP_UART_LEGACY_MVR_MAJ_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @OMAP_UART_LEGACY_MVR_MAJ_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @OMAP_UART_LEGACY_MVR_MIN_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %7, align 4
  br label %51

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @OMAP_UART_MVR_MAJ_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @OMAP_UART_MVR_MAJ_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @OMAP_UART_MVR_MIN_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %7, align 4
  br label %51

43:                                               ; preds = %1
  %44 = load %struct.uart_omap_port*, %struct.uart_omap_port** %2, align 8
  %45 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.uart_omap_port*, %struct.uart_omap_port** %2, align 8
  %48 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 255, i32* %6, align 4
  store i32 255, i32* %7, align 4
  br label %51

51:                                               ; preds = %43, %34, %25
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @UART_BUILD_REVISION(i32 %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  switch i32 %55, label %88 [
    i32 130, label %56
    i32 129, label %64
    i32 128, label %77
  ]

56:                                               ; preds = %51
  %57 = load i32, i32* @UART_ERRATA_i202_MDR1_ACCESS, align 4
  %58 = load i32, i32* @UART_ERRATA_i291_DMA_FORCEIDLE, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.uart_omap_port*, %struct.uart_omap_port** %2, align 8
  %61 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %89

64:                                               ; preds = %51
  %65 = load i32, i32* @UART_ERRATA_i202_MDR1_ACCESS, align 4
  %66 = load i32, i32* @UART_ERRATA_i291_DMA_FORCEIDLE, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.uart_omap_port*, %struct.uart_omap_port** %2, align 8
  %69 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* @OMAP_UART_WER_HAS_TX_WAKEUP, align 4
  %73 = load %struct.uart_omap_port*, %struct.uart_omap_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %89

77:                                               ; preds = %51
  %78 = load i32, i32* @UART_ERRATA_i202_MDR1_ACCESS, align 4
  %79 = load %struct.uart_omap_port*, %struct.uart_omap_port** %2, align 8
  %80 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* @OMAP_UART_WER_HAS_TX_WAKEUP, align 4
  %84 = load %struct.uart_omap_port*, %struct.uart_omap_port** %2, align 8
  %85 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %89

88:                                               ; preds = %51
  br label %89

89:                                               ; preds = %88, %77, %64, %56
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @UART_BUILD_REVISION(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
