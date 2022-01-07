; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_config_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.uart_port = type { i64, i64 }
%struct.uart_8250_port = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@UART_CONFIG_TYPE = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i64 0, align 8
@UPIO_AU = common dso_local global i64 0, align 8
@UART_BUG_NOMSR = common dso_local global i32 0, align 4
@PORT_TEGRA = common dso_local global i64 0, align 8
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@UART_CONFIG_IRQ = common dso_local global i32 0, align 4
@uart_config = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @serial8250_config_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_config_port(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %7)
  store %struct.uart_8250_port* %8, %struct.uart_8250_port** %5, align 8
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %10 = call i32 @serial8250_request_std_resource(%struct.uart_8250_port* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %99

14:                                               ; preds = %2
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = call i32 @set_io_from_upio(%struct.uart_port* %23)
  br label %25

25:                                               ; preds = %22, %14
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @UART_CONFIG_TYPE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %32 = call i32 @autoconfig(%struct.uart_8250_port* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PORT_16550A, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UPIO_AU, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @UART_BUG_NOMSR, align 4
  %47 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %48 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %39, %33
  %52 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PORT_TEGRA, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* @UART_BUG_NOMSR, align 4
  %59 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %60 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PORT_UNKNOWN, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @UART_CONFIG_IRQ, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %76 = call i32 @autoconfig_irq(%struct.uart_8250_port* %75)
  br label %77

77:                                               ; preds = %74, %69, %63
  %78 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PORT_UNKNOWN, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %85 = call i32 @serial8250_release_std_resource(%struct.uart_8250_port* %84)
  br label %86

86:                                               ; preds = %83, %77
  %87 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %88 = call i32 @register_dev_spec_attr_grp(%struct.uart_8250_port* %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uart_config, align 8
  %90 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %91 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %98 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %86, %13
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial8250_request_std_resource(%struct.uart_8250_port*) #1

declare dso_local i32 @set_io_from_upio(%struct.uart_port*) #1

declare dso_local i32 @autoconfig(%struct.uart_8250_port*) #1

declare dso_local i32 @autoconfig_irq(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_release_std_resource(%struct.uart_8250_port*) #1

declare dso_local i32 @register_dev_spec_attr_grp(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
