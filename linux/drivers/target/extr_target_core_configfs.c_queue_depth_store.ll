; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_queue_depth_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_queue_depth_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_dev_attrib = type { i64, %struct.se_device* }
%struct.se_device = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [66 x i8] c"dev[%p]: Unable to change SE Device TCQ while export_count is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"dev[%p]: Illegal ZERO value for queue_depth\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"dev[%p]: Passed queue_depth: %u exceeds TCM/SE_Device MAX TCQ: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"dev[%p]: SE Device TCQ Depth changed to: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @queue_depth_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_depth_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_dev_attrib*, align 8
  %9 = alloca %struct.se_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.config_item*, %struct.config_item** %5, align 8
  %13 = call %struct.se_dev_attrib* @to_attrib(%struct.config_item* %12)
  store %struct.se_dev_attrib* %13, %struct.se_dev_attrib** %8, align 8
  %14 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %15 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %14, i32 0, i32 1
  %16 = load %struct.se_device*, %struct.se_device** %15, align 8
  store %struct.se_device* %16, %struct.se_device** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @kstrtou32(i8* %17, i32 0, i64* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %80

23:                                               ; preds = %3
  %24 = load %struct.se_device*, %struct.se_device** %9, align 8
  %25 = getelementptr inbounds %struct.se_device, %struct.se_device* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.se_device*, %struct.se_device** %9, align 8
  %30 = load %struct.se_device*, %struct.se_device** %9, align 8
  %31 = getelementptr inbounds %struct.se_device, %struct.se_device* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, %struct.se_device*, ...) @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.se_device* %29, i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %80

36:                                               ; preds = %23
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.se_device*, %struct.se_device** %9, align 8
  %41 = call i32 (i8*, %struct.se_device*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.se_device* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %80

44:                                               ; preds = %36
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.se_device*, %struct.se_device** %9, align 8
  %47 = getelementptr inbounds %struct.se_device, %struct.se_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %45, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.se_device*, %struct.se_device** %9, align 8
  %54 = getelementptr inbounds %struct.se_device, %struct.se_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %52, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load %struct.se_device*, %struct.se_device** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.se_device*, %struct.se_device** %9, align 8
  %62 = getelementptr inbounds %struct.se_device, %struct.se_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, %struct.se_device*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), %struct.se_device* %59, i64 %60, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %80

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.se_device*, %struct.se_device** %9, align 8
  %72 = getelementptr inbounds %struct.se_device, %struct.se_device* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %74 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %73, i32 0, i32 0
  store i64 %70, i64* %74, align 8
  %75 = load %struct.se_device*, %struct.se_device** %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), %struct.se_device* %75, i64 %76)
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %69, %58, %39, %28, %21
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.se_dev_attrib* @to_attrib(%struct.config_item*) #1

declare dso_local i32 @kstrtou32(i8*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, %struct.se_device*, ...) #1

declare dso_local i32 @pr_debug(i8*, %struct.se_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
