; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_handle_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_handle_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.atmel_uart_port = type { i32 }

@ATMEL_US_RIIC = common dso_local global i32 0, align 4
@ATMEL_US_DSRIC = common dso_local global i32 0, align 4
@ATMEL_US_DCDIC = common dso_local global i32 0, align 4
@ATMEL_US_CTSIC = common dso_local global i32 0, align 4
@ATMEL_US_RI = common dso_local global i32 0, align 4
@ATMEL_US_DSR = common dso_local global i32 0, align 4
@ATMEL_US_DCD = common dso_local global i32 0, align 4
@ATMEL_US_CTS = common dso_local global i32 0, align 4
@ATMEL_US_NACK = common dso_local global i32 0, align 4
@ATMEL_US_ITERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ISO7816 ERROR (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @atmel_handle_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_handle_status(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_uart_port*, align 8
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %9)
  store %struct.atmel_uart_port* %10, %struct.atmel_uart_port** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ATMEL_US_RIIC, align 4
  %13 = load i32, i32* @ATMEL_US_DSRIC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ATMEL_US_DCDIC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ATMEL_US_CTSIC, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %11, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %98

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %7, align 8
  %24 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %7, align 8
  %29 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ATMEL_US_RI, align 4
  %32 = load i32, i32* @ATMEL_US_DSR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ATMEL_US_DCD, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ATMEL_US_CTS, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %30, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %97

40:                                               ; preds = %21
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ATMEL_US_RI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ATMEL_US_DSR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ATMEL_US_DCD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @ATMEL_US_DCD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @uart_handle_dcd_change(%struct.uart_port* %68, i32 %74)
  br label %76

76:                                               ; preds = %67, %62
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @ATMEL_US_CTS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @ATMEL_US_CTS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @uart_handle_cts_change(%struct.uart_port* %82, i32 %88)
  br label %90

90:                                               ; preds = %81, %76
  %91 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i32 @wake_up_interruptible(i32* %95)
  br label %97

97:                                               ; preds = %90, %21
  br label %98

98:                                               ; preds = %97, %3
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @ATMEL_US_NACK, align 4
  %101 = load i32, i32* @ATMEL_US_ITERATION, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %107 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @dev_dbg(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %105, %98
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
