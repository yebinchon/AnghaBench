; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-s900.c_s900_pad_pinconf_val2arg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-s900.c_s900_pad_pinconf_val2arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_padinfo = type { i32 }

@OWL_PINCONF_PULL_HOLD = common dso_local global i32 0, align 4
@OWL_PINCONF_PULL_HIZ = common dso_local global i32 0, align 4
@OWL_PINCONF_PULL_DOWN = common dso_local global i32 0, align 4
@OWL_PINCONF_PULL_UP = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.owl_padinfo*, i32, i32*)* @s900_pad_pinconf_val2arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s900_pad_pinconf_val2arg(%struct.owl_padinfo* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.owl_padinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.owl_padinfo* %0, %struct.owl_padinfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %43 [
    i32 132, label %9
    i32 131, label %16
    i32 130, label %23
    i32 129, label %30
    i32 128, label %37
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OWL_PINCONF_PULL_HOLD, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @OWL_PINCONF_PULL_HIZ, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  br label %46

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OWL_PINCONF_PULL_DOWN, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %46

30:                                               ; preds = %3
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OWL_PINCONF_PULL_UP, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %46

37:                                               ; preds = %3
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @ENOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %37, %30, %23, %16, %9
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
