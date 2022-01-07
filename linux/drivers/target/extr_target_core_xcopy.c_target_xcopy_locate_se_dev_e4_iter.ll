; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_locate_se_dev_e4_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_xcopy_locate_se_dev_e4_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xcopy_dev_search_info = type { %struct.se_device*, i32 }

@XCOPY_NAA_IEEE_REGEX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"XCOPY 0xe4: located se_dev: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"configfs_depend_item attempt failed: %d for se_dev: %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Called configfs_depend_item for se_dev: %p se_dev->se_dev_group: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*)* @target_xcopy_locate_se_dev_e4_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xcopy_locate_se_dev_e4_iter(%struct.se_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xcopy_dev_search_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.xcopy_dev_search_info*
  store %struct.xcopy_dev_search_info* %12, %struct.xcopy_dev_search_info** %6, align 8
  %13 = load i32, i32* @XCOPY_NAA_IEEE_REGEX_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.se_device*, %struct.se_device** %4, align 8
  %18 = getelementptr inbounds %struct.se_device, %struct.se_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %61

23:                                               ; preds = %2
  %24 = getelementptr inbounds i8, i8* %16, i64 0
  %25 = load i32, i32* @XCOPY_NAA_IEEE_REGEX_LEN, align 4
  %26 = call i32 @memset(i8* %24, i32 0, i32 %25)
  %27 = load %struct.se_device*, %struct.se_device** %4, align 8
  %28 = getelementptr inbounds i8, i8* %16, i64 0
  %29 = call i32 @target_xcopy_gen_naa_ieee(%struct.se_device* %27, i8* %28)
  %30 = getelementptr inbounds i8, i8* %16, i64 0
  %31 = load %struct.xcopy_dev_search_info*, %struct.xcopy_dev_search_info** %6, align 8
  %32 = getelementptr inbounds %struct.xcopy_dev_search_info, %struct.xcopy_dev_search_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @XCOPY_NAA_IEEE_REGEX_LEN, align 4
  %35 = call i32 @memcmp(i8* %30, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %61

39:                                               ; preds = %23
  %40 = load %struct.se_device*, %struct.se_device** %4, align 8
  %41 = load %struct.xcopy_dev_search_info*, %struct.xcopy_dev_search_info** %6, align 8
  %42 = getelementptr inbounds %struct.xcopy_dev_search_info, %struct.xcopy_dev_search_info* %41, i32 0, i32 0
  store %struct.se_device* %40, %struct.se_device** %42, align 8
  %43 = load %struct.se_device*, %struct.se_device** %4, align 8
  %44 = call i32 (i8*, %struct.se_device*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.se_device* %43)
  %45 = load %struct.se_device*, %struct.se_device** %4, align 8
  %46 = getelementptr inbounds %struct.se_device, %struct.se_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @target_depend_item(i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.se_device*, %struct.se_device** %4, align 8
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %52, %struct.se_device* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %61

56:                                               ; preds = %39
  %57 = load %struct.se_device*, %struct.se_device** %4, align 8
  %58 = load %struct.se_device*, %struct.se_device** %4, align 8
  %59 = getelementptr inbounds %struct.se_device, %struct.se_device* %58, i32 0, i32 0
  %60 = call i32 (i8*, %struct.se_device*, ...) @pr_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), %struct.se_device* %57, %struct.TYPE_4__* %59)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %56, %51, %38, %22
  %62 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @target_xcopy_gen_naa_ieee(%struct.se_device*, i8*) #2

declare dso_local i32 @memcmp(i8*, i32, i32) #2

declare dso_local i32 @pr_debug(i8*, %struct.se_device*, ...) #2

declare dso_local i32 @target_depend_item(i32*) #2

declare dso_local i32 @pr_err(i8*, i32, %struct.se_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
