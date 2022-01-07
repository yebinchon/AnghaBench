; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_parse_gpiochip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_parse_gpiochip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32, i64, i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rza1_pinctrl = type { i32, i32, i32* }
%struct.pinctrl_gpio_range = type { i32, %struct.gpio_chip*, i32, i32, i32, i64 }
%struct.of_phandle_args = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to parse %s list property\0A\00", align 1
@RZA1_NPORTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid values in property %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rza1_gpiochip_template = common dso_local global %struct.gpio_chip zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%pOFn\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Parsed gpiochip %s with %d pins\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rza1_pinctrl*, %struct.device_node*, %struct.gpio_chip*, %struct.pinctrl_gpio_range*)* @rza1_parse_gpiochip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_parse_gpiochip(%struct.rza1_pinctrl* %0, %struct.device_node* %1, %struct.gpio_chip* %2, %struct.pinctrl_gpio_range* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rza1_pinctrl*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  %9 = alloca %struct.pinctrl_gpio_range*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.of_phandle_args, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rza1_pinctrl* %0, %struct.rza1_pinctrl** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.gpio_chip* %2, %struct.gpio_chip** %8, align 8
  store %struct.pinctrl_gpio_range* %3, %struct.pinctrl_gpio_range** %9, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %15 = load %struct.device_node*, %struct.device_node** %7, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %15, i8* %16, i32 3, i32 0, %struct.of_phandle_args* %11)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %22 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %133

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @RZA1_PIN_ID_TO_PORT(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @RZA1_NPORTS, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %39 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %133

45:                                               ; preds = %27
  %46 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %47 = bitcast %struct.gpio_chip* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 bitcast (%struct.gpio_chip* @rza1_gpiochip_template to i8*), i64 32, i1 false)
  %48 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %49 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  %50 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %51 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = load %struct.device_node*, %struct.device_node** %7, align 8
  %55 = call i64 @devm_kasprintf(i32 %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %54)
  %56 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %57 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %59 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %45
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %133

65:                                               ; preds = %45
  %66 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %71 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.device_node*, %struct.device_node** %7, align 8
  %73 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %74 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %73, i32 0, i32 4
  store %struct.device_node* %72, %struct.device_node** %74, align 8
  %75 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %76 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %79 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %82 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %84 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %87 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %86, i32 0, i32 5
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %90 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %92 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %91, i32 0, i32 4
  store i32 %88, i32* %92, align 8
  %93 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %98 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %100 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %101 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %100, i32 0, i32 1
  store %struct.gpio_chip* %99, %struct.gpio_chip** %101, align 8
  %102 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %103 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %106 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %107 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = call i32 @devm_gpiochip_add_data(i32 %104, %struct.gpio_chip* %105, i32* %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %65
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %5, align 4
  br label %133

117:                                              ; preds = %65
  %118 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %119 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %9, align 8
  %122 = call i32 @pinctrl_add_gpio_range(i32 %120, %struct.pinctrl_gpio_range* %121)
  %123 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %6, align 8
  %124 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %127 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %130 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_info(i32 %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %128, i32 %131)
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %117, %115, %62, %37, %20
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @RZA1_PIN_ID_TO_PORT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @devm_kasprintf(i32, i32, i8*, %struct.device_node*) #1

declare dso_local i32 @devm_gpiochip_add_data(i32, %struct.gpio_chip*, i32*) #1

declare dso_local i32 @pinctrl_add_gpio_range(i32, %struct.pinctrl_gpio_range*) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
