; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spidev.c_spidev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spidev.c_spidev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spidev_data = type { i64, i32, i32, i32, i32* }

@device_list_lock = common dso_local global i32 0, align 4
@spidev_class = common dso_local global i32 0, align 4
@minors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spidev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spidev_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.spidev_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.spidev_data* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.spidev_data* %5, %struct.spidev_data** %3, align 8
  %6 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %7 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %6, i32 0, i32 3
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %10 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %9, i32 0, i32 4
  store i32* null, i32** %10, align 8
  %11 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %12 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %11, i32 0, i32 3
  %13 = call i32 @spin_unlock_irq(i32* %12)
  %14 = call i32 @mutex_lock(i32* @device_list_lock)
  %15 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %16 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %15, i32 0, i32 2
  %17 = call i32 @list_del(i32* %16)
  %18 = load i32, i32* @spidev_class, align 4
  %19 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %20 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_destroy(i32 %18, i32 %21)
  %23 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %24 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @MINOR(i32 %25)
  %27 = load i32, i32* @minors, align 4
  %28 = call i32 @clear_bit(i32 %26, i32 %27)
  %29 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %30 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %35 = call i32 @kfree(%struct.spidev_data* %34)
  br label %36

36:                                               ; preds = %33, %1
  %37 = call i32 @mutex_unlock(i32* @device_list_lock)
  ret i32 0
}

declare dso_local %struct.spidev_data* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @kfree(%struct.spidev_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
