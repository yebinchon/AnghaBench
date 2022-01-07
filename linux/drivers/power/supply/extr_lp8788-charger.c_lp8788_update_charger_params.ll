; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_update_charger_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_update_charger_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lp8788_charger = type { %struct.lp8788_charger_platform_data*, %struct.lp8788* }
%struct.lp8788_charger_platform_data = type { i32, %struct.lp8788_chg_param* }
%struct.lp8788_chg_param = type { i32, i32 }
%struct.lp8788 = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"skip updating charger parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.lp8788_charger*)* @lp8788_update_charger_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_update_charger_params(%struct.platform_device* %0, %struct.lp8788_charger* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.lp8788_charger*, align 8
  %6 = alloca %struct.lp8788*, align 8
  %7 = alloca %struct.lp8788_charger_platform_data*, align 8
  %8 = alloca %struct.lp8788_chg_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.lp8788_charger* %1, %struct.lp8788_charger** %5, align 8
  %11 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %12 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %11, i32 0, i32 1
  %13 = load %struct.lp8788*, %struct.lp8788** %12, align 8
  store %struct.lp8788* %13, %struct.lp8788** %6, align 8
  %14 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %15 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %14, i32 0, i32 0
  %16 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %15, align 8
  store %struct.lp8788_charger_platform_data* %16, %struct.lp8788_charger_platform_data** %7, align 8
  %17 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %7, align 8
  %18 = icmp ne %struct.lp8788_charger_platform_data* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %7, align 8
  %21 = getelementptr inbounds %struct.lp8788_charger_platform_data, %struct.lp8788_charger_platform_data* %20, i32 0, i32 1
  %22 = load %struct.lp8788_chg_param*, %struct.lp8788_chg_param** %21, align 8
  %23 = icmp ne %struct.lp8788_chg_param* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_info(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %66

28:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %62, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %7, align 8
  %32 = getelementptr inbounds %struct.lp8788_charger_platform_data, %struct.lp8788_charger_platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %7, align 8
  %37 = getelementptr inbounds %struct.lp8788_charger_platform_data, %struct.lp8788_charger_platform_data* %36, i32 0, i32 1
  %38 = load %struct.lp8788_chg_param*, %struct.lp8788_chg_param** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.lp8788_chg_param, %struct.lp8788_chg_param* %38, i64 %40
  store %struct.lp8788_chg_param* %41, %struct.lp8788_chg_param** %8, align 8
  %42 = load %struct.lp8788_chg_param*, %struct.lp8788_chg_param** %8, align 8
  %43 = getelementptr inbounds %struct.lp8788_chg_param, %struct.lp8788_chg_param* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @lp8788_is_valid_charger_register(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %35
  %48 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %49 = load %struct.lp8788_chg_param*, %struct.lp8788_chg_param** %8, align 8
  %50 = getelementptr inbounds %struct.lp8788_chg_param, %struct.lp8788_chg_param* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lp8788_chg_param*, %struct.lp8788_chg_param** %8, align 8
  %53 = getelementptr inbounds %struct.lp8788_chg_param, %struct.lp8788_chg_param* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @lp8788_write_byte(%struct.lp8788* %48, i32 %51, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %35
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %29

65:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %58, %24
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @lp8788_is_valid_charger_register(i32) #1

declare dso_local i32 @lp8788_write_byte(%struct.lp8788*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
