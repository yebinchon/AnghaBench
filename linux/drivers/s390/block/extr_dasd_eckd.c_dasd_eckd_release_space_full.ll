; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_release_space_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_release_space_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_ccw_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_release_space_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_release_space_full(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %7 = call %struct.dasd_ccw_req* @dasd_eckd_dso_ras(%struct.dasd_device* %6, i32* null, i32* null, i32 0, i32 0, i32 0)
  store %struct.dasd_ccw_req* %7, %struct.dasd_ccw_req** %4, align 8
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %9 = call i64 @IS_ERR(%struct.dasd_ccw_req* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %12)
  store i32 %13, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %16 = call i32 @dasd_sleep_on_interruptible(%struct.dasd_ccw_req* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %19 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %17, i32 %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %14, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_dso_ras(%struct.dasd_device*, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_sleep_on_interruptible(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
