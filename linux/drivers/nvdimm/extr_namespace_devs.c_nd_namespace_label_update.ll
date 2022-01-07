; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_namespace_label_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_namespace_label_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32 }
%struct.device = type { i64 }
%struct.nd_namespace_pmem = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nd_namespace_blk = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"namespace must be idle during label update\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_region*, %struct.device*)* @nd_namespace_label_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_namespace_label_update(%struct.nd_region* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nd_region*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.nd_namespace_pmem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nd_namespace_blk*, align 8
  %9 = alloca i64, align 8
  store %struct.nd_region* %0, %struct.nd_region** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.TYPE_4__* @to_ndns(%struct.device* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @dev_WARN_ONCE(%struct.device* %10, i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call %struct.TYPE_4__* @to_ndns(%struct.device* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %21
  store i32 0, i32* %3, align 4
  br label %104

36:                                               ; preds = %29
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i64 @is_namespace_pmem(%struct.device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %41)
  store %struct.nd_namespace_pmem* %42, %struct.nd_namespace_pmem** %6, align 8
  %43 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %6, align 8
  %44 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i64 @resource_size(i32* %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %6, align 8
  %51 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %62

55:                                               ; preds = %49, %40
  %56 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %6, align 8
  %57 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %104

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %54
  %63 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %64 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @nd_pmem_namespace_label_update(%struct.nd_region* %63, %struct.nd_namespace_pmem* %64, i64 %65)
  store i32 %66, i32* %3, align 4
  br label %104

67:                                               ; preds = %36
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = call i64 @is_namespace_blk(%struct.device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %67
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device* %72)
  store %struct.nd_namespace_blk* %73, %struct.nd_namespace_blk** %8, align 8
  %74 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %8, align 8
  %75 = call i64 @nd_namespace_blk_size(%struct.nd_namespace_blk* %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %8, align 8
  %80 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %96

84:                                               ; preds = %78, %71
  %85 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %8, align 8
  %86 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %8, align 8
  %91 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89, %84
  store i32 0, i32* %3, align 4
  br label %104

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %83
  %97 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %98 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @nd_blk_namespace_label_update(%struct.nd_region* %97, %struct.nd_namespace_blk* %98, i64 %99)
  store i32 %100, i32* %3, align 4
  br label %104

101:                                              ; preds = %67
  %102 = load i32, i32* @ENXIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %96, %94, %62, %60, %35
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @dev_WARN_ONCE(%struct.device*, i32, i8*) #1

declare dso_local %struct.TYPE_4__* @to_ndns(%struct.device*) #1

declare dso_local i64 @is_namespace_pmem(%struct.device*) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device*) #1

declare dso_local i64 @resource_size(i32*) #1

declare dso_local i32 @nd_pmem_namespace_label_update(%struct.nd_region*, %struct.nd_namespace_pmem*, i64) #1

declare dso_local i64 @is_namespace_blk(%struct.device*) #1

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device*) #1

declare dso_local i64 @nd_namespace_blk_size(%struct.nd_namespace_blk*) #1

declare dso_local i32 @nd_blk_namespace_label_update(%struct.nd_region*, %struct.nd_namespace_blk*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
