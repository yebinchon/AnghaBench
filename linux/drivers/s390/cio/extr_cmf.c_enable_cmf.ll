; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_enable_cmf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_enable_cmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*, i32)*, i32 (%struct.ccw_device*)*, i32, i32 (%struct.ccw_device*)* }
%struct.ccw_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@cmbops = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enable_cmf(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 0
  %6 = call i32 @device_lock(%struct.TYPE_6__* %5)
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = call i64 @cmf_enabled(%struct.ccw_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmbops, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %12, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %15 = call i32 %13(%struct.ccw_device* %14)
  br label %79

16:                                               ; preds = %1
  %17 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %18 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %17, i32 0, i32 0
  %19 = call i32 @get_device(%struct.TYPE_6__* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmbops, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %21, align 8
  %23 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %24 = call i32 %22(%struct.ccw_device* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %71

28:                                               ; preds = %16
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmbops, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %30, align 8
  %32 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %33 = call i32 %31(%struct.ccw_device* %32)
  %34 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %35 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmbops, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @sysfs_create_group(i32* %36, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %28
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmbops, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %45, align 8
  %47 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %48 = call i32 %46(%struct.ccw_device* %47)
  br label %71

49:                                               ; preds = %28
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmbops, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32 (%struct.ccw_device*, i32)*, i32 (%struct.ccw_device*, i32)** %51, align 8
  %53 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %54 = call i32 %52(%struct.ccw_device* %53, i32 2)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %59 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmbops, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sysfs_remove_group(i32* %60, i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmbops, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %66, align 8
  %68 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %69 = call i32 %67(%struct.ccw_device* %68)
  br label %70

70:                                               ; preds = %57, %49
  br label %71

71:                                               ; preds = %70, %43, %27
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %76 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %75, i32 0, i32 0
  %77 = call i32 @put_device(%struct.TYPE_6__* %76)
  br label %78

78:                                               ; preds = %74, %71
  br label %79

79:                                               ; preds = %78, %10
  %80 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %81 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %80, i32 0, i32 0
  %82 = call i32 @device_unlock(%struct.TYPE_6__* %81)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @device_lock(%struct.TYPE_6__*) #1

declare dso_local i64 @cmf_enabled(%struct.ccw_device*) #1

declare dso_local i32 @get_device(%struct.TYPE_6__*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

declare dso_local i32 @device_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
