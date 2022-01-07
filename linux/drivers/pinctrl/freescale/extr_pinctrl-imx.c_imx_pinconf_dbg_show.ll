; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.imx_pinctrl = type { i64, %struct.imx_pin_reg*, i32, %struct.imx_pinctrl_soc_info* }
%struct.imx_pin_reg = type { i32 }
%struct.imx_pinctrl_soc_info = type { i32 }

@IMX_USE_SCU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get %s pinconf\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @imx_pinconf_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_pinconf_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.imx_pinctrl*, align 8
  %8 = alloca %struct.imx_pinctrl_soc_info*, align 8
  %9 = alloca %struct.imx_pin_reg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %13 = call %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.imx_pinctrl* %13, %struct.imx_pinctrl** %7, align 8
  %14 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %7, align 8
  %15 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %14, i32 0, i32 3
  %16 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %15, align 8
  store %struct.imx_pinctrl_soc_info* %16, %struct.imx_pinctrl_soc_info** %8, align 8
  %17 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %8, align 8
  %18 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IMX_USE_SCU, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @imx_pinconf_get_scu(%struct.pinctrl_dev* %24, i32 %25, i64* %10)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %7, align 8
  %31 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @pin_get_name(%struct.pinctrl_dev* %33, i32 %34)
  %36 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %38 = call i32 @seq_puts(%struct.seq_file* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %68

39:                                               ; preds = %23
  br label %64

40:                                               ; preds = %3
  %41 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %7, align 8
  %42 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %41, i32 0, i32 1
  %43 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %43, i64 %45
  store %struct.imx_pin_reg* %46, %struct.imx_pin_reg** %9, align 8
  %47 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %9, align 8
  %48 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %53 = call i32 @seq_puts(%struct.seq_file* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %68

54:                                               ; preds = %40
  %55 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %7, align 8
  %56 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.imx_pin_reg*, %struct.imx_pin_reg** %9, align 8
  %59 = getelementptr inbounds %struct.imx_pin_reg, %struct.imx_pin_reg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %57, %61
  %63 = call i64 @readl(i64 %62)
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %54, %39
  %65 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %64, %51, %29
  ret void
}

declare dso_local %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @imx_pinconf_get_scu(%struct.pinctrl_dev*, i32, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pin_get_name(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
