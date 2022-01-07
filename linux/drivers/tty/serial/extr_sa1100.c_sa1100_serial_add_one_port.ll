; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sa1100.c_sa1100_serial_add_one_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sa1100.c_sa1100_serial_add_one_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100_port = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to get mctrl gpios: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@sa1100_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa1100_port*, %struct.platform_device*)* @sa1100_serial_add_one_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_serial_add_one_port(%struct.sa1100_port* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sa1100_port*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.sa1100_port* %0, %struct.sa1100_port** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %10 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32* %8, i32** %11, align 8
  %12 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %13 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32* @mctrl_gpio_init_noauto(i32* %15, i32 0)
  %17 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %18 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %20 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %2
  %25 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %26 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @PTR_ERR(i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %30 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %51

41:                                               ; preds = %24
  %42 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %43 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %41, %2
  %45 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %46 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.sa1100_port* %46)
  %48 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %49 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %48, i32 0, i32 0
  %50 = call i32 @uart_add_one_port(i32* @sa1100_reg, %struct.TYPE_2__* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32* @mctrl_gpio_init_noauto(i32*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sa1100_port*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
