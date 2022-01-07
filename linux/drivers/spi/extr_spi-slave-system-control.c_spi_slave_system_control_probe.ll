; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-system-control.c_spi_slave_system_control_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-system-control.c_spi_slave_system_control_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_slave_system_control_priv = type { %struct.TYPE_2__, i32, i32, %struct.spi_device* }
%struct.TYPE_2__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spi_slave_system_control_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_slave_system_control_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_slave_system_control_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.spi_slave_system_control_priv* @devm_kzalloc(i32* %7, i32 32, i32 %8)
  store %struct.spi_slave_system_control_priv* %9, %struct.spi_slave_system_control_priv** %4, align 8
  %10 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %4, align 8
  %11 = icmp ne %struct.spi_slave_system_control_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %4, align 8
  %18 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %17, i32 0, i32 3
  store %struct.spi_device* %16, %struct.spi_device** %18, align 8
  %19 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %4, align 8
  %20 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %19, i32 0, i32 2
  %21 = call i32 @init_completion(i32* %20)
  %22 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %4, align 8
  %23 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %22, i32 0, i32 1
  %24 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %4, align 8
  %25 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32* %23, i32** %26, align 8
  %27 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %4, align 8
  %28 = getelementptr inbounds %struct.spi_slave_system_control_priv, %struct.spi_slave_system_control_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  %30 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %4, align 8
  %31 = call i32 @spi_slave_system_control_submit(%struct.spi_slave_system_control_priv* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %15
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = load %struct.spi_slave_system_control_priv*, %struct.spi_slave_system_control_priv** %4, align 8
  %39 = call i32 @spi_set_drvdata(%struct.spi_device* %37, %struct.spi_slave_system_control_priv* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %34, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.spi_slave_system_control_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spi_slave_system_control_submit(%struct.spi_slave_system_control_priv*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.spi_slave_system_control_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
