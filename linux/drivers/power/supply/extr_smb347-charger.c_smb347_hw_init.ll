; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb347_charger = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@CMD_A = common dso_local global i32 0, align 4
@CMD_A_SUSPEND_ENABLED = common dso_local global i32 0, align 4
@CFG_OTHER = common dso_local global i32 0, align 4
@CFG_OTHER_RID_MASK = common dso_local global i32 0, align 4
@CFG_OTHER_RID_ENABLED_AUTO_OTG = common dso_local global i32 0, align 4
@CFG_PIN_EN_CTRL_ACTIVE_LOW = common dso_local global i32 0, align 4
@CFG_PIN_EN_CTRL_ACTIVE_HIGH = common dso_local global i32 0, align 4
@CFG_PIN = common dso_local global i32 0, align 4
@CFG_PIN_EN_CTRL_MASK = common dso_local global i32 0, align 4
@CFG_PIN_EN_APSD_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb347_charger*)* @smb347_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_hw_init(%struct.smb347_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb347_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.smb347_charger* %0, %struct.smb347_charger** %3, align 8
  %6 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %7 = call i32 @smb347_set_writable(%struct.smb347_charger* %6, i32 1)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %121

12:                                               ; preds = %1
  %13 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %14 = call i32 @smb347_set_charge_current(%struct.smb347_charger* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %117

18:                                               ; preds = %12
  %19 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %20 = call i32 @smb347_set_current_limits(%struct.smb347_charger* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %117

24:                                               ; preds = %18
  %25 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %26 = call i32 @smb347_set_voltage_limits(%struct.smb347_charger* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %117

30:                                               ; preds = %24
  %31 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %32 = call i32 @smb347_set_temp_limits(%struct.smb347_charger* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %117

36:                                               ; preds = %30
  %37 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %38 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %36
  %44 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %45 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CMD_A, align 4
  %48 = load i32, i32* @CMD_A_SUSPEND_ENABLED, align 4
  %49 = load i32, i32* @CMD_A_SUSPEND_ENABLED, align 4
  %50 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %117

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %57 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CFG_OTHER, align 4
  %60 = load i32, i32* @CFG_OTHER_RID_MASK, align 4
  %61 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %62 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* @CFG_OTHER_RID_ENABLED_AUTO_OTG, align 4
  br label %70

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %60, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %117

76:                                               ; preds = %70
  %77 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %78 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %86 [
    i32 128, label %82
    i32 129, label %84
  ]

82:                                               ; preds = %76
  %83 = load i32, i32* @CFG_PIN_EN_CTRL_ACTIVE_LOW, align 4
  store i32 %83, i32* %4, align 4
  br label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @CFG_PIN_EN_CTRL_ACTIVE_HIGH, align 4
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %84, %82
  %88 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %89 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CFG_PIN, align 4
  %92 = load i32, i32* @CFG_PIN_EN_CTRL_MASK, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %117

98:                                               ; preds = %87
  %99 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %100 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CFG_PIN, align 4
  %103 = load i32, i32* @CFG_PIN_EN_APSD_IRQ, align 4
  %104 = call i32 @regmap_update_bits(i32 %101, i32 %102, i32 %103, i32 0)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %117

108:                                              ; preds = %98
  %109 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %110 = call i32 @smb347_update_ps_status(%struct.smb347_charger* %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %117

114:                                              ; preds = %108
  %115 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %116 = call i32 @smb347_start_stop_charging(%struct.smb347_charger* %115)
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %114, %113, %107, %97, %75, %53, %35, %29, %23, %17
  %118 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %119 = call i32 @smb347_set_writable(%struct.smb347_charger* %118, i32 0)
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %10
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @smb347_set_writable(%struct.smb347_charger*, i32) #1

declare dso_local i32 @smb347_set_charge_current(%struct.smb347_charger*) #1

declare dso_local i32 @smb347_set_current_limits(%struct.smb347_charger*) #1

declare dso_local i32 @smb347_set_voltage_limits(%struct.smb347_charger*) #1

declare dso_local i32 @smb347_set_temp_limits(%struct.smb347_charger*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @smb347_update_ps_status(%struct.smb347_charger*) #1

declare dso_local i32 @smb347_start_stop_charging(%struct.smb347_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
