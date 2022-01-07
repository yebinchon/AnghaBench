; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.aspeed_pinctrl_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.aspeed_pin_desc* }
%struct.aspeed_pin_desc = type { i32, %struct.aspeed_sig_expr*** }
%struct.aspeed_sig_expr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"No GPIO signal type found on pin %s (%d). Found: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aspeed_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aspeed_pinctrl_data*, align 8
  %10 = alloca %struct.aspeed_pin_desc*, align 8
  %11 = alloca %struct.aspeed_sig_expr***, align 8
  %12 = alloca %struct.aspeed_sig_expr**, align 8
  %13 = alloca %struct.aspeed_sig_expr*, align 8
  %14 = alloca i8*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = call %struct.aspeed_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.aspeed_pinctrl_data* %16, %struct.aspeed_pinctrl_data** %9, align 8
  %17 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %9, align 8
  %18 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %23, align 8
  store %struct.aspeed_pin_desc* %24, %struct.aspeed_pin_desc** %10, align 8
  %25 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %10, align 8
  %26 = icmp ne %struct.aspeed_pin_desc* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %88

30:                                               ; preds = %3
  %31 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %10, align 8
  %32 = getelementptr inbounds %struct.aspeed_pin_desc, %struct.aspeed_pin_desc* %31, i32 0, i32 1
  %33 = load %struct.aspeed_sig_expr***, %struct.aspeed_sig_expr**** %32, align 8
  store %struct.aspeed_sig_expr*** %33, %struct.aspeed_sig_expr**** %11, align 8
  %34 = load %struct.aspeed_sig_expr***, %struct.aspeed_sig_expr**** %11, align 8
  %35 = icmp ne %struct.aspeed_sig_expr*** %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %88

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %58, %39
  %41 = load %struct.aspeed_sig_expr***, %struct.aspeed_sig_expr**** %11, align 8
  %42 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %41, align 8
  store %struct.aspeed_sig_expr** %42, %struct.aspeed_sig_expr*** %12, align 8
  %43 = icmp ne %struct.aspeed_sig_expr** %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %12, align 8
  %46 = call i64 @aspeed_gpio_in_exprs(%struct.aspeed_sig_expr** %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %61

49:                                               ; preds = %44
  %50 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %9, align 8
  %51 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %50, i32 0, i32 0
  %52 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %12, align 8
  %53 = call i32 @aspeed_disable_sig(i32* %51, %struct.aspeed_sig_expr** %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %88

58:                                               ; preds = %49
  %59 = load %struct.aspeed_sig_expr***, %struct.aspeed_sig_expr**** %11, align 8
  %60 = getelementptr inbounds %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %59, i32 1
  store %struct.aspeed_sig_expr*** %60, %struct.aspeed_sig_expr**** %11, align 8
  br label %40

61:                                               ; preds = %48, %40
  %62 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %12, align 8
  %63 = icmp ne %struct.aspeed_sig_expr** %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %61
  %65 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %10, align 8
  %66 = call i8* @get_defined_signals(%struct.aspeed_pin_desc* %65)
  store i8* %66, i8** %14, align 8
  %67 = load %struct.aspeed_pin_desc*, %struct.aspeed_pin_desc** %10, align 8
  %68 = getelementptr inbounds %struct.aspeed_pin_desc, %struct.aspeed_pin_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i8* %71)
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @kfree(i8* %73)
  %75 = load i32, i32* @ENXIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %88

77:                                               ; preds = %61
  %78 = load %struct.aspeed_sig_expr**, %struct.aspeed_sig_expr*** %12, align 8
  %79 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %78, align 8
  store %struct.aspeed_sig_expr* %79, %struct.aspeed_sig_expr** %13, align 8
  %80 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %13, align 8
  %81 = icmp ne %struct.aspeed_sig_expr* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %88

83:                                               ; preds = %77
  %84 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %9, align 8
  %85 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %84, i32 0, i32 0
  %86 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %13, align 8
  %87 = call i32 @aspeed_sig_expr_enable(i32* %85, %struct.aspeed_sig_expr* %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %82, %64, %56, %36, %27
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.aspeed_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i64 @aspeed_gpio_in_exprs(%struct.aspeed_sig_expr**) #1

declare dso_local i32 @aspeed_disable_sig(i32*, %struct.aspeed_sig_expr**) #1

declare dso_local i8* @get_defined_signals(%struct.aspeed_pin_desc*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @aspeed_sig_expr_enable(i32*, %struct.aspeed_sig_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
