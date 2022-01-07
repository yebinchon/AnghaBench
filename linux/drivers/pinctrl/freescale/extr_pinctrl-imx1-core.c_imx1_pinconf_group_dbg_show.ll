; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx1-core.c_imx1_pinconf_group_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx1-core.c_imx1_pinconf_group_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.imx1_pinctrl = type { %struct.imx1_pinctrl_soc_info* }
%struct.imx1_pinctrl_soc_info = type { i32, %struct.imx1_pin_group* }
%struct.imx1_pin_group = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s: 0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @imx1_pinconf_group_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx1_pinconf_group_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.imx1_pinctrl*, align 8
  %8 = alloca %struct.imx1_pinctrl_soc_info*, align 8
  %9 = alloca %struct.imx1_pin_group*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %15 = call %struct.imx1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.imx1_pinctrl* %15, %struct.imx1_pinctrl** %7, align 8
  %16 = load %struct.imx1_pinctrl*, %struct.imx1_pinctrl** %7, align 8
  %17 = getelementptr inbounds %struct.imx1_pinctrl, %struct.imx1_pinctrl* %16, i32 0, i32 0
  %18 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %17, align 8
  store %struct.imx1_pinctrl_soc_info* %18, %struct.imx1_pinctrl_soc_info** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %8, align 8
  %21 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %72

25:                                               ; preds = %3
  %26 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %27 = call i32 @seq_puts(%struct.seq_file* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %8, align 8
  %29 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %28, i32 0, i32 1
  %30 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %30, i64 %32
  store %struct.imx1_pin_group* %33, %struct.imx1_pin_group** %9, align 8
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %69, %25
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %9, align 8
  %37 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %42 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %9, align 8
  %43 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @pin_get_name(%struct.pinctrl_dev* %41, i32 %49)
  store i8* %50, i8** %11, align 8
  %51 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %52 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %9, align 8
  %53 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @imx1_pinconf_get(%struct.pinctrl_dev* %51, i32 %59, i64* %10)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  br label %72

64:                                               ; preds = %40
  %65 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %66, i64 %67)
  br label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %34

72:                                               ; preds = %24, %63, %34
  ret void
}

declare dso_local %struct.imx1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i8* @pin_get_name(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @imx1_pinconf_get(%struct.pinctrl_dev*, i32, i64*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
