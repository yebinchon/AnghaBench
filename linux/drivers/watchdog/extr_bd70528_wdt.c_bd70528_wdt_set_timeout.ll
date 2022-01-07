; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bd70528_wdt.c_bd70528_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bd70528_wdt.c_bd70528_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.wdtbd70528 = type { i32, i32, i32 }

@BD70528_REG_WDT_HOUR = common dso_local global i32 0, align 4
@BD70528_MASK_WDT_HOUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to set WDT hours\0A\00", align 1
@BD70528_REG_WDT_MINUTE = common dso_local global i32 0, align 4
@BD70528_MASK_WDT_MINUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to set WDT minutes\0A\00", align 1
@BD70528_REG_WDT_SEC = common dso_local global i32 0, align 4
@BD70528_MASK_WDT_SEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to set WDT seconds\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"WDT tmo set to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @bd70528_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wdtbd70528*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %11 = call %struct.wdtbd70528* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.wdtbd70528* %11, %struct.wdtbd70528** %9, align 8
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = udiv i32 %13, 3600
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = sub i32 %18, 3600
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %7, align 4
  %22 = udiv i32 %21, 60
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = urem i32 %23, 60
  store i32 %24, i32* %7, align 4
  %25 = load %struct.wdtbd70528*, %struct.wdtbd70528** %9, align 8
  %26 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bd70528_wdt_lock(i32 %27)
  %29 = load %struct.wdtbd70528*, %struct.wdtbd70528** %9, align 8
  %30 = call i32 @bd70528_wdt_set_locked(%struct.wdtbd70528* %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %91

34:                                               ; preds = %20
  %35 = load %struct.wdtbd70528*, %struct.wdtbd70528** %9, align 8
  %36 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BD70528_REG_WDT_HOUR, align 4
  %39 = load i32, i32* @BD70528_MASK_WDT_HOUR, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.wdtbd70528*, %struct.wdtbd70528** %9, align 8
  %46 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %88

49:                                               ; preds = %34
  %50 = load %struct.wdtbd70528*, %struct.wdtbd70528** %9, align 8
  %51 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BD70528_REG_WDT_MINUTE, align 4
  %54 = load i32, i32* @BD70528_MASK_WDT_MINUTE, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @bin2bcd(i32 %55)
  %57 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.wdtbd70528*, %struct.wdtbd70528** %9, align 8
  %62 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %88

65:                                               ; preds = %49
  %66 = load %struct.wdtbd70528*, %struct.wdtbd70528** %9, align 8
  %67 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BD70528_REG_WDT_SEC, align 4
  %70 = load i32, i32* @BD70528_MASK_WDT_SEC, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @bin2bcd(i32 %71)
  %73 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.wdtbd70528*, %struct.wdtbd70528** %9, align 8
  %78 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %87

81:                                               ; preds = %65
  %82 = load %struct.wdtbd70528*, %struct.wdtbd70528** %9, align 8
  %83 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %81, %76
  br label %88

88:                                               ; preds = %87, %60, %44
  %89 = load %struct.wdtbd70528*, %struct.wdtbd70528** %9, align 8
  %90 = call i32 @bd70528_wdt_set_locked(%struct.wdtbd70528* %89, i32 1)
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %33
  %92 = load %struct.wdtbd70528*, %struct.wdtbd70528** %9, align 8
  %93 = getelementptr inbounds %struct.wdtbd70528, %struct.wdtbd70528* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @bd70528_wdt_unlock(i32 %94)
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local %struct.wdtbd70528* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @bd70528_wdt_lock(i32) #1

declare dso_local i32 @bd70528_wdt_set_locked(%struct.wdtbd70528*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @bd70528_wdt_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
