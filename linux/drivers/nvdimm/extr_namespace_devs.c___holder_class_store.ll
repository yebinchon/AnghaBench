; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c___holder_class_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c___holder_class_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.nd_namespace_common = type { i64, i64 }

@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"btt\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@NVDIMM_CCLASS_PFN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"dax\00", align 1
@NVDIMM_CCLASS_DAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NVDIMM_CCLASS_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*)* @__holder_class_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__holder_class_store(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nd_namespace_common*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.nd_namespace_common* @to_ndns(%struct.device* %7)
  store %struct.nd_namespace_common* %8, %struct.nd_namespace_common** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %15 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i64, i64* @EBUSY, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %3, align 8
  br label %70

21:                                               ; preds = %13
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @sysfs_streq(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i64 @btt_claim_class(%struct.device* %26)
  %28 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %29 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %60

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @sysfs_streq(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* @NVDIMM_CCLASS_PFN, align 8
  %36 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %37 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %59

38:                                               ; preds = %30
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @sysfs_streq(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* @NVDIMM_CCLASS_DAX, align 8
  %44 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %45 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %58

46:                                               ; preds = %38
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @sysfs_streq(i8* %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* @NVDIMM_CCLASS_NONE, align 8
  %52 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %53 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %57

54:                                               ; preds = %46
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub nsw i64 0, %55
  store i64 %56, i64* %3, align 8
  br label %70

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59, %25
  %61 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %62 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %67 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %3, align 8
  br label %70

69:                                               ; preds = %60
  store i64 0, i64* %3, align 8
  br label %70

70:                                               ; preds = %69, %65, %54, %18
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local %struct.nd_namespace_common* @to_ndns(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i64 @btt_claim_class(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
