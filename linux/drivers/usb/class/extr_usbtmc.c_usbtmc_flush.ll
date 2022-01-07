; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.usbtmc_file_data* }
%struct.usbtmc_file_data = type { i32, i64, i64, i64, i64, i64, %struct.usbtmc_device_data*, i32 }
%struct.usbtmc_device_data = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @usbtmc_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtmc_flush(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbtmc_file_data*, align 8
  %7 = alloca %struct.usbtmc_device_data*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %9, align 8
  store %struct.usbtmc_file_data* %10, %struct.usbtmc_file_data** %6, align 8
  %11 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %6, align 8
  %12 = icmp eq %struct.usbtmc_file_data* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %6, align 8
  %18 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %17, i32 0, i32 7
  %19 = call i32 @atomic_set(i32* %18, i32 1)
  %20 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %6, align 8
  %21 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %20, i32 0, i32 6
  %22 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %21, align 8
  store %struct.usbtmc_device_data* %22, %struct.usbtmc_device_data** %7, align 8
  %23 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %24 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %6, align 8
  %27 = call i32 @usbtmc_draw_down(%struct.usbtmc_file_data* %26)
  %28 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %6, align 8
  %29 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %6, align 8
  %32 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %6, align 8
  %34 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %6, align 8
  %36 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %6, align 8
  %38 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %6, align 8
  %40 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.usbtmc_file_data*, %struct.usbtmc_file_data** %6, align 8
  %42 = getelementptr inbounds %struct.usbtmc_file_data, %struct.usbtmc_file_data* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_irq(i32* %42)
  %44 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %45 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %44, i32 0, i32 1
  %46 = call i32 @wake_up_interruptible_all(i32* %45)
  %47 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %7, align 8
  %48 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %16, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usbtmc_draw_down(%struct.usbtmc_file_data*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
