; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dwlib.c_dw8250_setup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dwlib.c_dw8250_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i32, %struct.dw8250_port_data*, i32 }
%struct.dw8250_port_data = type { i32 }
%struct.uart_8250_port = type { i32 }

@DW_UART_UCV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Designware UART version %c.%c%c\0A\00", align 1
@DW_UART_DLF = common dso_local global i32 0, align 4
@dw8250_get_divisor = common dso_local global i32 0, align 4
@dw8250_set_divisor = common dso_local global i32 0, align 4
@DW_UART_CPR = common dso_local global i32 0, align 4
@DW_UART_CPR_FIFO_MODE = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@UART_CAP_FIFO = common dso_local global i32 0, align 4
@DW_UART_CPR_AFCE_MODE = common dso_local global i32 0, align 4
@UART_CAP_AFE = common dso_local global i32 0, align 4
@DW_UART_CPR_SIR_MODE = common dso_local global i32 0, align 4
@UART_CAP_IRDA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw8250_setup_port(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw8250_port_data*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %6)
  store %struct.uart_8250_port* %7, %struct.uart_8250_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = load i32, i32* @DW_UART_UCV, align 4
  %10 = call i32 @dw8250_readl_ext(%struct.uart_port* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %103

14:                                               ; preds = %1
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 24
  %20 = and i32 %19, 255
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  %27 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = load i32, i32* @DW_UART_DLF, align 4
  %30 = call i32 @dw8250_writel_ext(%struct.uart_port* %28, i32 %29, i32 -1)
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = load i32, i32* @DW_UART_DLF, align 4
  %33 = call i32 @dw8250_readl_ext(%struct.uart_port* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = load i32, i32* @DW_UART_DLF, align 4
  %36 = call i32 @dw8250_writel_ext(%struct.uart_port* %34, i32 %35, i32 0)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %14
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 5
  %42 = load %struct.dw8250_port_data*, %struct.dw8250_port_data** %41, align 8
  store %struct.dw8250_port_data* %42, %struct.dw8250_port_data** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @fls(i32 %43)
  %45 = load %struct.dw8250_port_data*, %struct.dw8250_port_data** %5, align 8
  %46 = getelementptr inbounds %struct.dw8250_port_data, %struct.dw8250_port_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @dw8250_get_divisor, align 4
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @dw8250_set_divisor, align 4
  %51 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %39, %14
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = load i32, i32* @DW_UART_CPR, align 4
  %56 = call i32 @dw8250_readl_ext(%struct.uart_port* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %103

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @DW_UART_CPR_FIFO_MODE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load i32, i32* @PORT_16550A, align 4
  %67 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %70 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @DW_UART_CPR_FIFO_SIZE(i32 %74)
  %76 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @UART_CAP_FIFO, align 4
  %79 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %80 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %65, %60
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @DW_UART_CPR_AFCE_MODE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* @UART_CAP_AFE, align 4
  %88 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %89 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @DW_UART_CPR_SIR_MODE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* @UART_CAP_IRDA, align 4
  %99 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %100 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %13, %59, %97, %92
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @dw8250_readl_ext(%struct.uart_port*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dw8250_writel_ext(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @DW_UART_CPR_FIFO_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
