; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.plat_sci_reg = type { i64 }
%struct.sci_port = type { i32, i32, i32, i64 }

@SCSCR = common dso_local global i32 0, align 4
@SCFCR = common dso_local global i32 0, align 4
@SCFCR_RFRST = common dso_local global i32 0, align 4
@SCFCR_TFRST = common dso_local global i32 0, align 4
@SCLSR = common dso_local global i32 0, align 4
@SCLSR_TO = common dso_local global i32 0, align 4
@SCLSR_ORER = common dso_local global i32 0, align 4
@rx_fifo_timer_fn = common dso_local global i32 0, align 4
@PORT_SCIFA = common dso_local global i64 0, align 8
@PORT_SCIFB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_reset(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.plat_sci_reg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sci_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %6)
  store %struct.sci_port* %7, %struct.sci_port** %5, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = load i32, i32* @SCSCR, align 4
  %10 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %11 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @serial_port_out(%struct.uart_port* %8, i32 %9, i32 %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = load i32, i32* @SCFCR, align 4
  %16 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %14, i32 %15)
  store %struct.plat_sci_reg* %16, %struct.plat_sci_reg** %3, align 8
  %17 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %3, align 8
  %18 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = load i32, i32* @SCFCR, align 4
  %24 = load i32, i32* @SCFCR_RFRST, align 4
  %25 = load i32, i32* @SCFCR_TFRST, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @serial_port_out(%struct.uart_port* %22, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = call i32 @SCxSR_RDxF_CLEAR(%struct.uart_port* %30)
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = call i32 @SCxSR_ERROR_CLEAR(%struct.uart_port* %32)
  %34 = and i32 %31, %33
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = call i32 @SCxSR_BREAK_CLEAR(%struct.uart_port* %35)
  %37 = and i32 %34, %36
  %38 = call i32 @sci_clear_SCxSR(%struct.uart_port* %29, i32 %37)
  %39 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %40 = load i32, i32* @SCLSR, align 4
  %41 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %39, i32 %40)
  %42 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %28
  %46 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %47 = load i32, i32* @SCLSR, align 4
  %48 = call i32 @serial_port_in(%struct.uart_port* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @SCLSR_TO, align 4
  %50 = load i32, i32* @SCLSR_ORER, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = load i32, i32* @SCLSR, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @serial_port_out(%struct.uart_port* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %45, %28
  %60 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %61 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %99

64:                                               ; preds = %59
  %65 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %66 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %71 = call i32 @scif_set_rtrg(%struct.uart_port* %70, i32 1)
  %72 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %73 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %72, i32 0, i32 2
  %74 = load i32, i32* @rx_fifo_timer_fn, align 4
  %75 = call i32 @timer_setup(i32* %73, i32 %74, i32 0)
  br label %98

76:                                               ; preds = %64
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PORT_SCIFA, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PORT_SCIFB, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82, %76
  %89 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %90 = call i32 @scif_set_rtrg(%struct.uart_port* %89, i32 1)
  br label %97

91:                                               ; preds = %82
  %92 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %93 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %94 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @scif_set_rtrg(%struct.uart_port* %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %88
  br label %98

98:                                               ; preds = %97, %69
  br label %99

99:                                               ; preds = %98, %59
  ret void
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local %struct.plat_sci_reg* @sci_getreg(%struct.uart_port*, i32) #1

declare dso_local i32 @sci_clear_SCxSR(%struct.uart_port*, i32) #1

declare dso_local i32 @SCxSR_RDxF_CLEAR(%struct.uart_port*) #1

declare dso_local i32 @SCxSR_ERROR_CLEAR(%struct.uart_port*) #1

declare dso_local i32 @SCxSR_BREAK_CLEAR(%struct.uart_port*) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @scif_set_rtrg(%struct.uart_port*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
