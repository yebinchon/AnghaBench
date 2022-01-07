; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_serial_fill_features_erratas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_serial_fill_features_erratas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.omap8250_priv = type { i32 }

@UART_OMAP_MVER = common dso_local global i32 0, align 4
@OMAP_UART_MVR_SCHEME_SHIFT = common dso_local global i32 0, align 4
@OMAP_UART_LEGACY_MVR_MAJ_MASK = common dso_local global i32 0, align 4
@OMAP_UART_LEGACY_MVR_MAJ_SHIFT = common dso_local global i32 0, align 4
@OMAP_UART_LEGACY_MVR_MIN_MASK = common dso_local global i32 0, align 4
@OMAP_UART_MVR_MAJ_MASK = common dso_local global i32 0, align 4
@OMAP_UART_MVR_MAJ_SHIFT = common dso_local global i32 0, align 4
@OMAP_UART_MVR_MIN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unknown revision, defaulting to highest\0A\00", align 1
@UART_ERRATA_i202_MDR1_ACCESS = common dso_local global i32 0, align 4
@OMAP_UART_WER_HAS_TX_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, %struct.omap8250_priv*)* @omap_serial_fill_features_erratas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_serial_fill_features_erratas(%struct.uart_8250_port* %0, %struct.omap8250_priv* %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.omap8250_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store %struct.omap8250_priv* %1, %struct.omap8250_priv** %4, align 8
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %11 = load i32, i32* @UART_OMAP_MVER, align 4
  %12 = call i32 @uart_read(%struct.uart_8250_port* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @OMAP_UART_MVR_SCHEME_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %35 [
    i32 0, label %17
    i32 1, label %26
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @OMAP_UART_LEGACY_MVR_MAJ_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @OMAP_UART_LEGACY_MVR_MAJ_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @OMAP_UART_LEGACY_MVR_MIN_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %9, align 4
  br label %41

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @OMAP_UART_MVR_MAJ_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @OMAP_UART_MVR_MAJ_SHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @OMAP_UART_MVR_MIN_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %9, align 4
  br label %41

35:                                               ; preds = %2
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_warn(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 255, i32* %8, align 4
  store i32 255, i32* %9, align 4
  br label %41

41:                                               ; preds = %35, %26, %17
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @UART_BUILD_REVISION(i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %68 [
    i32 130, label %46
    i32 129, label %52
    i32 128, label %60
  ]

46:                                               ; preds = %41
  %47 = load i32, i32* @UART_ERRATA_i202_MDR1_ACCESS, align 4
  %48 = load %struct.omap8250_priv*, %struct.omap8250_priv** %4, align 8
  %49 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %69

52:                                               ; preds = %41
  %53 = load i32, i32* @UART_ERRATA_i202_MDR1_ACCESS, align 4
  %54 = load i32, i32* @OMAP_UART_WER_HAS_TX_WAKEUP, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.omap8250_priv*, %struct.omap8250_priv** %4, align 8
  %57 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %69

60:                                               ; preds = %41
  %61 = load i32, i32* @UART_ERRATA_i202_MDR1_ACCESS, align 4
  %62 = load i32, i32* @OMAP_UART_WER_HAS_TX_WAKEUP, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.omap8250_priv*, %struct.omap8250_priv** %4, align 8
  %65 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %69

68:                                               ; preds = %41
  br label %69

69:                                               ; preds = %68, %60, %52, %46
  ret void
}

declare dso_local i32 @uart_read(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @UART_BUILD_REVISION(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
