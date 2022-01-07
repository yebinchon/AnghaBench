; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_set_charge_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_set_charge_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb347_charger = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@fcc_tbl = common dso_local global i32 0, align 4
@CFG_CHARGE_CURRENT = common dso_local global i32 0, align 4
@CFG_CHARGE_CURRENT_FCC_MASK = common dso_local global i32 0, align 4
@CFG_CHARGE_CURRENT_FCC_SHIFT = common dso_local global i32 0, align 4
@pcc_tbl = common dso_local global i32 0, align 4
@CFG_CHARGE_CURRENT_PCC_MASK = common dso_local global i32 0, align 4
@CFG_CHARGE_CURRENT_PCC_SHIFT = common dso_local global i32 0, align 4
@tc_tbl = common dso_local global i32 0, align 4
@CFG_CHARGE_CURRENT_TC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb347_charger*)* @smb347_set_charge_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_set_charge_current(%struct.smb347_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb347_charger*, align 8
  %4 = alloca i32, align 4
  store %struct.smb347_charger* %0, %struct.smb347_charger** %3, align 8
  %5 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %6 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %1
  %12 = load i32, i32* @fcc_tbl, align 4
  %13 = load i32, i32* @fcc_tbl, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %16 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @current_to_hw(i32 %12, i32 %14, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %111

25:                                               ; preds = %11
  %26 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %27 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CFG_CHARGE_CURRENT, align 4
  %30 = load i32, i32* @CFG_CHARGE_CURRENT_FCC_MASK, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @CFG_CHARGE_CURRENT_FCC_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %111

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %42 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %40
  %48 = load i32, i32* @pcc_tbl, align 4
  %49 = load i32, i32* @pcc_tbl, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %52 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @current_to_hw(i32 %48, i32 %50, i64 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %111

61:                                               ; preds = %47
  %62 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %63 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CFG_CHARGE_CURRENT, align 4
  %66 = load i32, i32* @CFG_CHARGE_CURRENT_PCC_MASK, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @CFG_CHARGE_CURRENT_PCC_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 %66, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %111

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %40
  %77 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %78 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %110

83:                                               ; preds = %76
  %84 = load i32, i32* @tc_tbl, align 4
  %85 = load i32, i32* @tc_tbl, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %88 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @current_to_hw(i32 %84, i32 %86, i64 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %111

97:                                               ; preds = %83
  %98 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %99 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CFG_CHARGE_CURRENT, align 4
  %102 = load i32, i32* @CFG_CHARGE_CURRENT_TC_MASK, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @regmap_update_bits(i32 %100, i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %111

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %76
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %107, %95, %73, %59, %37, %23
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @current_to_hw(i32, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
