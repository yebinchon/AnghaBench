; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_devm_pinctrl_register_and_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_devm_pinctrl_register_and_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pinctrl_desc = type { i32 }
%struct.pinctrl_dev = type { i32 }

@devm_pinctrl_dev_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_pinctrl_register_and_init(%struct.device* %0, %struct.pinctrl_desc* %1, i8* %2, %struct.pinctrl_dev** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.pinctrl_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pinctrl_dev**, align 8
  %10 = alloca %struct.pinctrl_dev**, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.pinctrl_desc* %1, %struct.pinctrl_desc** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.pinctrl_dev** %3, %struct.pinctrl_dev*** %9, align 8
  %12 = load i32, i32* @devm_pinctrl_dev_release, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pinctrl_dev** @devres_alloc(i32 %12, i32 8, i32 %13)
  store %struct.pinctrl_dev** %14, %struct.pinctrl_dev*** %10, align 8
  %15 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %10, align 8
  %16 = icmp ne %struct.pinctrl_dev** %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %39

20:                                               ; preds = %4
  %21 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %9, align 8
  %25 = call i32 @pinctrl_register_and_init(%struct.pinctrl_desc* %21, %struct.device* %22, i8* %23, %struct.pinctrl_dev** %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %10, align 8
  %30 = call i32 @devres_free(%struct.pinctrl_dev** %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %20
  %33 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %9, align 8
  %34 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %33, align 8
  %35 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %10, align 8
  store %struct.pinctrl_dev* %34, %struct.pinctrl_dev** %35, align 8
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %10, align 8
  %38 = call i32 @devres_add(%struct.device* %36, %struct.pinctrl_dev** %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %32, %28, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.pinctrl_dev** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @pinctrl_register_and_init(%struct.pinctrl_desc*, %struct.device*, i8*, %struct.pinctrl_dev**) #1

declare dso_local i32 @devres_free(%struct.pinctrl_dev**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.pinctrl_dev**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
