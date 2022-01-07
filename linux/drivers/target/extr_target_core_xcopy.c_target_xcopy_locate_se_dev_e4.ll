; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_locate_se_dev_e4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_locate_se_dev_e4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.xcopy_dev_search_info = type { i8*, %struct.se_device* }

@target_xcopy_locate_se_dev_e4_iter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unable to locate 0xe4 descriptor for EXTENDED_COPY\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.se_device**)* @target_xcopy_locate_se_dev_e4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xcopy_locate_se_dev_e4(i8* %0, %struct.se_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_device**, align 8
  %6 = alloca %struct.xcopy_dev_search_info, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.se_device** %1, %struct.se_device*** %5, align 8
  %8 = call i32 @memset(%struct.xcopy_dev_search_info* %6, i32 0, i32 16)
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds %struct.xcopy_dev_search_info, %struct.xcopy_dev_search_info* %6, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* @target_xcopy_locate_se_dev_e4_iter, align 4
  %12 = call i32 @target_for_each_device(i32 %11, %struct.xcopy_dev_search_info* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.xcopy_dev_search_info, %struct.xcopy_dev_search_info* %6, i32 0, i32 1
  %17 = load %struct.se_device*, %struct.se_device** %16, align 8
  %18 = load %struct.se_device**, %struct.se_device*** %5, align 8
  store %struct.se_device* %17, %struct.se_device** %18, align 8
  store i32 0, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @memset(%struct.xcopy_dev_search_info*, i32, i32) #1

declare dso_local i32 @target_for_each_device(i32, %struct.xcopy_dev_search_info*) #1

declare dso_local i32 @pr_debug_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
