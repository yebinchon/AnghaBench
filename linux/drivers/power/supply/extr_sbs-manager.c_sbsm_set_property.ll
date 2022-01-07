; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.sbsm_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_FAST = common dso_local global i32 0, align 4
@SBSM_BIT_TURBO = common dso_local global i32 0, align 4
@SBSM_CMD_LTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @sbsm_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbsm_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.sbsm_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %11 = call %struct.sbsm_data* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.sbsm_data* %11, %struct.sbsm_data** %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %38 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %17 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %39

21:                                               ; preds = %15
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %23 = bitcast %union.power_supply_propval* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_FAST, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @SBSM_BIT_TURBO, align 4
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  store i32 %31, i32* %9, align 4
  %32 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %33 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SBSM_CMD_LTC, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @sbsm_write_word(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %39

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38, %30, %20
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.sbsm_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @sbsm_write_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
