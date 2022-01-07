; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_thermal.c_rcar_thermal_update_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_thermal.c_rcar_thermal_update_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_thermal_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THSCR = common dso_local global i32 0, align 4
@CPCTL = common dso_local global i32 0, align 4
@THSSR = common dso_local global i32 0, align 4
@CTEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"thermal sensor was broken\0A\00", align 1
@FILONOFF = common dso_local global i32 0, align 4
@POSNEG = common dso_local global i32 0, align 4
@INTCTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"thermal%d  %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_thermal_priv*)* @rcar_thermal_update_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_thermal_update_temp(%struct.rcar_thermal_priv* %0) #0 {
  %2 = alloca %struct.rcar_thermal_priv*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rcar_thermal_priv* %0, %struct.rcar_thermal_priv** %2, align 8
  %9 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %10 = call %struct.device* @rcar_priv_to_dev(%struct.rcar_thermal_priv* %9)
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %14 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %17 = load i32, i32* @THSCR, align 4
  %18 = load i32, i32* @CPCTL, align 4
  %19 = load i32, i32* @CPCTL, align 4
  %20 = call i32 @rcar_thermal_bset(%struct.rcar_thermal_priv* %16, i32 %17, i32 %18, i32 %19)
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %38, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 128
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = call i32 @udelay(i32 300)
  %26 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %27 = load i32, i32* @THSSR, align 4
  %28 = call i32 @rcar_thermal_read(%struct.rcar_thermal_priv* %26, i32 %27)
  %29 = load i32, i32* @CTEMP, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %5, align 4
  br label %41

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %21

41:                                               ; preds = %34, %21
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %89

47:                                               ; preds = %41
  %48 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %49 = call i64 @rcar_has_irq_support(%struct.rcar_thermal_priv* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  %52 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %53 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %60 = load i32, i32* @FILONOFF, align 4
  %61 = call i32 @rcar_thermal_write(%struct.rcar_thermal_priv* %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %64 = load i32, i32* @POSNEG, align 4
  %65 = call i32 @rcar_thermal_write(%struct.rcar_thermal_priv* %63, i32 %64, i32 1)
  %66 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %67 = load i32, i32* @INTCTRL, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, 0
  %70 = shl i32 %69, 8
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %71, 1
  %73 = shl i32 %72, 0
  %74 = or i32 %70, %73
  %75 = call i32 @rcar_thermal_write(%struct.rcar_thermal_priv* %66, i32 %67, i32 %74)
  br label %76

76:                                               ; preds = %62, %47
  %77 = load %struct.device*, %struct.device** %3, align 8
  %78 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %79 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %82 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @dev_dbg(%struct.device* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %88 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %76, %44
  %90 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %2, align 8
  %91 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local %struct.device* @rcar_priv_to_dev(%struct.rcar_thermal_priv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcar_thermal_bset(%struct.rcar_thermal_priv*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rcar_thermal_read(%struct.rcar_thermal_priv*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @rcar_has_irq_support(%struct.rcar_thermal_priv*) #1

declare dso_local i32 @rcar_thermal_write(%struct.rcar_thermal_priv*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
