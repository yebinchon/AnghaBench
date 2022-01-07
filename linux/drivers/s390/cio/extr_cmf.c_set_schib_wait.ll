; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_set_schib_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_set_schib_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.set_schib_struct*, i32 }
%struct.set_schib_struct = type { i32, i64, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i64 0, align 8
@CMF_PENDING = common dso_local global i32 0, align 4
@DEV_STATE_CMFCHANGE = common dso_local global i64 0, align 8
@SET_SCHIB_TIMEOUT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32, i32, i64)* @set_schib_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_schib_wait(%struct.ccw_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.set_schib_struct, align 8
  %10 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @spin_lock_irq(i32 %15)
  %17 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %18 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %121

24:                                               ; preds = %4
  %25 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @set_schib(%struct.ccw_device* %25, i32 %26, i32 %27, i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %121

35:                                               ; preds = %24
  %36 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %37 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %121

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %9, i32 0, i32 3
  %46 = call i32 @init_waitqueue_head(i32* %45)
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %9, i32 0, i32 4
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %9, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %9, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* @CMF_PENDING, align 4
  %54 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %9, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* @DEV_STATE_CMFCHANGE, align 8
  %56 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %57 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 %55, i64* %59, align 8
  %60 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %61 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store %struct.set_schib_struct* %9, %struct.set_schib_struct** %63, align 8
  %64 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %65 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @spin_unlock_irq(i32 %66)
  %68 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %9, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %9, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CMF_PENDING, align 4
  %73 = icmp ne i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* @SET_SCHIB_TIMEOUT, align 4
  %76 = call i32 @wait_event_interruptible_timeout(i32 %69, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %78 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @spin_lock_irq(i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %44
  %84 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %9, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CMF_PENDING, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @ETIME, align 4
  %93 = sub nsw i32 0, %92
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  br label %96

96:                                               ; preds = %94, %91
  %97 = phi i32 [ %93, %91 ], [ %95, %94 ]
  %98 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %9, i32 0, i32 2
  store i32 %97, i32* %98, align 8
  %99 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %100 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DEV_STATE_CMFCHANGE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %108 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %109 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i64 %107, i64* %111, align 8
  br label %112

112:                                              ; preds = %106, %96
  br label %113

113:                                              ; preds = %112, %83
  br label %114

114:                                              ; preds = %113, %44
  %115 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %116 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store %struct.set_schib_struct* null, %struct.set_schib_struct** %118, align 8
  %119 = getelementptr inbounds %struct.set_schib_struct, %struct.set_schib_struct* %9, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %114, %43, %34, %23
  %122 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %123 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @spin_unlock_irq(i32 %124)
  %126 = load i32, i32* %10, align 4
  ret i32 %126
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @set_schib(%struct.ccw_device*, i32, i32, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
