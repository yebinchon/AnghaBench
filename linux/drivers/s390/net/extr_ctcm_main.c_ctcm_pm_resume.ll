; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i64, i32*, i32 }
%struct.ctcm_priv = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@CCWGROUP_OFFLINE = common dso_local global i64 0, align 8
@CTCM_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @ctcm_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_pm_resume(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.ctcm_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %6 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %6, i32 0, i32 2
  %8 = call %struct.ctcm_priv* @dev_get_drvdata(i32* %7)
  store %struct.ctcm_priv* %8, %struct.ctcm_priv** %4, align 8
  %9 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %10 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CCWGROUP_OFFLINE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %17 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ccw_device_set_online(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %45

25:                                               ; preds = %15
  %26 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %27 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ccw_device_set_online(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %45

35:                                               ; preds = %25
  %36 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %37 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i64, i64* @CTCM_READ, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ctcm_open(i32 %43)
  br label %45

45:                                               ; preds = %35, %34, %24
  %46 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %47 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i64, i64* @CTCM_READ, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netif_device_attach(i32 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %45, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ccw_device_set_online(i32) #1

declare dso_local i32 @ctcm_open(i32) #1

declare dso_local i32 @netif_device_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
