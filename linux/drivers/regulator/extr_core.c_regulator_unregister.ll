; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32, i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@regulator_list_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regulator_unregister(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %3 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %4 = icmp eq %struct.regulator_dev* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %55

6:                                                ; preds = %1
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %8 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %18, %11
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 8
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %20 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @regulator_disable(i64 %21)
  br label %12

23:                                               ; preds = %12
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @regulator_put(i64 %26)
  br label %28

28:                                               ; preds = %23, %6
  %29 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %30 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @flush_work(i32* %31)
  %33 = call i32 @mutex_lock(i32* @regulator_list_mutex)
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %35 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @debugfs_remove_recursive(i32 %36)
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %39 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %43 = call i32 @regulator_remove_coupling(%struct.regulator_dev* %42)
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %45 = call i32 @unset_regulator_supplies(%struct.regulator_dev* %44)
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %47 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %46, i32 0, i32 1
  %48 = call i32 @list_del(i32* %47)
  %49 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %50 = call i32 @regulator_ena_gpio_free(%struct.regulator_dev* %49)
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %52 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %51, i32 0, i32 0
  %53 = call i32 @device_unregister(i32* %52)
  %54 = call i32 @mutex_unlock(i32* @regulator_list_mutex)
  br label %55

55:                                               ; preds = %28, %5
  ret void
}

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @regulator_put(i64) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @regulator_remove_coupling(%struct.regulator_dev*) #1

declare dso_local i32 @unset_regulator_supplies(%struct.regulator_dev*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @regulator_ena_gpio_free(%struct.regulator_dev*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
