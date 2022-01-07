; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_aif_set_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_aif_set_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lochnagar_pin_priv = type { i32, %struct.lochnagar_group*, %struct.TYPE_2__* }
%struct.lochnagar_group = type { i64, i32, %struct.lochnagar_aif* }
%struct.lochnagar_aif = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@LN_FTYPE_AIF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Set AIF %s to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to set %s mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lochnagar_pin_priv*, i32, i32)* @lochnagar_aif_set_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_aif_set_master(%struct.lochnagar_pin_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lochnagar_pin_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca %struct.lochnagar_group*, align 8
  %10 = alloca %struct.lochnagar_aif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lochnagar_pin_priv* %0, %struct.lochnagar_pin_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %14 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %8, align 8
  %18 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %19 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %18, i32 0, i32 1
  %20 = load %struct.lochnagar_group*, %struct.lochnagar_group** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %20, i64 %22
  store %struct.lochnagar_group* %23, %struct.lochnagar_group** %9, align 8
  %24 = load %struct.lochnagar_group*, %struct.lochnagar_group** %9, align 8
  %25 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %24, i32 0, i32 2
  %26 = load %struct.lochnagar_aif*, %struct.lochnagar_aif** %25, align 8
  store %struct.lochnagar_aif* %26, %struct.lochnagar_aif** %10, align 8
  store i32 0, i32* %11, align 4
  %27 = load %struct.lochnagar_group*, %struct.lochnagar_group** %9, align 8
  %28 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LN_FTYPE_AIF, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %76

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.lochnagar_aif*, %struct.lochnagar_aif** %10, align 8
  %40 = getelementptr inbounds %struct.lochnagar_aif, %struct.lochnagar_aif* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %44 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.lochnagar_group*, %struct.lochnagar_group** %9, align 8
  %47 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %48, i8* %52)
  %54 = load %struct.regmap*, %struct.regmap** %8, align 8
  %55 = load %struct.lochnagar_aif*, %struct.lochnagar_aif** %10, align 8
  %56 = getelementptr inbounds %struct.lochnagar_aif, %struct.lochnagar_aif* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lochnagar_aif*, %struct.lochnagar_aif** %10, align 8
  %59 = getelementptr inbounds %struct.lochnagar_aif, %struct.lochnagar_aif* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @regmap_update_bits(%struct.regmap* %54, i32 %57, i32 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %42
  %66 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %67 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.lochnagar_group*, %struct.lochnagar_group** %9, align 8
  %70 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %65, %32
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
