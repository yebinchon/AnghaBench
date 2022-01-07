; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pinctrl_mux_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pinctrl_mux_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_pinctrl = type { i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"atmel,mux-mask\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"can not read the mux-mask of %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@gpio_banks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"wrong mux mask array should be by %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_pinctrl*, %struct.device_node*)* @at91_pinctrl_mux_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_pinctrl_mux_mask(%struct.at91_pinctrl* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.at91_pinctrl*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.at91_pinctrl* %0, %struct.at91_pinctrl** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = call i32* @of_get_property(%struct.device_node* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %15 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %79

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @gpio_banks, align 4
  %31 = srem i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28, %21
  %34 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %35 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @gpio_banks, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %79

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @gpio_banks, align 4
  %44 = sdiv i32 %42, %43
  %45 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %46 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %48 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @devm_kcalloc(i32 %49, i32 %50, i32 4, i32 %51)
  %53 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %54 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %56 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %41
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %79

62:                                               ; preds = %41
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %65 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @of_property_read_u32_array(%struct.device_node* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %73 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %62
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %59, %33, %13
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
