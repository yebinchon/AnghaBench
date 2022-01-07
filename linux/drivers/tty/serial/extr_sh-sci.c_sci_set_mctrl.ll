; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.sci_port = type { i64, i32, i32 }
%struct.plat_sci_reg = type { i64 }

@TIOCM_LOOP = common dso_local global i32 0, align 4
@SCFCR = common dso_local global i32 0, align 4
@SCFCR_LOOP = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@SCFCR_MCE = common dso_local global i32 0, align 4
@PORT_SCIFA = common dso_local global i64 0, align 8
@PORT_SCIFB = common dso_local global i64 0, align 8
@SCPCR = common dso_local global i32 0, align 4
@SCPCR_RTSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sci_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sci_port*, align 8
  %6 = alloca %struct.plat_sci_reg*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %7)
  store %struct.sci_port* %8, %struct.sci_port** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @TIOCM_LOOP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = load i32, i32* @SCFCR, align 4
  %16 = call %struct.plat_sci_reg* @sci_getreg(%struct.uart_port* %14, i32 %15)
  store %struct.plat_sci_reg* %16, %struct.plat_sci_reg** %6, align 8
  %17 = load %struct.plat_sci_reg*, %struct.plat_sci_reg** %6, align 8
  %18 = getelementptr inbounds %struct.plat_sci_reg, %struct.plat_sci_reg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = load i32, i32* @SCFCR, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = load i32, i32* @SCFCR, align 4
  %26 = call i32 @serial_port_in(%struct.uart_port* %24, i32 %25)
  %27 = load i32, i32* @SCFCR_LOOP, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @serial_port_out(%struct.uart_port* %22, i32 %23, i32 %28)
  br label %30

30:                                               ; preds = %21, %13
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %33 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @mctrl_gpio_set(i32 %34, i32 %35)
  %37 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %38 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %99

42:                                               ; preds = %31
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @TIOCM_RTS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %42
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = load i32, i32* @SCFCR, align 4
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = load i32, i32* @SCFCR, align 4
  %52 = call i32 @serial_port_in(%struct.uart_port* %50, i32 %51)
  %53 = load i32, i32* @SCFCR_MCE, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @serial_port_out(%struct.uart_port* %48, i32 %49, i32 %55)
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = call i32 @sci_set_rts(%struct.uart_port* %57, i32 0)
  br label %99

59:                                               ; preds = %42
  %60 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %61 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %59
  %65 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PORT_SCIFA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PORT_SCIFB, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70, %64
  %77 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %78 = load i32, i32* @SCPCR, align 4
  %79 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %80 = load i32, i32* @SCPCR, align 4
  %81 = call i32 @serial_port_in(%struct.uart_port* %79, i32 %80)
  %82 = load i32, i32* @SCPCR_RTSC, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = call i32 @serial_port_out(%struct.uart_port* %77, i32 %78, i32 %84)
  br label %86

86:                                               ; preds = %76, %70
  %87 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %88 = load i32, i32* @SCFCR, align 4
  %89 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %90 = load i32, i32* @SCFCR, align 4
  %91 = call i32 @serial_port_in(%struct.uart_port* %89, i32 %90)
  %92 = load i32, i32* @SCFCR_MCE, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @serial_port_out(%struct.uart_port* %87, i32 %88, i32 %93)
  br label %98

95:                                               ; preds = %59
  %96 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %97 = call i32 @sci_set_rts(%struct.uart_port* %96, i32 1)
  br label %98

98:                                               ; preds = %95, %86
  br label %99

99:                                               ; preds = %41, %98, %47
  ret void
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local %struct.plat_sci_reg* @sci_getreg(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @mctrl_gpio_set(i32, i32) #1

declare dso_local i32 @sci_set_rts(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
