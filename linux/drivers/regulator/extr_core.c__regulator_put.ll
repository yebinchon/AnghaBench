; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32, i32, i64, i32, %struct.regulator_dev*, i32 }
%struct.regulator_dev = type { i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@regulator_list_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulator*)* @_regulator_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_regulator_put(%struct.regulator* %0) #0 {
  %2 = alloca %struct.regulator*, align 8
  %3 = alloca %struct.regulator_dev*, align 8
  store %struct.regulator* %0, %struct.regulator** %2, align 8
  %4 = load %struct.regulator*, %struct.regulator** %2, align 8
  %5 = call i64 @IS_ERR_OR_NULL(%struct.regulator* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %66

8:                                                ; preds = %1
  %9 = call i32 @lockdep_assert_held_once(i32* @regulator_list_mutex)
  %10 = load %struct.regulator*, %struct.regulator** %2, align 8
  %11 = getelementptr inbounds %struct.regulator, %struct.regulator* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.regulator*, %struct.regulator** %2, align 8
  %15 = getelementptr inbounds %struct.regulator, %struct.regulator* %14, i32 0, i32 4
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %15, align 8
  store %struct.regulator_dev* %16, %struct.regulator_dev** %3, align 8
  %17 = load %struct.regulator*, %struct.regulator** %2, align 8
  %18 = getelementptr inbounds %struct.regulator, %struct.regulator* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @debugfs_remove_recursive(i32 %19)
  %21 = load %struct.regulator*, %struct.regulator** %2, align 8
  %22 = getelementptr inbounds %struct.regulator, %struct.regulator* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %8
  %26 = load %struct.regulator*, %struct.regulator** %2, align 8
  %27 = getelementptr inbounds %struct.regulator, %struct.regulator* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %30 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %29, i32 0, i32 1
  %31 = call i32 @device_link_remove(i64 %28, %struct.TYPE_3__* %30)
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %33 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.regulator*, %struct.regulator** %2, align 8
  %36 = getelementptr inbounds %struct.regulator, %struct.regulator* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sysfs_remove_link(i32* %34, i32 %37)
  br label %39

39:                                               ; preds = %25, %8
  %40 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %41 = call i32 @regulator_lock(%struct.regulator_dev* %40)
  %42 = load %struct.regulator*, %struct.regulator** %2, align 8
  %43 = getelementptr inbounds %struct.regulator, %struct.regulator* %42, i32 0, i32 1
  %44 = call i32 @list_del(i32* %43)
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %46 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %50 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %52 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %51, i32 0, i32 1
  %53 = call i32 @put_device(%struct.TYPE_3__* %52)
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %55 = call i32 @regulator_unlock(%struct.regulator_dev* %54)
  %56 = load %struct.regulator*, %struct.regulator** %2, align 8
  %57 = getelementptr inbounds %struct.regulator, %struct.regulator* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @kfree_const(i32 %58)
  %60 = load %struct.regulator*, %struct.regulator** %2, align 8
  %61 = call i32 @kfree(%struct.regulator* %60)
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %63 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @module_put(i32 %64)
  br label %66

66:                                               ; preds = %39, %7
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.regulator*) #1

declare dso_local i32 @lockdep_assert_held_once(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @device_link_remove(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i32) #1

declare dso_local i32 @regulator_lock(%struct.regulator_dev*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_3__*) #1

declare dso_local i32 @regulator_unlock(%struct.regulator_dev*) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local i32 @kfree(%struct.regulator*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
