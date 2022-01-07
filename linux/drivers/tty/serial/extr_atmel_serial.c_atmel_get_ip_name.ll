; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_get_ip_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_get_ip_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32, i32, i32, i32, i8* }

@ATMEL_US_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Uart with hw timer\00", align 1
@ATMEL_UA_RTOR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Usart\0A\00", align 1
@ATMEL_US_RTOR = common dso_local global i8* null, align 8
@ATMEL_US_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Dbgu or uart without hw timer\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"This version is usart\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"This version is uart\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Not supported ip name nor version, set to uart\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_get_ip_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_get_ip_name(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %9)
  store %struct.atmel_uart_port* %10, %struct.atmel_uart_port** %3, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = load i32, i32* @ATMEL_US_NAME, align 4
  %13 = call i32 @atmel_uart_readl(%struct.uart_port* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  store i32 1431519570, i32* %6, align 4
  store i32 1145194325, i32* %7, align 4
  store i32 1430344276, i32* %8, align 4
  %14 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load i8*, i8** @ATMEL_UA_RTOR, align 8
  %29 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  br label %106

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %31
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %43 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i8*, i8** @ATMEL_US_RTOR, align 8
  %45 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %46 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = load i32, i32* @ATMEL_US_VERSION, align 4
  %49 = call i32 @atmel_uart_readl(%struct.uart_port* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  switch i32 %50, label %61 [
    i32 2068, label %51
    i32 1793, label %51
    i32 1282, label %56
  ]

51:                                               ; preds = %35, %35
  %52 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %53 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %52, i32 0, i32 2
  store i32 3, i32* %53, align 8
  %54 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %55 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %54, i32 0, i32 3
  store i32 65535, i32* %55, align 4
  br label %66

56:                                               ; preds = %35
  %57 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %57, i32 0, i32 2
  store i32 3, i32* %58, align 8
  %59 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %60 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %59, i32 0, i32 3
  store i32 2047, i32* %60, align 4
  br label %66

61:                                               ; preds = %35
  %62 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %63 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %65 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %64, i32 0, i32 3
  store i32 2047, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %56, %51
  br label %105

67:                                               ; preds = %31
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %104

76:                                               ; preds = %67
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = load i32, i32* @ATMEL_US_VERSION, align 4
  %79 = call i32 @atmel_uart_readl(%struct.uart_port* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  switch i32 %80, label %98 [
    i32 770, label %81
    i32 66067, label %81
    i32 66306, label %81
    i32 515, label %93
    i32 66050, label %93
  ]

81:                                               ; preds = %76, %76, %76
  %82 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %87 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %89 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load i8*, i8** @ATMEL_US_RTOR, align 8
  %91 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %92 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  br label %103

93:                                               ; preds = %76, %76
  %94 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %103

98:                                               ; preds = %76
  %99 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %93, %81
  br label %104

104:                                              ; preds = %103, %71
  br label %105

105:                                              ; preds = %104, %66
  br label %106

106:                                              ; preds = %105, %21
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
