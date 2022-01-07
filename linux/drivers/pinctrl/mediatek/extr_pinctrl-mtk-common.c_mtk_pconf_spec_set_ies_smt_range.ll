; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pconf_spec_set_ies_smt_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pconf_spec_set_ies_smt_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.mtk_pin_ies_smt_set = type { i32, i32, i8, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_pconf_spec_set_ies_smt_range(%struct.regmap* %0, %struct.mtk_pin_ies_smt_set* %1, i32 %2, i32 %3, i8 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca %struct.mtk_pin_ies_smt_set*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %8, align 8
  store %struct.mtk_pin_ies_smt_set* %1, %struct.mtk_pin_ies_smt_set** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8 %4, i8* %12, align 1
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %41, %6
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.mtk_pin_ies_smt_set*, %struct.mtk_pin_ies_smt_set** %9, align 8
  %24 = load i32, i32* %14, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mtk_pin_ies_smt_set, %struct.mtk_pin_ies_smt_set* %23, i64 %25
  %27 = getelementptr inbounds %struct.mtk_pin_ies_smt_set, %struct.mtk_pin_ies_smt_set* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp uge i32 %22, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.mtk_pin_ies_smt_set*, %struct.mtk_pin_ies_smt_set** %9, align 8
  %33 = load i32, i32* %14, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mtk_pin_ies_smt_set, %struct.mtk_pin_ies_smt_set* %32, i64 %34
  %36 = getelementptr inbounds %struct.mtk_pin_ies_smt_set, %struct.mtk_pin_ies_smt_set* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ule i32 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %44

40:                                               ; preds = %30, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %14, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %17

44:                                               ; preds = %39, %17
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %89

51:                                               ; preds = %44
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.mtk_pin_ies_smt_set*, %struct.mtk_pin_ies_smt_set** %9, align 8
  %56 = load i32, i32* %14, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mtk_pin_ies_smt_set, %struct.mtk_pin_ies_smt_set* %55, i64 %57
  %59 = getelementptr inbounds %struct.mtk_pin_ies_smt_set, %struct.mtk_pin_ies_smt_set* %58, i32 0, i32 2
  %60 = load i8, i8* %59, align 4
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %12, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %61, %63
  store i32 %64, i32* %15, align 4
  br label %77

65:                                               ; preds = %51
  %66 = load %struct.mtk_pin_ies_smt_set*, %struct.mtk_pin_ies_smt_set** %9, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mtk_pin_ies_smt_set, %struct.mtk_pin_ies_smt_set* %66, i64 %68
  %70 = getelementptr inbounds %struct.mtk_pin_ies_smt_set, %struct.mtk_pin_ies_smt_set* %69, i32 0, i32 2
  %71 = load i8, i8* %70, align 4
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %12, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 1
  %76 = add nsw i32 %72, %75
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %65, %54
  %78 = load %struct.mtk_pin_ies_smt_set*, %struct.mtk_pin_ies_smt_set** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.mtk_pin_ies_smt_set, %struct.mtk_pin_ies_smt_set* %78, i64 %80
  %82 = getelementptr inbounds %struct.mtk_pin_ies_smt_set, %struct.mtk_pin_ies_smt_set* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @BIT(i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load %struct.regmap*, %struct.regmap** %8, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @regmap_write(%struct.regmap* %85, i32 %86, i32 %87)
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %77, %48
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
