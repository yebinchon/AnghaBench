; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_serial_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.asc_port = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@asc_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asc_serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asc_serial_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asc_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.asc_port* @asc_of_get_asc_port(%struct.platform_device* %6)
  store %struct.asc_port* %7, %struct.asc_port** %5, align 8
  %8 = load %struct.asc_port*, %struct.asc_port** %5, align 8
  %9 = icmp ne %struct.asc_port* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.asc_port*, %struct.asc_port** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call i32 @asc_init_port(%struct.asc_port* %14, %struct.platform_device* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %13
  %22 = load %struct.asc_port*, %struct.asc_port** %5, align 8
  %23 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %22, i32 0, i32 0
  %24 = call i32 @uart_add_one_port(i32* @asc_uart_driver, i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.asc_port*, %struct.asc_port** %5, align 8
  %32 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %31, i32 0, i32 0
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %30, i32* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %27, %19, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.asc_port* @asc_of_get_asc_port(%struct.platform_device*) #1

declare dso_local i32 @asc_init_port(%struct.asc_port*, %struct.platform_device*) #1

declare dso_local i32 @uart_add_one_port(i32*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
