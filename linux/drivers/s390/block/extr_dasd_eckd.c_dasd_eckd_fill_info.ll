; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i32*, i64, i32, i64 }
%struct.dasd_information2_t = type { i32, i32, i32, i32, i32, i32, i32 }

@DASD_FORMAT_CDL = common dso_local global i32 0, align 4
@DASD_FORMAT_LDL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.dasd_information2_t*)* @dasd_eckd_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_fill_info(%struct.dasd_device* %0, %struct.dasd_information2_t* %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_information2_t*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store %struct.dasd_information2_t* %1, %struct.dasd_information2_t** %4, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 0
  %8 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %7, align 8
  store %struct.dasd_eckd_private* %8, %struct.dasd_eckd_private** %5, align 8
  %9 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %10 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %9, i32 0, i32 0
  store i32 2, i32* %10, align 4
  %11 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %12 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 1
  %17 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %18 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %20 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @DASD_FORMAT_CDL, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @DASD_FORMAT_LDL, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %30 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %32 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %31, i32 0, i32 2
  store i32 4, i32* %32, align 4
  %33 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %34 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %37 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %36, i32 0, i32 2
  %38 = call i32 @memcpy(i32 %35, i32* %37, i32 4)
  %39 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %40 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @min(i64 %41, i32 4)
  %43 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %44 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %46 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %49 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %52 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(i32 %47, i32* %50, i32 %53)
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
