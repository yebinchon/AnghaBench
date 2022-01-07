; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_sysfs.c_rtc_add_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_sysfs.c_rtc_add_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type opaque
%struct.rtc_device = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { %struct.attribute_group** }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rtc_attr_groups = common dso_local global %struct.attribute_group** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_add_groups(%struct.rtc_device* %0, %struct.attribute_group** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.attribute_group**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.attribute_group**, align 8
  %10 = alloca %struct.attribute_group**, align 8
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store %struct.attribute_group** %1, %struct.attribute_group*** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %12 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %111

18:                                               ; preds = %2
  %19 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %20 = icmp ne %struct.attribute_group** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %111

24:                                               ; preds = %18
  %25 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.attribute_group**, %struct.attribute_group*** %27, align 8
  store %struct.attribute_group** %28, %struct.attribute_group*** %9, align 8
  %29 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %30 = icmp ne %struct.attribute_group** %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %39, %31
  %33 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %34 = load %struct.attribute_group*, %struct.attribute_group** %33, align 8
  %35 = icmp ne %struct.attribute_group* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %36
  %40 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %41 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %40, i32 1
  store %struct.attribute_group** %41, %struct.attribute_group*** %9, align 8
  br label %32

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  store %struct.attribute_group** %44, %struct.attribute_group*** %9, align 8
  br label %45

45:                                               ; preds = %52, %43
  %46 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %47 = load %struct.attribute_group*, %struct.attribute_group** %46, align 8
  %48 = icmp ne %struct.attribute_group* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %54 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %53, i32 1
  store %struct.attribute_group** %54, %struct.attribute_group*** %9, align 8
  br label %45

55:                                               ; preds = %45
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %56, %57
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  %60 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %60, i32 0, i32 0
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.attribute_group** @devm_kcalloc(%struct.TYPE_3__* %61, i64 %62, i32 8, i32 %63)
  store %struct.attribute_group** %64, %struct.attribute_group*** %9, align 8
  %65 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %66 = icmp ne %struct.attribute_group** %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %111

70:                                               ; preds = %55
  %71 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %72 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %73 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.attribute_group**, %struct.attribute_group*** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = mul i64 %76, 8
  %78 = call i32 @memcpy(%struct.attribute_group** %71, %struct.attribute_group** %75, i64 %77)
  %79 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %79, i64 %80
  %82 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %83 = load i64, i64* %7, align 8
  %84 = mul i64 %83, 8
  %85 = call i32 @memcpy(%struct.attribute_group** %81, %struct.attribute_group** %82, i64 %84)
  %86 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %87, %88
  %90 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %86, i64 %89
  store %struct.attribute_group* null, %struct.attribute_group** %90, align 8
  %91 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %92 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load %struct.attribute_group**, %struct.attribute_group*** %93, align 8
  store %struct.attribute_group** %94, %struct.attribute_group*** %10, align 8
  %95 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %96 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %97 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store %struct.attribute_group** %95, %struct.attribute_group*** %98, align 8
  %99 = load %struct.attribute_group**, %struct.attribute_group*** %10, align 8
  %100 = icmp ne %struct.attribute_group** %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %70
  %102 = load %struct.attribute_group**, %struct.attribute_group*** %10, align 8
  %103 = load %struct.attribute_group**, %struct.attribute_group*** @rtc_attr_groups, align 8
  %104 = icmp ne %struct.attribute_group** %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %107 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %106, i32 0, i32 0
  %108 = load %struct.attribute_group**, %struct.attribute_group*** %10, align 8
  %109 = call i32 @devm_kfree(%struct.TYPE_3__* %107, %struct.attribute_group** %108)
  br label %110

110:                                              ; preds = %105, %101, %70
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %67, %21, %15
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.attribute_group** @devm_kcalloc(%struct.TYPE_3__*, i64, i32, i32) #1

declare dso_local i32 @memcpy(%struct.attribute_group**, %struct.attribute_group**, i64) #1

declare dso_local i32 @devm_kfree(%struct.TYPE_3__*, %struct.attribute_group**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
