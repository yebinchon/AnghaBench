; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pconf_set_driving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pconf_set_driving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, %struct.mtk_drv_group_desc* }
%struct.mtk_drv_group_desc = type { i8, i8, i8, i32, i32 }
%struct.mtk_pin_drv_grp = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pinctrl*, i32, i8)* @mtk_pconf_set_driving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pconf_set_driving(%struct.mtk_pinctrl* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.mtk_pin_drv_grp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mtk_drv_group_desc*, align 8
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %16 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp uge i32 %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %122

24:                                               ; preds = %3
  %25 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.mtk_pin_drv_grp* @mtk_find_pin_drv_grp_by_pin(%struct.mtk_pinctrl* %25, i32 %26)
  store %struct.mtk_pin_drv_grp* %27, %struct.mtk_pin_drv_grp** %8, align 8
  %28 = load %struct.mtk_pin_drv_grp*, %struct.mtk_pin_drv_grp** %8, align 8
  %29 = icmp ne %struct.mtk_pin_drv_grp* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.mtk_pin_drv_grp*, %struct.mtk_pin_drv_grp** %8, align 8
  %32 = getelementptr inbounds %struct.mtk_pin_drv_grp, %struct.mtk_pin_drv_grp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %35 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %33, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30, %24
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %122

43:                                               ; preds = %30
  %44 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %45 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load %struct.mtk_drv_group_desc*, %struct.mtk_drv_group_desc** %47, align 8
  %49 = load %struct.mtk_pin_drv_grp*, %struct.mtk_pin_drv_grp** %8, align 8
  %50 = getelementptr inbounds %struct.mtk_pin_drv_grp, %struct.mtk_pin_drv_grp* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.mtk_drv_group_desc, %struct.mtk_drv_group_desc* %48, i64 %51
  store %struct.mtk_drv_group_desc* %52, %struct.mtk_drv_group_desc** %13, align 8
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = load %struct.mtk_drv_group_desc*, %struct.mtk_drv_group_desc** %13, align 8
  %56 = getelementptr inbounds %struct.mtk_drv_group_desc, %struct.mtk_drv_group_desc* %55, i32 0, i32 0
  %57 = load i8, i8* %56, align 4
  %58 = zext i8 %57 to i32
  %59 = icmp sge i32 %54, %58
  br i1 %59, label %60, label %119

60:                                               ; preds = %43
  %61 = load i8, i8* %7, align 1
  %62 = zext i8 %61 to i32
  %63 = load %struct.mtk_drv_group_desc*, %struct.mtk_drv_group_desc** %13, align 8
  %64 = getelementptr inbounds %struct.mtk_drv_group_desc, %struct.mtk_drv_group_desc* %63, i32 0, i32 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sle i32 %62, %66
  br i1 %67, label %68, label %119

68:                                               ; preds = %60
  %69 = load i8, i8* %7, align 1
  %70 = zext i8 %69 to i32
  %71 = load %struct.mtk_drv_group_desc*, %struct.mtk_drv_group_desc** %13, align 8
  %72 = getelementptr inbounds %struct.mtk_drv_group_desc, %struct.mtk_drv_group_desc* %71, i32 0, i32 2
  %73 = load i8, i8* %72, align 2
  %74 = zext i8 %73 to i32
  %75 = srem i32 %70, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %119, label %77

77:                                               ; preds = %68
  %78 = load i8, i8* %7, align 1
  %79 = zext i8 %78 to i32
  %80 = load %struct.mtk_drv_group_desc*, %struct.mtk_drv_group_desc** %13, align 8
  %81 = getelementptr inbounds %struct.mtk_drv_group_desc, %struct.mtk_drv_group_desc* %80, i32 0, i32 2
  %82 = load i8, i8* %81, align 2
  %83 = zext i8 %82 to i32
  %84 = sdiv i32 %79, %83
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  %86 = load %struct.mtk_drv_group_desc*, %struct.mtk_drv_group_desc** %13, align 8
  %87 = getelementptr inbounds %struct.mtk_drv_group_desc, %struct.mtk_drv_group_desc* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mtk_drv_group_desc*, %struct.mtk_drv_group_desc** %13, align 8
  %90 = getelementptr inbounds %struct.mtk_drv_group_desc, %struct.mtk_drv_group_desc* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = sub i32 %88, %91
  %93 = add i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @BIT(i32 %94)
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  %97 = load %struct.mtk_pin_drv_grp*, %struct.mtk_pin_drv_grp** %8, align 8
  %98 = getelementptr inbounds %struct.mtk_pin_drv_grp, %struct.mtk_pin_drv_grp* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.mtk_drv_group_desc*, %struct.mtk_drv_group_desc** %13, align 8
  %101 = getelementptr inbounds %struct.mtk_drv_group_desc, %struct.mtk_drv_group_desc* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = add i32 %99, %102
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = shl i32 %105, %104
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %9, align 4
  %109 = shl i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @mtk_get_regmap(%struct.mtk_pinctrl* %110, i32 %111)
  %113 = load %struct.mtk_pin_drv_grp*, %struct.mtk_pin_drv_grp** %8, align 8
  %114 = getelementptr inbounds %struct.mtk_pin_drv_grp, %struct.mtk_pin_drv_grp* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @regmap_update_bits(i32 %112, i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %4, align 4
  br label %122

119:                                              ; preds = %68, %60, %43
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %119, %77, %40, %21
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.mtk_pin_drv_grp* @mtk_find_pin_drv_grp_by_pin(%struct.mtk_pinctrl*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mtk_get_regmap(%struct.mtk_pinctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
