; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpwd.c_cpwd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpwd.c_cpwd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32* }
%struct.cpwd = type { i32, i32, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@WD_NUMDEVS = common dso_local global i32 0, align 4
@WD_STAT_BSTOP = common dso_local global i32 0, align 4
@cpwd_timer = common dso_local global i32 0, align 4
@WD_TIMER_REGSZ = common dso_local global i32 0, align 4
@cpwd_device = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpwd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpwd_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cpwd*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.cpwd* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.cpwd* %6, %struct.cpwd** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %45, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @WD_NUMDEVS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %13 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @misc_deregister(i32* %18)
  %20 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %21 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %11
  %25 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @cpwd_stoptimer(%struct.cpwd* %25, i32 %26)
  %28 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %29 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WD_STAT_BSTOP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @cpwd_resetbrokentimer(%struct.cpwd* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %24
  br label %44

44:                                               ; preds = %43, %11
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %7

48:                                               ; preds = %7
  %49 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %50 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @del_timer_sync(i32* @cpwd_timer)
  br label %55

55:                                               ; preds = %53, %48
  %56 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %57 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %62 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %65 = call i32 @free_irq(i32 %63, %struct.cpwd* %64)
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %72 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @WD_TIMER_REGSZ, align 4
  %75 = mul nsw i32 4, %74
  %76 = call i32 @of_iounmap(i32* %70, i32 %73, i32 %75)
  store i32* null, i32** @cpwd_device, align 8
  ret i32 0
}

declare dso_local %struct.cpwd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @cpwd_stoptimer(%struct.cpwd*, i32) #1

declare dso_local i32 @cpwd_resetbrokentimer(%struct.cpwd*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.cpwd*) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
