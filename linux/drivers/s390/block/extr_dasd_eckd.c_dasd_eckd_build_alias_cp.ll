; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_alias_cp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_alias_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32 }
%struct.dasd_device = type { i32, i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i64 }
%struct.dasd_block = type { i32 }
%struct.request = type { i32 }

@DASD_ECKD_CHANQ_MAX_SIZE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DASD_FEATURE_USERAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, %struct.dasd_block*, %struct.request*)* @dasd_eckd_build_alias_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_build_alias_cp(%struct.dasd_device* %0, %struct.dasd_block* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.dasd_block*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.dasd_eckd_private*, align 8
  %9 = alloca %struct.dasd_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store %struct.dasd_block* %1, %struct.dasd_block** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %13 = call %struct.dasd_device* @dasd_alias_get_start_dev(%struct.dasd_device* %12)
  store %struct.dasd_device* %13, %struct.dasd_device** %9, align 8
  %14 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %15 = icmp ne %struct.dasd_device* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  store %struct.dasd_device* %17, %struct.dasd_device** %9, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 2
  %21 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %20, align 8
  store %struct.dasd_eckd_private* %21, %struct.dasd_eckd_private** %8, align 8
  %22 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %23 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DASD_ECKD_CHANQ_MAX_SIZE, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.dasd_ccw_req* @ERR_PTR(i32 %29)
  store %struct.dasd_ccw_req* %30, %struct.dasd_ccw_req** %4, align 8
  br label %75

31:                                               ; preds = %18
  %32 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %33 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @get_ccwdev_lock(i32 %34)
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @spin_lock_irqsave(i32 %35, i64 %36)
  %38 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %39 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %43 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DASD_FEATURE_USERAW, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %31
  %49 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %50 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %51 = load %struct.request*, %struct.request** %7, align 8
  %52 = call %struct.dasd_ccw_req* @dasd_eckd_build_cp_raw(%struct.dasd_device* %49, %struct.dasd_block* %50, %struct.request* %51)
  store %struct.dasd_ccw_req* %52, %struct.dasd_ccw_req** %11, align 8
  br label %58

53:                                               ; preds = %31
  %54 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %55 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %56 = load %struct.request*, %struct.request** %7, align 8
  %57 = call %struct.dasd_ccw_req* @dasd_eckd_build_cp(%struct.dasd_device* %54, %struct.dasd_block* %55, %struct.request* %56)
  store %struct.dasd_ccw_req* %57, %struct.dasd_ccw_req** %11, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %60 = call i64 @IS_ERR(%struct.dasd_ccw_req* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %64 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %62, %58
  %68 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  %69 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @get_ccwdev_lock(i32 %70)
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32 %71, i64 %72)
  %74 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  store %struct.dasd_ccw_req* %74, %struct.dasd_ccw_req** %4, align 8
  br label %75

75:                                               ; preds = %67, %27
  %76 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  ret %struct.dasd_ccw_req* %76
}

declare dso_local %struct.dasd_device* @dasd_alias_get_start_dev(%struct.dasd_device*) #1

declare dso_local %struct.dasd_ccw_req* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_cp_raw(%struct.dasd_device*, %struct.dasd_block*, %struct.request*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_cp(%struct.dasd_device*, %struct.dasd_block*, %struct.request*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
