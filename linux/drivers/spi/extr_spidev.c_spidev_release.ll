; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spidev.c_spidev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spidev.c_spidev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.spidev_data* }
%struct.spidev_data = type { i32, %struct.TYPE_2__*, i32, %struct.spidev_data*, %struct.spidev_data*, i32 }
%struct.TYPE_2__ = type { i32 }

@device_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @spidev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spidev_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.spidev_data*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = call i32 @mutex_lock(i32* @device_list_lock)
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.spidev_data*, %struct.spidev_data** %9, align 8
  store %struct.spidev_data* %10, %struct.spidev_data** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  store %struct.spidev_data* null, %struct.spidev_data** %12, align 8
  %13 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %14 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %18 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %2
  %22 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %23 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %22, i32 0, i32 4
  %24 = load %struct.spidev_data*, %struct.spidev_data** %23, align 8
  %25 = call i32 @kfree(%struct.spidev_data* %24)
  %26 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %27 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %26, i32 0, i32 4
  store %struct.spidev_data* null, %struct.spidev_data** %27, align 8
  %28 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %29 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %28, i32 0, i32 3
  %30 = load %struct.spidev_data*, %struct.spidev_data** %29, align 8
  %31 = call i32 @kfree(%struct.spidev_data* %30)
  %32 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %33 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %32, i32 0, i32 3
  store %struct.spidev_data* null, %struct.spidev_data** %33, align 8
  %34 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %35 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %38 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %21
  %42 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %43 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %48 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %41, %21
  %50 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %51 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp eq %struct.TYPE_2__* %52, null
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %56 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load %struct.spidev_data*, %struct.spidev_data** %5, align 8
  %62 = call i32 @kfree(%struct.spidev_data* %61)
  br label %63

63:                                               ; preds = %60, %49
  br label %64

64:                                               ; preds = %63, %2
  %65 = call i32 @mutex_unlock(i32* @device_list_lock)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.spidev_data*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
