; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_devm_pinctrl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_devm_pinctrl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device = type { i32 }
%struct.pinctrl_desc = type { i32 }

@devm_pinctrl_dev_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pinctrl_dev* @devm_pinctrl_register(%struct.device* %0, %struct.pinctrl_desc* %1, i8* %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.pinctrl_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pinctrl_dev**, align 8
  %9 = alloca %struct.pinctrl_dev*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.pinctrl_desc* %1, %struct.pinctrl_desc** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @devm_pinctrl_dev_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pinctrl_dev** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.pinctrl_dev** %12, %struct.pinctrl_dev*** %8, align 8
  %13 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %8, align 8
  %14 = icmp ne %struct.pinctrl_dev** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.pinctrl_dev* @ERR_PTR(i32 %17)
  store %struct.pinctrl_dev* %18, %struct.pinctrl_dev** %4, align 8
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call %struct.pinctrl_dev* @pinctrl_register(%struct.pinctrl_desc* %20, %struct.device* %21, i8* %22)
  store %struct.pinctrl_dev* %23, %struct.pinctrl_dev** %9, align 8
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %9, align 8
  %25 = call i64 @IS_ERR(%struct.pinctrl_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %8, align 8
  %29 = call i32 @devres_free(%struct.pinctrl_dev** %28)
  %30 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %9, align 8
  store %struct.pinctrl_dev* %30, %struct.pinctrl_dev** %4, align 8
  br label %38

31:                                               ; preds = %19
  %32 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %9, align 8
  %33 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %8, align 8
  store %struct.pinctrl_dev* %32, %struct.pinctrl_dev** %33, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %8, align 8
  %36 = call i32 @devres_add(%struct.device* %34, %struct.pinctrl_dev** %35)
  %37 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %9, align 8
  store %struct.pinctrl_dev* %37, %struct.pinctrl_dev** %4, align 8
  br label %38

38:                                               ; preds = %31, %27, %15
  %39 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  ret %struct.pinctrl_dev* %39
}

declare dso_local %struct.pinctrl_dev** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.pinctrl_dev* @ERR_PTR(i32) #1

declare dso_local %struct.pinctrl_dev* @pinctrl_register(%struct.pinctrl_desc*, %struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_dev*) #1

declare dso_local i32 @devres_free(%struct.pinctrl_dev**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.pinctrl_dev**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
