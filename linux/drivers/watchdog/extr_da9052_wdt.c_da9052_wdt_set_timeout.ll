; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9052_wdt.c_da9052_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9052_wdt.c_da9052_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.watchdog_device = type { i32 }
%struct.da9052_wdt_data = type { i32, %struct.da9052* }
%struct.da9052 = type { i32 }

@DA9052_CONTROL_D_REG = common dso_local global i32 0, align 4
@DA9052_CONTROLD_TWDSCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to disable watchdog bit, %d\0A\00", align 1
@da9052_wdt_maps = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to update timescale bit, %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @da9052_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9052_wdt_data*, align 8
  %7 = alloca %struct.da9052*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %11 = call %struct.da9052_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.da9052_wdt_data* %11, %struct.da9052_wdt_data** %6, align 8
  %12 = load %struct.da9052_wdt_data*, %struct.da9052_wdt_data** %6, align 8
  %13 = getelementptr inbounds %struct.da9052_wdt_data, %struct.da9052_wdt_data* %12, i32 0, i32 1
  %14 = load %struct.da9052*, %struct.da9052** %13, align 8
  store %struct.da9052* %14, %struct.da9052** %7, align 8
  %15 = load %struct.da9052*, %struct.da9052** %7, align 8
  %16 = load i32, i32* @DA9052_CONTROL_D_REG, align 4
  %17 = load i32, i32* @DA9052_CONTROLD_TWDSCALE, align 4
  %18 = call i32 @da9052_reg_update(%struct.da9052* %15, i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.da9052*, %struct.da9052** %7, align 8
  %23 = getelementptr inbounds %struct.da9052, %struct.da9052* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %89

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %88

31:                                               ; preds = %28
  %32 = call i32 @udelay(i32 150)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %49, %31
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9052_wdt_maps, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9052_wdt_maps, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %33

52:                                               ; preds = %47, %33
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9052_wdt_maps, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %54)
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %71

60:                                               ; preds = %52
  %61 = load %struct.da9052*, %struct.da9052** %7, align 8
  %62 = load i32, i32* @DA9052_CONTROL_D_REG, align 4
  %63 = load i32, i32* @DA9052_CONTROLD_TWDSCALE, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9052_wdt_maps, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @da9052_reg_update(%struct.da9052* %61, i32 %62, i32 %63, i32 %69)
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %60, %57
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.da9052*, %struct.da9052** %7, align 8
  %76 = getelementptr inbounds %struct.da9052, %struct.da9052* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %89

81:                                               ; preds = %71
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %84 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @jiffies, align 4
  %86 = load %struct.da9052_wdt_data*, %struct.da9052_wdt_data** %6, align 8
  %87 = getelementptr inbounds %struct.da9052_wdt_data, %struct.da9052_wdt_data* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %28
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %74, %21
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.da9052_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @da9052_reg_update(%struct.da9052*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
