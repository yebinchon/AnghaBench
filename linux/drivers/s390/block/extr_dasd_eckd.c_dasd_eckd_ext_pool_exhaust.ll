; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_ext_pool_exhaust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_ext_pool_exhaust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_ccw_req = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.ext_pool_exhaust_work_data = type { i32, i32*, %struct.dasd_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dasd_eckd_ext_pool_exhaust_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.dasd_ccw_req*)* @dasd_eckd_ext_pool_exhaust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_ext_pool_exhaust(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca %struct.ext_pool_exhaust_work_data*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %5, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.ext_pool_exhaust_work_data* @kzalloc(i32 24, i32 %7)
  store %struct.ext_pool_exhaust_work_data* %8, %struct.ext_pool_exhaust_work_data** %6, align 8
  %9 = load %struct.ext_pool_exhaust_work_data*, %struct.ext_pool_exhaust_work_data** %6, align 8
  %10 = icmp ne %struct.ext_pool_exhaust_work_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.ext_pool_exhaust_work_data*, %struct.ext_pool_exhaust_work_data** %6, align 8
  %16 = getelementptr inbounds %struct.ext_pool_exhaust_work_data, %struct.ext_pool_exhaust_work_data* %15, i32 0, i32 0
  %17 = load i32, i32* @dasd_eckd_ext_pool_exhaust_work, align 4
  %18 = call i32 @INIT_WORK(i32* %16, i32 %17)
  %19 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %20 = call i32 @dasd_get_device(%struct.dasd_device* %19)
  %21 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %22 = load %struct.ext_pool_exhaust_work_data*, %struct.ext_pool_exhaust_work_data** %6, align 8
  %23 = getelementptr inbounds %struct.ext_pool_exhaust_work_data, %struct.ext_pool_exhaust_work_data* %22, i32 0, i32 2
  store %struct.dasd_device* %21, %struct.dasd_device** %23, align 8
  %24 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %25 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %14
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %30 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.ext_pool_exhaust_work_data*, %struct.ext_pool_exhaust_work_data** %6, align 8
  %35 = getelementptr inbounds %struct.ext_pool_exhaust_work_data, %struct.ext_pool_exhaust_work_data* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  br label %51

36:                                               ; preds = %14
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %38 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %43 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.ext_pool_exhaust_work_data*, %struct.ext_pool_exhaust_work_data** %6, align 8
  %46 = getelementptr inbounds %struct.ext_pool_exhaust_work_data, %struct.ext_pool_exhaust_work_data* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  br label %50

47:                                               ; preds = %36
  %48 = load %struct.ext_pool_exhaust_work_data*, %struct.ext_pool_exhaust_work_data** %6, align 8
  %49 = getelementptr inbounds %struct.ext_pool_exhaust_work_data, %struct.ext_pool_exhaust_work_data* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.ext_pool_exhaust_work_data*, %struct.ext_pool_exhaust_work_data** %6, align 8
  %53 = getelementptr inbounds %struct.ext_pool_exhaust_work_data, %struct.ext_pool_exhaust_work_data* %52, i32 0, i32 0
  %54 = call i32 @schedule_work(i32* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ext_pool_exhaust_work_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @dasd_get_device(%struct.dasd_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
