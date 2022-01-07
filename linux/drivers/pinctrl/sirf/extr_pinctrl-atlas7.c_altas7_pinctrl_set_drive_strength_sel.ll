; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_altas7_pinctrl_set_drive_strength_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_altas7_pinctrl_set_drive_strength_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.atlas7_pmx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.atlas7_pad_config* }
%struct.atlas7_pad_config = type { i64 }

@DS_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Pad#%d type[%d] doesn't support ds current[%d]!\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"PIN_CFG ### SET PIN#%d DS:%d MA:%d == %s ####\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i64, i64)* @altas7_pinctrl_set_drive_strength_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altas7_pinctrl_set_drive_strength_sel(%struct.pinctrl_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.atlas7_pmx*, align 8
  %9 = alloca %struct.atlas7_pad_config*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.atlas7_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.atlas7_pmx* %14, %struct.atlas7_pmx** %8, align 8
  %15 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %8, align 8
  %16 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %19, i64 %20
  store %struct.atlas7_pad_config* %21, %struct.atlas7_pad_config** %9, align 8
  %22 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %9, align 8
  %23 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %9, align 8
  %26 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @convert_current_to_drive_strength(i64 %27, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* @DS_NULL, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35, i64 %36)
  %38 = load i32, i32* @ENOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %54

40:                                               ; preds = %3
  %41 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @__altas7_pinctrl_set_drive_strength_sel(%struct.pinctrl_dev* %41, i64 %42, i64 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %45, i64 %46, i64 %47, i8* %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %40, %33
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.atlas7_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i64 @convert_current_to_drive_strength(i64, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i64, i64) #1

declare dso_local i32 @__altas7_pinctrl_set_drive_strength_sel(%struct.pinctrl_dev*, i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
