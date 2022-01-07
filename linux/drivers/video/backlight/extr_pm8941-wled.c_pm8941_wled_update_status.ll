; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pm8941-wled.c_pm8941_wled_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pm8941-wled.c_pm8941_wled_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }
%struct.pm8941_wled = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@PM8941_WLED_REG_MOD_EN_BIT = common dso_local global i64 0, align 8
@PM8941_WLED_REG_MOD_EN = common dso_local global i64 0, align 8
@PM8941_WLED_REG_MOD_EN_MASK = common dso_local global i32 0, align 4
@PM8941_WLED_REG_VAL_BASE = common dso_local global i64 0, align 8
@PM8941_WLED_REG_SYNC = common dso_local global i64 0, align 8
@PM8941_WLED_REG_SYNC_MASK = common dso_local global i32 0, align 4
@PM8941_WLED_REG_SYNC_ALL = common dso_local global i64 0, align 8
@PM8941_WLED_REG_SYNC_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @pm8941_wled_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8941_wled_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.pm8941_wled*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i64], align 16
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %10 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %11 = call %struct.pm8941_wled* @bl_get_data(%struct.backlight_device* %10)
  store %struct.pm8941_wled* %11, %struct.pm8941_wled** %4, align 8
  %12 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %13 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %16 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %17 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %1
  %23 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %24 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %31 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29, %22, %1
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* @PM8941_WLED_REG_MOD_EN_BIT, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load %struct.pm8941_wled*, %struct.pm8941_wled** %4, align 8
  %45 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pm8941_wled*, %struct.pm8941_wled** %4, align 8
  %48 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PM8941_WLED_REG_MOD_EN, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* @PM8941_WLED_REG_MOD_EN_MASK, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @regmap_update_bits(i32 %46, i64 %51, i32 %52, i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %126

59:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %94, %59
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.pm8941_wled*, %struct.pm8941_wled** %4, align 8
  %63 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %60
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %69 = load i64, i64* %5, align 8
  %70 = and i64 %69, 255
  store i64 %70, i64* %68, align 8
  %71 = getelementptr inbounds i64, i64* %68, i64 1
  %72 = load i64, i64* %5, align 8
  %73 = ashr i64 %72, 8
  %74 = and i64 %73, 15
  store i64 %74, i64* %71, align 8
  %75 = load %struct.pm8941_wled*, %struct.pm8941_wled** %4, align 8
  %76 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.pm8941_wled*, %struct.pm8941_wled** %4, align 8
  %79 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PM8941_WLED_REG_VAL_BASE, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 2, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %82, %85
  %87 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %88 = call i32 @regmap_bulk_write(i32 %77, i64 %86, i64* %87, i32 2)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %67
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %126

93:                                               ; preds = %67
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %60

97:                                               ; preds = %60
  %98 = load %struct.pm8941_wled*, %struct.pm8941_wled** %4, align 8
  %99 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.pm8941_wled*, %struct.pm8941_wled** %4, align 8
  %102 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PM8941_WLED_REG_SYNC, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* @PM8941_WLED_REG_SYNC_MASK, align 4
  %107 = load i64, i64* @PM8941_WLED_REG_SYNC_ALL, align 8
  %108 = call i32 @regmap_update_bits(i32 %100, i64 %105, i32 %106, i64 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %97
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %2, align 4
  br label %126

113:                                              ; preds = %97
  %114 = load %struct.pm8941_wled*, %struct.pm8941_wled** %4, align 8
  %115 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.pm8941_wled*, %struct.pm8941_wled** %4, align 8
  %118 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PM8941_WLED_REG_SYNC, align 8
  %121 = add nsw i64 %119, %120
  %122 = load i32, i32* @PM8941_WLED_REG_SYNC_MASK, align 4
  %123 = load i64, i64* @PM8941_WLED_REG_SYNC_CLEAR, align 8
  %124 = call i32 @regmap_update_bits(i32 %116, i64 %121, i32 %122, i64 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %113, %111, %91, %57
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.pm8941_wled* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i64) #1

declare dso_local i32 @regmap_bulk_write(i32, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
