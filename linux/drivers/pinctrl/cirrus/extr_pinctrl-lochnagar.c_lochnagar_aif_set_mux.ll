; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_aif_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_aif_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lochnagar_pin_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.lochnagar_pin* }
%struct.lochnagar_pin = type { i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.lochnagar_group = type { i32, i64*, i32, %struct.lochnagar_aif* }
%struct.lochnagar_aif = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to set %s source: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to set %s enable: %d\0A\00", align 1
@LN_PTYPE_MUX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Set pin %s to AIF\0A\00", align 1
@LOCHNAGAR2_GPIO_SRC_MASK = common dso_local global i32 0, align 4
@LN2_OP_AIF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to set %s to AIF: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lochnagar_pin_priv*, %struct.lochnagar_group*, i32)* @lochnagar_aif_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_aif_set_mux(%struct.lochnagar_pin_priv* %0, %struct.lochnagar_group* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lochnagar_pin_priv*, align 8
  %6 = alloca %struct.lochnagar_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca %struct.lochnagar_aif*, align 8
  %10 = alloca %struct.lochnagar_pin*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lochnagar_pin_priv* %0, %struct.lochnagar_pin_priv** %5, align 8
  store %struct.lochnagar_group* %1, %struct.lochnagar_group** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %14 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %8, align 8
  %18 = load %struct.lochnagar_group*, %struct.lochnagar_group** %6, align 8
  %19 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %18, i32 0, i32 3
  %20 = load %struct.lochnagar_aif*, %struct.lochnagar_aif** %19, align 8
  store %struct.lochnagar_aif* %20, %struct.lochnagar_aif** %9, align 8
  %21 = load %struct.regmap*, %struct.regmap** %8, align 8
  %22 = load %struct.lochnagar_aif*, %struct.lochnagar_aif** %9, align 8
  %23 = getelementptr inbounds %struct.lochnagar_aif, %struct.lochnagar_aif* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lochnagar_aif*, %struct.lochnagar_aif** %9, align 8
  %26 = getelementptr inbounds %struct.lochnagar_aif, %struct.lochnagar_aif* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @regmap_update_bits(%struct.regmap* %21, i32 %24, i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %34 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.lochnagar_group*, %struct.lochnagar_group** %6, align 8
  %37 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  br label %125

42:                                               ; preds = %3
  %43 = load %struct.regmap*, %struct.regmap** %8, align 8
  %44 = load %struct.lochnagar_aif*, %struct.lochnagar_aif** %9, align 8
  %45 = getelementptr inbounds %struct.lochnagar_aif, %struct.lochnagar_aif* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lochnagar_aif*, %struct.lochnagar_aif** %9, align 8
  %48 = getelementptr inbounds %struct.lochnagar_aif, %struct.lochnagar_aif* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lochnagar_aif*, %struct.lochnagar_aif** %9, align 8
  %51 = getelementptr inbounds %struct.lochnagar_aif, %struct.lochnagar_aif* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @regmap_update_bits(%struct.regmap* %43, i32 %46, i32 %49, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %42
  %57 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %58 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.lochnagar_group*, %struct.lochnagar_group** %6, align 8
  %61 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %4, align 4
  br label %125

66:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %121, %66
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.lochnagar_group*, %struct.lochnagar_group** %6, align 8
  %70 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %124

73:                                               ; preds = %67
  %74 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %75 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load %struct.lochnagar_group*, %struct.lochnagar_group** %6, align 8
  %78 = getelementptr inbounds %struct.lochnagar_group, %struct.lochnagar_group* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %85, align 8
  store %struct.lochnagar_pin* %86, %struct.lochnagar_pin** %10, align 8
  %87 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %10, align 8
  %88 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @LN_PTYPE_MUX, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  br label %121

93:                                               ; preds = %73
  %94 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %95 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %10, align 8
  %98 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load %struct.regmap*, %struct.regmap** %8, align 8
  %102 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %10, align 8
  %103 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @LOCHNAGAR2_GPIO_SRC_MASK, align 4
  %106 = load i32, i32* @LN2_OP_AIF, align 4
  %107 = call i32 @regmap_update_bits(%struct.regmap* %101, i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %93
  %111 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %112 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %10, align 8
  %115 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %4, align 4
  br label %125

120:                                              ; preds = %93
  br label %121

121:                                              ; preds = %120, %92
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %67

124:                                              ; preds = %67
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %110, %56, %32
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
