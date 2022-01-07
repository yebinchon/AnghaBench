; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pmx_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pmx_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sunxi_pinctrl = type { i32, %struct.sunxi_pinctrl_regulator*, %struct.TYPE_2__* }
%struct.sunxi_pinctrl_regulator = type { %struct.regulator*, i32 }
%struct.regulator = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PINS_PER_BANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vcc-p%c\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't get bank P%c regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Couldn't enable bank P%c regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32)* @sunxi_pmx_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pmx_request(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sunxi_pinctrl*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca %struct.sunxi_pinctrl_regulator*, align 8
  %10 = alloca %struct.regulator*, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %14 = call %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.sunxi_pinctrl* %14, %struct.sunxi_pinctrl** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PINS_PER_BANK, align 4
  %17 = udiv i32 %15, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = load i16, i16* %7, align 2
  %20 = zext i16 %19 to i32
  %21 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %22 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PINS_PER_BANK, align 4
  %27 = udiv i32 %25, %26
  %28 = sub i32 %20, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %8, align 2
  %30 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %31 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %30, i32 0, i32 1
  %32 = load %struct.sunxi_pinctrl_regulator*, %struct.sunxi_pinctrl_regulator** %31, align 8
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds %struct.sunxi_pinctrl_regulator, %struct.sunxi_pinctrl_regulator* %32, i64 %34
  store %struct.sunxi_pinctrl_regulator* %35, %struct.sunxi_pinctrl_regulator** %9, align 8
  %36 = load %struct.sunxi_pinctrl_regulator*, %struct.sunxi_pinctrl_regulator** %9, align 8
  %37 = getelementptr inbounds %struct.sunxi_pinctrl_regulator, %struct.sunxi_pinctrl_regulator* %36, i32 0, i32 0
  %38 = load %struct.regulator*, %struct.regulator** %37, align 8
  store %struct.regulator* %38, %struct.regulator** %10, align 8
  %39 = load %struct.regulator*, %struct.regulator** %10, align 8
  %40 = icmp ne %struct.regulator* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.sunxi_pinctrl_regulator*, %struct.sunxi_pinctrl_regulator** %9, align 8
  %43 = getelementptr inbounds %struct.sunxi_pinctrl_regulator, %struct.sunxi_pinctrl_regulator* %42, i32 0, i32 1
  %44 = call i32 @refcount_inc(i32* %43)
  store i32 0, i32* %3, align 4
  br label %102

45:                                               ; preds = %2
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %47 = load i16, i16* %7, align 2
  %48 = zext i16 %47 to i32
  %49 = add nsw i32 97, %48
  %50 = trunc i32 %49 to i8
  %51 = call i32 @snprintf(i8* %46, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %50)
  %52 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %53 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %56 = call %struct.regulator* @regulator_get(i32 %54, i8* %55)
  store %struct.regulator* %56, %struct.regulator** %10, align 8
  %57 = load %struct.regulator*, %struct.regulator** %10, align 8
  %58 = call i64 @IS_ERR(%struct.regulator* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %45
  %61 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %62 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i16, i16* %7, align 2
  %65 = zext i16 %64 to i32
  %66 = add nsw i32 65, %65
  %67 = trunc i32 %66 to i8
  %68 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8 signext %67)
  %69 = load %struct.regulator*, %struct.regulator** %10, align 8
  %70 = call i32 @PTR_ERR(%struct.regulator* %69)
  store i32 %70, i32* %3, align 4
  br label %102

71:                                               ; preds = %45
  %72 = load %struct.regulator*, %struct.regulator** %10, align 8
  %73 = call i32 @regulator_enable(%struct.regulator* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %78 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i16, i16* %7, align 2
  %81 = zext i16 %80 to i32
  %82 = add nsw i32 65, %81
  %83 = trunc i32 %82 to i8
  %84 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8 signext %83)
  br label %96

85:                                               ; preds = %71
  %86 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.regulator*, %struct.regulator** %10, align 8
  %89 = call i32 @sunxi_pinctrl_set_io_bias_cfg(%struct.sunxi_pinctrl* %86, i32 %87, %struct.regulator* %88)
  %90 = load %struct.regulator*, %struct.regulator** %10, align 8
  %91 = load %struct.sunxi_pinctrl_regulator*, %struct.sunxi_pinctrl_regulator** %9, align 8
  %92 = getelementptr inbounds %struct.sunxi_pinctrl_regulator, %struct.sunxi_pinctrl_regulator* %91, i32 0, i32 0
  store %struct.regulator* %90, %struct.regulator** %92, align 8
  %93 = load %struct.sunxi_pinctrl_regulator*, %struct.sunxi_pinctrl_regulator** %9, align 8
  %94 = getelementptr inbounds %struct.sunxi_pinctrl_regulator, %struct.sunxi_pinctrl_regulator* %93, i32 0, i32 1
  %95 = call i32 @refcount_set(i32* %94, i32 1)
  store i32 0, i32* %3, align 4
  br label %102

96:                                               ; preds = %76
  %97 = load %struct.sunxi_pinctrl_regulator*, %struct.sunxi_pinctrl_regulator** %9, align 8
  %98 = getelementptr inbounds %struct.sunxi_pinctrl_regulator, %struct.sunxi_pinctrl_regulator* %97, i32 0, i32 0
  %99 = load %struct.regulator*, %struct.regulator** %98, align 8
  %100 = call i32 @regulator_put(%struct.regulator* %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %96, %85, %60, %41
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #1

declare dso_local %struct.regulator* @regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @dev_err(i32, i8*, i8 signext) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local i32 @sunxi_pinctrl_set_io_bias_cfg(%struct.sunxi_pinctrl*, i32, %struct.regulator*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @regulator_put(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
