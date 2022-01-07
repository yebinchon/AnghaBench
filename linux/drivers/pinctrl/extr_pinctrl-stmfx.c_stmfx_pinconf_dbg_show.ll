; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinconf_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinconf_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.stmfx_pinctrl = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"output %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"open drain %s internal pull-up \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"push pull no pull \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"input %s \00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"with internal pull-%s \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"floating\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @stmfx_pinconf_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmfx_pinconf_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmfx_pinctrl*, align 8
  %8 = alloca %struct.pinctrl_gpio_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %14 = call %struct.stmfx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.stmfx_pinctrl* %14, %struct.stmfx_pinctrl** %7, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin_nolock(%struct.pinctrl_dev* %15, i32 %16)
  store %struct.pinctrl_gpio_range* %17, %struct.pinctrl_gpio_range** %8, align 8
  %18 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %19 = icmp ne %struct.pinctrl_gpio_range* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %98

21:                                               ; preds = %3
  %22 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %7, align 8
  %23 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @stmfx_gpio_get_direction(i32* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %98

29:                                               ; preds = %21
  %30 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @stmfx_pinconf_get_type(%struct.stmfx_pinctrl* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %98

36:                                               ; preds = %29
  %37 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @stmfx_pinconf_get_pupd(%struct.stmfx_pinctrl* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %98

43:                                               ; preds = %36
  %44 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %7, align 8
  %45 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @stmfx_gpio_get(i32* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %98

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %51
  %55 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %69 = call i32 @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %73

70:                                               ; preds = %54
  %71 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %72 = call i32 @seq_puts(%struct.seq_file* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %63
  br label %98

74:                                               ; preds = %51
  %75 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %80 = call i32 @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %89 = call i32 @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %88)
  br label %97

90:                                               ; preds = %74
  %91 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)
  %96 = call i32 @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %90, %83
  br label %98

98:                                               ; preds = %20, %28, %35, %42, %50, %97, %73
  ret void
}

declare dso_local %struct.stmfx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin_nolock(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @stmfx_gpio_get_direction(i32*, i32) #1

declare dso_local i32 @stmfx_pinconf_get_type(%struct.stmfx_pinctrl*, i32) #1

declare dso_local i32 @stmfx_pinconf_get_pupd(%struct.stmfx_pinctrl*, i32) #1

declare dso_local i32 @stmfx_gpio_get(i32*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
