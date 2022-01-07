; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uart_port = type { i64, i32, i64, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"unable to register port at index %d (IO%lx MEM%llx IRQ%d): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @serial_txx9_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_txx9_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_port, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.uart_port* @dev_get_platdata(i32* %8)
  store %struct.uart_port* %9, %struct.uart_port** %3, align 8
  %10 = call i32 @memset(%struct.uart_port* %4, i32 0, i32 56)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %72, %1
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = icmp ne %struct.uart_port* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %21, label %77

21:                                               ; preds = %19
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 7
  store i32 %28, i32* %29, align 8
  %30 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 6
  store i32 %40, i32* %41, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 5
  store i32 %44, i32* %45, align 8
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 4
  store i32* %51, i32** %52, align 8
  %53 = call i32 @serial_txx9_register_port(%struct.uart_port* %4)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %21
  %57 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i64 %65, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %56, %21
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 1
  store %struct.uart_port* %74, %struct.uart_port** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %11

77:                                               ; preds = %19
  ret i32 0
}

declare dso_local %struct.uart_port* @dev_get_platdata(i32*) #1

declare dso_local i32 @memset(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @serial_txx9_register_port(%struct.uart_port*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
