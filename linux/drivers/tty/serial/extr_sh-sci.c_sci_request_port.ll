; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_request_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_request_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.resource = type { i32 }
%struct.sci_port = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"request_mem_region failed.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sci_request_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_request_port(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.sci_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %7)
  store %struct.sci_port* %8, %struct.sci_port** %5, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %13 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_name(i32 %17)
  %19 = call %struct.resource* @request_mem_region(i32 %11, i32 %14, i32 %18)
  store %struct.resource* %19, %struct.resource** %4, align 8
  %20 = load %struct.resource*, %struct.resource** %4, align 8
  %21 = icmp eq %struct.resource* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %45

32:                                               ; preds = %1
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = call i32 @sci_remap_port(%struct.uart_port* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = call i32 @release_resource(%struct.resource* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %40, %25
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local %struct.resource* @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sci_remap_port(%struct.uart_port*) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
