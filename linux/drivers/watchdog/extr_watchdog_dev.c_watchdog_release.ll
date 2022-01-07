; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.watchdog_core_data* }
%struct.watchdog_core_data = type { i32, %struct.TYPE_4__, i32, i32, %struct.watchdog_device* }
%struct.TYPE_4__ = type { i32 }
%struct.watchdog_device = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@WDOG_ACTIVE = common dso_local global i32 0, align 4
@_WDOG_ALLOW_RELEASE = common dso_local global i32 0, align 4
@WDIOF_MAGICCLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"watchdog%d: watchdog did not stop!\0A\00", align 1
@_WDOG_DEV_OPEN = common dso_local global i32 0, align 4
@watchdog_core_data_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @watchdog_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.watchdog_core_data*, align 8
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %10, align 8
  store %struct.watchdog_core_data* %11, %struct.watchdog_core_data** %5, align 8
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %5, align 8
  %15 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %5, align 8
  %18 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %17, i32 0, i32 4
  %19 = load %struct.watchdog_device*, %struct.watchdog_device** %18, align 8
  store %struct.watchdog_device* %19, %struct.watchdog_device** %6, align 8
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %21 = icmp ne %struct.watchdog_device* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %66

23:                                               ; preds = %2
  %24 = load i32, i32* @WDOG_ACTIVE, align 4
  %25 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %26 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %25, i32 0, i32 2
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %49

30:                                               ; preds = %23
  %31 = load i32, i32* @_WDOG_ALLOW_RELEASE, align 4
  %32 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %5, align 8
  %33 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %32, i32 0, i32 3
  %34 = call i64 @test_and_clear_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %38 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WDIOF_MAGICCLOSE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36, %30
  %46 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %47 = call i32 @watchdog_stop(%struct.watchdog_device* %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %36
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %54 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %58 = call i32 @watchdog_ping(%struct.watchdog_device* %57)
  br label %59

59:                                               ; preds = %52, %49
  %60 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %61 = call i32 @watchdog_update_worker(%struct.watchdog_device* %60)
  %62 = load i32, i32* @_WDOG_DEV_OPEN, align 4
  %63 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %5, align 8
  %64 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %63, i32 0, i32 3
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  br label %66

66:                                               ; preds = %59, %22
  %67 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %68 = icmp ne %struct.watchdog_device* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %71 = call i64 @watchdog_hw_running(%struct.watchdog_device* %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ false, %66 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %5, align 8
  %77 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %76, i32 0, i32 2
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %73
  %82 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %5, align 8
  %83 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @module_put(i32 %85)
  %87 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %5, align 8
  %88 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %87, i32 0, i32 0
  %89 = load i32, i32* @watchdog_core_data_release, align 4
  %90 = call i32 @kref_put(i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %81, %73
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @watchdog_stop(%struct.watchdog_device*) #1

declare dso_local i32 @pr_crit(i8*, i32) #1

declare dso_local i32 @watchdog_ping(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_update_worker(%struct.watchdog_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @watchdog_hw_running(%struct.watchdog_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
