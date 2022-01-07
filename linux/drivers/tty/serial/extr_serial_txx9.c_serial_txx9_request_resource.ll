; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_request_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_request_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_txx9_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@TXX9_REGION_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"serial_txx9\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_txx9_port*)* @serial_txx9_request_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_txx9_request_resource(%struct.uart_txx9_port* %0) #0 {
  %2 = alloca %struct.uart_txx9_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_txx9_port* %0, %struct.uart_txx9_port** %2, align 8
  %5 = load i32, i32* @TXX9_REGION_SIZE, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %10 [
    i32 128, label %62
  ]

10:                                               ; preds = %1
  %11 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %74

17:                                               ; preds = %10
  %18 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @request_mem_region(i32 %21, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %74

28:                                               ; preds = %17
  %29 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UPF_IOREMAP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %28
  %37 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ioremap(i32 %40, i32 %41)
  %43 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %44 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  %46 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %47 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %36
  %52 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @release_mem_region(i32 %55, i32 %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %51, %36
  br label %61

61:                                               ; preds = %60, %28
  br label %74

62:                                               ; preds = %1
  %63 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %2, align 8
  %64 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @request_region(i32 %66, i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %62
  br label %74

74:                                               ; preds = %73, %61, %25, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
