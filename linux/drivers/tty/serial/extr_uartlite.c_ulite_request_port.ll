; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_request_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_request_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, i32, %struct.uartlite_data* }
%struct.uartlite_data = type { i32* }

@.str = private unnamed_addr constant [44 x i8] c"ulite console: port=%p; port->mapbase=%llx\0A\00", align 1
@ULITE_REGION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"uartlite\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Memory region busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to map registers\0A\00", align 1
@uartlite_be = common dso_local global i32 0, align 4
@ULITE_CONTROL = common dso_local global i32 0, align 4
@ULITE_CONTROL_RST_TX = common dso_local global i32 0, align 4
@ULITE_STATUS = common dso_local global i32 0, align 4
@ULITE_STATUS_TXEMPTY = common dso_local global i32 0, align 4
@uartlite_le = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @ulite_request_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulite_request_port(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uartlite_data*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 3
  %8 = load %struct.uartlite_data*, %struct.uartlite_data** %7, align 8
  store %struct.uartlite_data* %8, %struct.uartlite_data** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.uart_port* %9, i64 %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ULITE_REGION, align 4
  %18 = call i32 @request_mem_region(i64 %16, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %73

27:                                               ; preds = %1
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @ULITE_REGION, align 4
  %32 = call i32 @ioremap(i64 %30, i32 %31)
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %27
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @ULITE_REGION, align 4
  %48 = call i32 @release_mem_region(i64 %46, i32 %47)
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %73

51:                                               ; preds = %27
  %52 = load %struct.uartlite_data*, %struct.uartlite_data** %4, align 8
  %53 = getelementptr inbounds %struct.uartlite_data, %struct.uartlite_data* %52, i32 0, i32 0
  store i32* @uartlite_be, i32** %53, align 8
  %54 = load i32, i32* @ULITE_CONTROL, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = call i32 @uart_in32(i32 %54, %struct.uart_port* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @ULITE_CONTROL_RST_TX, align 4
  %58 = load i32, i32* @ULITE_CONTROL, align 4
  %59 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %60 = call i32 @uart_out32(i32 %57, i32 %58, %struct.uart_port* %59)
  %61 = load i32, i32* @ULITE_STATUS, align 4
  %62 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %63 = call i32 @uart_in32(i32 %61, %struct.uart_port* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @ULITE_STATUS_TXEMPTY, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @ULITE_STATUS_TXEMPTY, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %51
  %70 = load %struct.uartlite_data*, %struct.uartlite_data** %4, align 8
  %71 = getelementptr inbounds %struct.uartlite_data, %struct.uartlite_data* %70, i32 0, i32 0
  store i32* @uartlite_le, i32** %71, align 8
  br label %72

72:                                               ; preds = %69, %51
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %39, %20
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @pr_debug(i8*, %struct.uart_port*, i64) #1

declare dso_local i32 @request_mem_region(i64, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i32 @uart_in32(i32, %struct.uart_port*) #1

declare dso_local i32 @uart_out32(i32, i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
