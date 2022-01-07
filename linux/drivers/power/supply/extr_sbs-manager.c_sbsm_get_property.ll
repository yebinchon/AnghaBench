; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.sbsm_data = type { i32, i32 }

@SBSM_CMD_BATSYSSTATECONT = common dso_local global i32 0, align 4
@SBSM_BIT_AC_PRESENT = common dso_local global i32 0, align 4
@SBSM_CMD_BATSYSSTATE = common dso_local global i32 0, align 4
@SBSM_MASK_CHARGE_BAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_NONE = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_TRICKLE = common dso_local global i32 0, align 4
@SBSM_CMD_LTC = common dso_local global i32 0, align 4
@SBSM_BIT_TURBO = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_FAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @sbsm_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbsm_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.sbsm_data*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.sbsm_data* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.sbsm_data* %11, %struct.sbsm_data** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %82 [
    i32 128, label %13
    i32 129, label %33
  ]

13:                                               ; preds = %3
  %14 = load %struct.sbsm_data*, %struct.sbsm_data** %8, align 8
  %15 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SBSM_CMD_BATSYSSTATECONT, align 4
  %18 = call i32 @sbsm_read_word(i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %86

23:                                               ; preds = %13
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SBSM_BIT_AC_PRESENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  br label %85

33:                                               ; preds = %3
  %34 = load %struct.sbsm_data*, %struct.sbsm_data** %8, align 8
  %35 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SBSM_CMD_BATSYSSTATE, align 4
  %38 = call i32 @sbsm_read_word(i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %86

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @SBSM_MASK_CHARGE_BAT, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_NONE, align 4
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i32*
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %86

52:                                               ; preds = %43
  %53 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_TRICKLE, align 4
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sbsm_data*, %struct.sbsm_data** %8, align 8
  %57 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %52
  %61 = load %struct.sbsm_data*, %struct.sbsm_data** %8, align 8
  %62 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SBSM_CMD_LTC, align 4
  %65 = call i32 @sbsm_read_word(i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %86

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @SBSM_BIT_TURBO, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_FAST, align 4
  %77 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %78 = bitcast %union.power_supply_propval* %77 to i32*
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %70
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %52
  br label %85

82:                                               ; preds = %3
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %81, %23
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %82, %68, %48, %41, %21
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.sbsm_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @sbsm_read_word(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
