; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_pm_thaw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_pm_thaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccw_device = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 (%struct.ccw_device*)* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ccw_device_pm_thaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_device_pm_thaw(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ccw_device* @to_ccwdev(%struct.device* %8)
  store %struct.ccw_device* %9, %struct.ccw_device** %4, align 8
  %10 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.subchannel* @to_subchannel(i32 %13)
  store %struct.subchannel* %14, %struct.subchannel** %5, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

20:                                               ; preds = %1
  %21 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %22 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @spin_lock_irq(i32 %23)
  %25 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %26 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %27 = ptrtoint %struct.subchannel* %26 to i64
  %28 = trunc i64 %27 to i32
  %29 = call i32 @cio_enable_subchannel(%struct.subchannel* %25, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %38 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @spin_unlock_irq(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %20
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %78

45:                                               ; preds = %20
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %50 = call i32 @ccw_set_cmf(%struct.ccw_device* %49, i32 1)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %78

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %45
  %57 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %58 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %63 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %65, align 8
  %67 = icmp ne i32 (%struct.ccw_device*)* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %70 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %72, align 8
  %74 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %75 = call i32 %73(%struct.ccw_device* %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %68, %61, %56
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %53, %43, %19
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @ccw_set_cmf(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
