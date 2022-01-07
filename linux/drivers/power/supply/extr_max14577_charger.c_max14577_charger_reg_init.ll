; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_charger_reg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_charger_reg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_charger = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@CDETCTRL1_CHGDETEN_SHIFT = common dso_local global i32 0, align 4
@MAX14577_REG_CDETCTRL1 = common dso_local global i32 0, align 4
@CDETCTRL1_CHGDETEN_MASK = common dso_local global i32 0, align 4
@CDETCTRL1_CHGTYPMAN_MASK = common dso_local global i32 0, align 4
@CHGCTRL2_VCHGR_RC_SHIFT = common dso_local global i32 0, align 4
@CHGCTRL2_MBCHOSTEN_SHIFT = common dso_local global i32 0, align 4
@MAX14577_REG_CHGCTRL2 = common dso_local global i32 0, align 4
@CHGCTRL6_AUTOSTOP_SHIFT = common dso_local global i32 0, align 4
@MAX14577_REG_CHGCTRL6 = common dso_local global i32 0, align 4
@MAXIM_CHARGER_FAST_CHARGE_TIMER_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Wrong value for OVP: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHGCTRL7_OTPCGHCVS_SHIFT = common dso_local global i32 0, align 4
@MAX14577_REG_CHGCTRL7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_charger*)* @max14577_charger_reg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_charger_reg_init(%struct.max14577_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max14577_charger*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max14577_charger* %0, %struct.max14577_charger** %3, align 8
  %7 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %8 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %4, align 8
  %12 = load i32, i32* @CDETCTRL1_CHGDETEN_SHIFT, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.regmap*, %struct.regmap** %4, align 8
  %15 = load i32, i32* @MAX14577_REG_CDETCTRL1, align 4
  %16 = load i32, i32* @CDETCTRL1_CHGDETEN_MASK, align 4
  %17 = load i32, i32* @CDETCTRL1_CHGTYPMAN_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @max14577_update_reg(%struct.regmap* %14, i32 %15, i32 %18, i32 %19)
  %21 = load i32, i32* @CHGCTRL2_VCHGR_RC_SHIFT, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @CHGCTRL2_MBCHOSTEN_SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.regmap*, %struct.regmap** %4, align 8
  %28 = load i32, i32* @MAX14577_REG_CHGCTRL2, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @max14577_write_reg(%struct.regmap* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @CHGCTRL6_AUTOSTOP_SHIFT, align 4
  %32 = shl i32 0, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.regmap*, %struct.regmap** %4, align 8
  %34 = load i32, i32* @MAX14577_REG_CHGCTRL6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @max14577_write_reg(%struct.regmap* %33, i32 %34, i32 %35)
  %37 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %38 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %39 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @max14577_init_constant_voltage(%struct.max14577_charger* %37, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %1
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %116

48:                                               ; preds = %1
  %49 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %50 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %51 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @max14577_init_eoc(%struct.max14577_charger* %49, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %116

60:                                               ; preds = %48
  %61 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %62 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %63 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @max14577_init_fast_charge(%struct.max14577_charger* %61, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %116

72:                                               ; preds = %60
  %73 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %74 = load i32, i32* @MAXIM_CHARGER_FAST_CHARGE_TIMER_DEFAULT, align 4
  %75 = call i32 @max14577_set_fast_charge_timer(%struct.max14577_charger* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %116

80:                                               ; preds = %72
  %81 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %82 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %96 [
    i32 7500000, label %86
    i32 6000000, label %87
    i32 6500000, label %87
    i32 7000000, label %87
  ]

86:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %108

87:                                               ; preds = %80, %80, %80
  %88 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %89 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 6000000
  %94 = sdiv i32 %93, 500000
  %95 = add nsw i32 1, %94
  store i32 %95, i32* %5, align 4
  br label %108

96:                                               ; preds = %80
  %97 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %98 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.max14577_charger*, %struct.max14577_charger** %3, align 8
  %101 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %116

108:                                              ; preds = %87, %86
  %109 = load i32, i32* @CHGCTRL7_OTPCGHCVS_SHIFT, align 4
  %110 = load i32, i32* %5, align 4
  %111 = shl i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load %struct.regmap*, %struct.regmap** %4, align 8
  %113 = load i32, i32* @MAX14577_REG_CHGCTRL7, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @max14577_write_reg(%struct.regmap* %112, i32 %113, i32 %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %108, %96, %78, %70, %58, %46
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @max14577_update_reg(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @max14577_write_reg(%struct.regmap*, i32, i32) #1

declare dso_local i32 @max14577_init_constant_voltage(%struct.max14577_charger*, i32) #1

declare dso_local i32 @max14577_init_eoc(%struct.max14577_charger*, i32) #1

declare dso_local i32 @max14577_init_fast_charge(%struct.max14577_charger*, i32) #1

declare dso_local i32 @max14577_set_fast_charge_timer(%struct.max14577_charger*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
