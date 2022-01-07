; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_report_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_report_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_driver = type { i32 }
%struct.uart_port = type { i32, i64, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"I/O 0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"I/O 0x%lx offset 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"MMIO 0x%llx\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"*unknown*\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"%s%s%s at %s (irq = %d, base_baud = %d) is a %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c": \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_driver*, %struct.uart_port*)* @uart_report_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_report_port(%struct.uart_driver* %0, %struct.uart_port* %1) #0 {
  %3 = alloca %struct.uart_driver*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca [64 x i8], align 16
  store %struct.uart_driver* %0, %struct.uart_driver** %3, align 8
  store %struct.uart_port* %1, %struct.uart_port** %4, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %30 [
    i32 129, label %9
    i32 134, label %15
    i32 133, label %24
    i32 132, label %24
    i32 131, label %24
    i32 130, label %24
    i32 135, label %24
    i32 128, label %24
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %10, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %33

15:                                               ; preds = %2
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %16, i32 64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %19, i32 %22)
  br label %33

24:                                               ; preds = %2, %2, %2, %2, %2, %2
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %26 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %25, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  br label %33

30:                                               ; preds = %2
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %32 = call i32 @strlcpy(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 64)
  br label %33

33:                                               ; preds = %30, %24, %15, %9
  %34 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @dev_name(i64 %41)
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i8* [ %42, %38 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %43 ]
  %46 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %52 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %56 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %61, 16
  %63 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %64 = call i32 @uart_type(%struct.uart_port* %63)
  %65 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %45, i8* %51, i32 %54, i8* %55, i32 %58, i32 %62, i32 %64)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i8* @dev_name(i64) #1

declare dso_local i32 @uart_type(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
