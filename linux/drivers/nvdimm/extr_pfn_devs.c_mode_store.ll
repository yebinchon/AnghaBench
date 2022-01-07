; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.device_attribute = type { i32 }
%struct.nd_pfn = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pmem\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pmem\00", align 1
@PFN_MODE_PMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ram\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@PFN_MODE_RAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@PFN_MODE_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"result: %zd wrote: %s%s\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nd_pfn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.nd_pfn* @to_nd_pfn_safe(%struct.device* %12)
  store %struct.nd_pfn* %13, %struct.nd_pfn** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @nd_device_lock(%struct.device* %14)
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @nvdimm_bus_lock(%struct.device* %16)
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  br label %75

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 1
  store i64 %27, i64* %11, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %25
  %38 = load i32, i32* @PFN_MODE_PMEM, align 4
  %39 = load %struct.nd_pfn*, %struct.nd_pfn** %9, align 8
  %40 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %74

41:                                               ; preds = %32
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @strncmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @PFN_MODE_RAM, align 4
  %53 = load %struct.nd_pfn*, %struct.nd_pfn** %9, align 8
  %54 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %73

55:                                               ; preds = %46
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i64 @strncmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60, %55
  %66 = load i32, i32* @PFN_MODE_NONE, align 4
  %67 = load %struct.nd_pfn*, %struct.nd_pfn** %9, align 8
  %68 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %65
  br label %73

73:                                               ; preds = %72, %51
  br label %74

74:                                               ; preds = %73, %37
  br label %75

75:                                               ; preds = %74, %22
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %88 = call i32 @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %77, i8* %78, i8* %87)
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = call i32 @nvdimm_bus_unlock(%struct.device* %89)
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = call i32 @nd_device_unlock(%struct.device* %91)
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %75
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  br label %100

98:                                               ; preds = %75
  %99 = load i64, i64* %8, align 8
  br label %100

100:                                              ; preds = %98, %95
  %101 = phi i64 [ %97, %95 ], [ %99, %98 ]
  %102 = trunc i64 %101 to i32
  ret i32 %102
}

declare dso_local %struct.nd_pfn* @to_nd_pfn_safe(%struct.device*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
