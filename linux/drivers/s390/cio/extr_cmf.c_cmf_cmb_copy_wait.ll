; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_cmf_cmb_copy_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_cmf_cmb_copy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.copy_block_struct*, i32 }
%struct.copy_block_struct = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i64 0, align 8
@CMF_PENDING = common dso_local global i32 0, align 4
@DEV_STATE_CMFUPDATE = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @cmf_cmb_copy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmf_cmb_copy_wait(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.copy_block_struct, align 4
  %4 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %5 = load i32, i32* @ENODEV, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @spin_lock_irq(i32 %9)
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %98

18:                                               ; preds = %1
  %19 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %20 = call i32 @cmf_copy_block(%struct.ccw_device* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %98

26:                                               ; preds = %18
  %27 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %98

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %3, i32 0, i32 1
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load i32, i32* @CMF_PENDING, align 4
  %39 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %3, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i64, i64* @DEV_STATE_CMFUPDATE, align 8
  %41 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %42 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %40, i64* %44, align 8
  %45 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %46 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store %struct.copy_block_struct* %3, %struct.copy_block_struct** %48, align 8
  %49 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %50 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @spin_unlock_irq(i32 %51)
  %53 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %3, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %3, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CMF_PENDING, align 4
  %58 = icmp ne i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @wait_event_interruptible(i32 %54, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %62 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @spin_lock_irq(i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %35
  %68 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %3, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CMF_PENDING, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = load i32, i32* @ERESTARTSYS, align 4
  %74 = sub nsw i32 0, %73
  %75 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %3, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %77 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DEV_STATE_CMFUPDATE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %72
  %84 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %85 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %86 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i64 %84, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %72
  br label %90

90:                                               ; preds = %89, %67
  br label %91

91:                                               ; preds = %90, %35
  %92 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %93 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store %struct.copy_block_struct* null, %struct.copy_block_struct** %95, align 8
  %96 = getelementptr inbounds %struct.copy_block_struct, %struct.copy_block_struct* %3, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %91, %34, %25, %17
  %99 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %100 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @spin_unlock_irq(i32 %101)
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @cmf_copy_block(%struct.ccw_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
