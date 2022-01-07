; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_add_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_add_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcs_device = type { i32, i32 }
%struct.pcs_function = type { i32, %struct.pcs_func_vals* }
%struct.pcs_func_vals = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcs_device*, %struct.pcs_function**, i8*, %struct.pcs_func_vals*, i32, i8**, i32)* @pcs_add_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcs_add_function(%struct.pcs_device* %0, %struct.pcs_function** %1, i8* %2, %struct.pcs_func_vals* %3, i32 %4, i8** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcs_device*, align 8
  %10 = alloca %struct.pcs_function**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pcs_func_vals*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.pcs_function*, align 8
  %17 = alloca i32, align 4
  store %struct.pcs_device* %0, %struct.pcs_device** %9, align 8
  store %struct.pcs_function** %1, %struct.pcs_function*** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.pcs_func_vals* %3, %struct.pcs_func_vals** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.pcs_device*, %struct.pcs_device** %9, align 8
  %19 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.pcs_function* @devm_kzalloc(i32 %20, i32 16, i32 %21)
  store %struct.pcs_function* %22, %struct.pcs_function** %16, align 8
  %23 = load %struct.pcs_function*, %struct.pcs_function** %16, align 8
  %24 = icmp ne %struct.pcs_function* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %57

28:                                               ; preds = %7
  %29 = load %struct.pcs_func_vals*, %struct.pcs_func_vals** %12, align 8
  %30 = load %struct.pcs_function*, %struct.pcs_function** %16, align 8
  %31 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %30, i32 0, i32 1
  store %struct.pcs_func_vals* %29, %struct.pcs_func_vals** %31, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.pcs_function*, %struct.pcs_function** %16, align 8
  %34 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.pcs_device*, %struct.pcs_device** %9, align 8
  %36 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i8**, i8*** %14, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.pcs_function*, %struct.pcs_function** %16, align 8
  %42 = call i32 @pinmux_generic_add_function(i32 %37, i8* %38, i8** %39, i32 %40, %struct.pcs_function* %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %28
  %46 = load %struct.pcs_device*, %struct.pcs_device** %9, align 8
  %47 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pcs_function*, %struct.pcs_function** %16, align 8
  %50 = call i32 @devm_kfree(i32 %48, %struct.pcs_function* %49)
  %51 = load %struct.pcs_function**, %struct.pcs_function*** %10, align 8
  store %struct.pcs_function* null, %struct.pcs_function** %51, align 8
  br label %55

52:                                               ; preds = %28
  %53 = load %struct.pcs_function*, %struct.pcs_function** %16, align 8
  %54 = load %struct.pcs_function**, %struct.pcs_function*** %10, align 8
  store %struct.pcs_function* %53, %struct.pcs_function** %54, align 8
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %25
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.pcs_function* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @pinmux_generic_add_function(i32, i8*, i8**, i32, %struct.pcs_function*) #1

declare dso_local i32 @devm_kfree(i32, %struct.pcs_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
