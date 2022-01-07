; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_register_psy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_register_psy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8727_chg = type { i32, %struct.lp8727_psy* }
%struct.lp8727_psy = type { i8*, i8*, i8* }
%struct.power_supply_config = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@battery_supplied_to = common dso_local global i32 0, align 4
@lp8727_ac_desc = common dso_local global i32 0, align 4
@lp8727_usb_desc = common dso_local global i32 0, align 4
@lp8727_batt_desc = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8727_chg*)* @lp8727_register_psy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8727_register_psy(%struct.lp8727_chg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp8727_chg*, align 8
  %4 = alloca %struct.power_supply_config, align 4
  %5 = alloca %struct.lp8727_psy*, align 8
  store %struct.lp8727_chg* %0, %struct.lp8727_chg** %3, align 8
  %6 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %8 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lp8727_psy* @devm_kzalloc(i32 %9, i32 24, i32 %10)
  store %struct.lp8727_psy* %11, %struct.lp8727_psy** %5, align 8
  %12 = load %struct.lp8727_psy*, %struct.lp8727_psy** %5, align 8
  %13 = icmp ne %struct.lp8727_psy* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %78

17:                                               ; preds = %1
  %18 = load %struct.lp8727_psy*, %struct.lp8727_psy** %5, align 8
  %19 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %20 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %19, i32 0, i32 1
  store %struct.lp8727_psy* %18, %struct.lp8727_psy** %20, align 8
  %21 = load i32, i32* @battery_supplied_to, align 4
  %22 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @battery_supplied_to, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %27 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @power_supply_register(i32 %28, i32* @lp8727_ac_desc, %struct.power_supply_config* %4)
  %30 = load %struct.lp8727_psy*, %struct.lp8727_psy** %5, align 8
  %31 = getelementptr inbounds %struct.lp8727_psy, %struct.lp8727_psy* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.lp8727_psy*, %struct.lp8727_psy** %5, align 8
  %33 = getelementptr inbounds %struct.lp8727_psy, %struct.lp8727_psy* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %17
  br label %75

38:                                               ; preds = %17
  %39 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %40 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @power_supply_register(i32 %41, i32* @lp8727_usb_desc, %struct.power_supply_config* %4)
  %43 = load %struct.lp8727_psy*, %struct.lp8727_psy** %5, align 8
  %44 = getelementptr inbounds %struct.lp8727_psy, %struct.lp8727_psy* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.lp8727_psy*, %struct.lp8727_psy** %5, align 8
  %46 = getelementptr inbounds %struct.lp8727_psy, %struct.lp8727_psy* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %70

51:                                               ; preds = %38
  %52 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %53 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @power_supply_register(i32 %54, i32* @lp8727_batt_desc, %struct.power_supply_config* null)
  %56 = load %struct.lp8727_psy*, %struct.lp8727_psy** %5, align 8
  %57 = getelementptr inbounds %struct.lp8727_psy, %struct.lp8727_psy* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.lp8727_psy*, %struct.lp8727_psy** %5, align 8
  %59 = getelementptr inbounds %struct.lp8727_psy, %struct.lp8727_psy* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %65

64:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %78

65:                                               ; preds = %63
  %66 = load %struct.lp8727_psy*, %struct.lp8727_psy** %5, align 8
  %67 = getelementptr inbounds %struct.lp8727_psy, %struct.lp8727_psy* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @power_supply_unregister(i8* %68)
  br label %70

70:                                               ; preds = %65, %50
  %71 = load %struct.lp8727_psy*, %struct.lp8727_psy** %5, align 8
  %72 = getelementptr inbounds %struct.lp8727_psy, %struct.lp8727_psy* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @power_supply_unregister(i8* %73)
  br label %75

75:                                               ; preds = %70, %37
  %76 = load i32, i32* @EPERM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %64, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.lp8727_psy* @devm_kzalloc(i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i8* @power_supply_register(i32, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @power_supply_unregister(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
