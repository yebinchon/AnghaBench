; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_holder_class_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_holder_class_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nd_namespace_common = type { i64 }

@NVDIMM_CCLASS_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NVDIMM_CCLASS_BTT = common dso_local global i64 0, align 8
@NVDIMM_CCLASS_BTT2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"btt\0A\00", align 1
@NVDIMM_CCLASS_PFN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"pfn\0A\00", align 1
@NVDIMM_CCLASS_DAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"dax\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"<unknown>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @holder_class_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @holder_class_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nd_namespace_common*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.nd_namespace_common* @to_ndns(%struct.device* %9)
  store %struct.nd_namespace_common* %10, %struct.nd_namespace_common** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @nd_device_lock(%struct.device* %11)
  %13 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %7, align 8
  %14 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NVDIMM_CCLASS_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  br label %60

21:                                               ; preds = %3
  %22 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %7, align 8
  %23 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NVDIMM_CCLASS_BTT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %7, align 8
  %29 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NVDIMM_CCLASS_BTT2, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %8, align 4
  br label %59

36:                                               ; preds = %27
  %37 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %7, align 8
  %38 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NVDIMM_CCLASS_PFN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %44, i32* %8, align 4
  br label %58

45:                                               ; preds = %36
  %46 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %7, align 8
  %47 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NVDIMM_CCLASS_DAX, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %53, i32* %8, align 4
  br label %57

54:                                               ; preds = %45
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %33
  br label %60

60:                                               ; preds = %59, %18
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @nd_device_unlock(%struct.device* %61)
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local %struct.nd_namespace_common* @to_ndns(%struct.device*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
