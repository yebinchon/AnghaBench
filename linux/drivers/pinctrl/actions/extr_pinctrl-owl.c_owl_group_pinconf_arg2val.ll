; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_group_pinconf_arg2val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_group_pinconf_arg2val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_pingroup = type { i32 }

@OWL_PINCONF_DRV_2MA = common dso_local global i32 0, align 4
@OWL_PINCONF_DRV_4MA = common dso_local global i32 0, align 4
@OWL_PINCONF_DRV_8MA = common dso_local global i32 0, align 4
@OWL_PINCONF_DRV_12MA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OWL_PINCONF_SLEW_FAST = common dso_local global i32 0, align 4
@OWL_PINCONF_SLEW_SLOW = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.owl_pingroup*, i32, i32*)* @owl_group_pinconf_arg2val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_group_pinconf_arg2val(%struct.owl_pingroup* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.owl_pingroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.owl_pingroup* %0, %struct.owl_pingroup** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %39 [
    i32 129, label %9
    i32 128, label %28
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %24 [
    i32 2, label %12
    i32 4, label %15
    i32 8, label %18
    i32 12, label %21
  ]

12:                                               ; preds = %9
  %13 = load i32, i32* @OWL_PINCONF_DRV_2MA, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  br label %27

15:                                               ; preds = %9
  %16 = load i32, i32* @OWL_PINCONF_DRV_4MA, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  br label %27

18:                                               ; preds = %9
  %19 = load i32, i32* @OWL_PINCONF_DRV_8MA, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %27

21:                                               ; preds = %9
  %22 = load i32, i32* @OWL_PINCONF_DRV_12MA, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %27

24:                                               ; preds = %9
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %43

27:                                               ; preds = %21, %18, %15, %12
  br label %42

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @OWL_PINCONF_SLEW_FAST, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @OWL_PINCONF_SLEW_SLOW, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @ENOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %38, %27
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
