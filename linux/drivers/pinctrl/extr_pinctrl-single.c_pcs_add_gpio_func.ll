; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_add_gpio_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_add_gpio_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.pcs_device = type { i32, i32, i32 }
%struct.of_phandle_args = type { i32* }
%struct.pcs_gpiofunc_range = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"pinctrl-single,gpio-range\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"#pinctrl-single,gpio-range-cells\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.pcs_device*)* @pcs_add_gpio_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcs_add_gpio_func(%struct.device_node* %0, %struct.pcs_device* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.pcs_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.of_phandle_args, align 8
  %8 = alloca %struct.pcs_gpiofunc_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.pcs_device* %1, %struct.pcs_device** %4, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %61, %2
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @of_parse_phandle_with_args(%struct.device_node* %12, i8* %13, i8* %14, i32 %15, %struct.of_phandle_args* %7)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  br label %64

20:                                               ; preds = %11
  %21 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %22 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.pcs_gpiofunc_range* @devm_kzalloc(i32 %23, i32 16, i32 %24)
  store %struct.pcs_gpiofunc_range* %25, %struct.pcs_gpiofunc_range** %8, align 8
  %26 = load %struct.pcs_gpiofunc_range*, %struct.pcs_gpiofunc_range** %8, align 8
  %27 = icmp ne %struct.pcs_gpiofunc_range* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %64

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pcs_gpiofunc_range*, %struct.pcs_gpiofunc_range** %8, align 8
  %37 = getelementptr inbounds %struct.pcs_gpiofunc_range, %struct.pcs_gpiofunc_range* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pcs_gpiofunc_range*, %struct.pcs_gpiofunc_range** %8, align 8
  %43 = getelementptr inbounds %struct.pcs_gpiofunc_range, %struct.pcs_gpiofunc_range* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pcs_gpiofunc_range*, %struct.pcs_gpiofunc_range** %8, align 8
  %49 = getelementptr inbounds %struct.pcs_gpiofunc_range, %struct.pcs_gpiofunc_range* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %51 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.pcs_gpiofunc_range*, %struct.pcs_gpiofunc_range** %8, align 8
  %54 = getelementptr inbounds %struct.pcs_gpiofunc_range, %struct.pcs_gpiofunc_range* %53, i32 0, i32 0
  %55 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %56 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %55, i32 0, i32 1
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  %58 = load %struct.pcs_device*, %struct.pcs_device** %4, align 8
  %59 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %61

61:                                               ; preds = %31
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %11

64:                                               ; preds = %28, %19
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.pcs_gpiofunc_range* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
