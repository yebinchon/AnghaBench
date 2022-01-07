; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i64, i32*, i32 }
%struct.ctcm_priv = type { %struct.TYPE_3__**, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CCWGROUP_OFFLINE = common dso_local global i64 0, align 8
@CTCM_READ = common dso_local global i64 0, align 8
@DEV_STATE_STOPPED = common dso_local global i64 0, align 8
@CTCM_TIME_5_SEC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @ctcm_pm_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_pm_suspend(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.ctcm_priv*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %5 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %6 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %5, i32 0, i32 2
  %7 = call %struct.ctcm_priv* @dev_get_drvdata(i32* %6)
  store %struct.ctcm_priv* %7, %struct.ctcm_priv** %4, align 8
  %8 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CCWGROUP_OFFLINE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

14:                                               ; preds = %1
  %15 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %16, align 8
  %18 = load i64, i64* @CTCM_READ, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netif_device_detach(i32 %22)
  %24 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %25, align 8
  %27 = load i64, i64* @CTCM_READ, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ctcm_close(i32 %31)
  %33 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %39 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i64 @fsm_getstate(%struct.TYPE_4__* %40)
  %42 = load i64, i64* @DEV_STATE_STOPPED, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @CTCM_TIME_5_SEC, align 4
  %46 = call i32 @wait_event_timeout(i32 %37, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %14
  %49 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %50 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %50, align 8
  %52 = load i64, i64* @CTCM_READ, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %51, i64 %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @netif_device_attach(i32 %56)
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %73

60:                                               ; preds = %14
  %61 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %62 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ccw_device_set_offline(i32 %65)
  %67 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %68 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ccw_device_set_offline(i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %60, %48, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @ctcm_close(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @fsm_getstate(%struct.TYPE_4__*) #1

declare dso_local i32 @netif_device_attach(i32) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
