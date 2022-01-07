; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_release_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_release_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.format_data_t = type { i32, i32, i32 }

@DASD_FMT_INT_ESE_FULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.format_data_t*)* @dasd_eckd_release_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_release_space(%struct.dasd_device* %0, %struct.format_data_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.format_data_t*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.format_data_t* %1, %struct.format_data_t** %5, align 8
  %6 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %7 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DASD_FMT_INT_ESE_FULL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %14 = call i32 @dasd_eckd_release_space_full(%struct.dasd_device* %13)
  store i32 %14, i32* %3, align 4
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %17 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %22 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %23 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %26 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dasd_eckd_release_space_trks(%struct.dasd_device* %21, i32 %24, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %15
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %20, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @dasd_eckd_release_space_full(%struct.dasd_device*) #1

declare dso_local i32 @dasd_eckd_release_space_trks(%struct.dasd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
