; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_format_build_ccw_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_format_build_ccw_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32 }
%struct.dasd_device = type { i32 }
%struct.format_data_t = type { i32 }
%struct.eckd_count = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, %struct.format_data_t*, i32, i32, %struct.eckd_count*, i32)* @dasd_eckd_format_build_ccw_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_format_build_ccw_req(%struct.dasd_device* %0, %struct.format_data_t* %1, i32 %2, i32 %3, %struct.eckd_count* %4, i32 %5) #0 {
  %7 = alloca %struct.dasd_device*, align 8
  %8 = alloca %struct.format_data_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.eckd_count*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %7, align 8
  store %struct.format_data_t* %1, %struct.format_data_t** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.eckd_count* %4, %struct.eckd_count** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.eckd_count*, %struct.eckd_count** %11, align 8
  %15 = icmp ne %struct.eckd_count* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %6
  %17 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %18 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.dasd_ccw_req* @dasd_eckd_build_format(%struct.dasd_device* %17, i32* null, %struct.format_data_t* %18, i32 %19)
  store %struct.dasd_ccw_req* %20, %struct.dasd_ccw_req** %13, align 8
  br label %39

21:                                               ; preds = %6
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %26 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.eckd_count*, %struct.eckd_count** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.dasd_ccw_req* @dasd_eckd_build_check_tcw(%struct.dasd_device* %25, %struct.format_data_t* %26, i32 %27, %struct.eckd_count* %28, i32 %29)
  store %struct.dasd_ccw_req* %30, %struct.dasd_ccw_req** %13, align 8
  br label %38

31:                                               ; preds = %21
  %32 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %33 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.eckd_count*, %struct.eckd_count** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call %struct.dasd_ccw_req* @dasd_eckd_build_check(%struct.dasd_device* %32, %struct.format_data_t* %33, i32 %34, %struct.eckd_count* %35, i32 %36)
  store %struct.dasd_ccw_req* %37, %struct.dasd_ccw_req** %13, align 8
  br label %38

38:                                               ; preds = %31, %24
  br label %39

39:                                               ; preds = %38, %16
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %13, align 8
  ret %struct.dasd_ccw_req* %40
}

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_format(%struct.dasd_device*, i32*, %struct.format_data_t*, i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_check_tcw(%struct.dasd_device*, %struct.format_data_t*, i32, %struct.eckd_count*, i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_build_check(%struct.dasd_device*, %struct.format_data_t*, i32, %struct.eckd_count*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
