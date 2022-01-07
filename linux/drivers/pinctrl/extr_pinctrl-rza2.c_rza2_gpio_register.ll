; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_gpio_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_gpio_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__*, %struct.device_node* }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rza2_pinctrl_priv = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__*, i32, i64, i64, i64 }
%struct.of_phandle_args = type { i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%pOFn\00", align 1
@chip = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to parse gpio-ranges\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"gpio-ranges does not match selected SOC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Registered gpio controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rza2_pinctrl_priv*)* @rza2_gpio_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza2_gpio_register(%struct.rza2_pinctrl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rza2_pinctrl_priv*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_phandle_args, align 8
  %6 = alloca i32, align 4
  store %struct.rza2_pinctrl_priv* %0, %struct.rza2_pinctrl_priv** %3, align 8
  %7 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call i32 @devm_kasprintf(%struct.TYPE_9__* %14, i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.device_node* %16)
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @chip, i32 0, i32 1), align 8
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %18, %struct.device_node** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @chip, i32 0, i32 3), align 8
  %19 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @chip, i32 0, i32 2), align 8
  %22 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @chip, i32 0, i32 0), align 8
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 3, i32 0, %struct.of_phandle_args* %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call i32 @dev_err(%struct.TYPE_9__* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %106

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %53 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %47, %41, %35
  %57 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %58 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = call i32 @dev_err(%struct.TYPE_9__* %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %106

63:                                               ; preds = %47
  %64 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %68 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %71 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %77 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @chip, i32 0, i32 1), align 8
  %80 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %81 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %84 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store %struct.TYPE_10__* @chip, %struct.TYPE_10__** %85, align 8
  %86 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %87 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %90 = call i32 @devm_gpiochip_add_data(%struct.TYPE_9__* %88, %struct.TYPE_10__* @chip, %struct.rza2_pinctrl_priv* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %63
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %106

95:                                               ; preds = %63
  %96 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %97 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %100 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %99, i32 0, i32 2
  %101 = call i32 @pinctrl_add_gpio_range(i32 %98, %struct.TYPE_8__* %100)
  %102 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %3, align 8
  %103 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = call i32 @dev_dbg(%struct.TYPE_9__* %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %95, %93, %56, %29
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @devm_kasprintf(%struct.TYPE_9__*, i32, i8*, %struct.device_node*) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.rza2_pinctrl_priv*) #1

declare dso_local i32 @pinctrl_add_gpio_range(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
