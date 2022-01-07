; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_read_dev_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_read_dev_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_ccw_req = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_read_dev_chars(%struct.dasd_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.dasd_ccw_req* @dasd_generic_build_rdc(%struct.dasd_device* %12, i32 %13, i32 %14)
  store %struct.dasd_ccw_req* %15, %struct.dasd_ccw_req** %11, align 8
  %16 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %17 = call i64 @IS_ERR(%struct.dasd_ccw_req* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %21 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %20)
  store i32 %21, i32* %5, align 4
  br label %41

22:                                               ; preds = %4
  %23 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %24 = call i32 @dasd_sleep_on(%struct.dasd_ccw_req* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %30 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @memcpy(i8* %28, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %36 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  %37 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %35, i32 %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %19
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.dasd_ccw_req* @dasd_generic_build_rdc(%struct.dasd_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_sleep_on(%struct.dasd_ccw_req*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
