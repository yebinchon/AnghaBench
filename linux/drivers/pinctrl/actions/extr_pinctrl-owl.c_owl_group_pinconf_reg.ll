; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_group_pinconf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_group_pinconf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_pingroup = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.owl_pingroup*, i32, i32*, i32*, i32*)* @owl_group_pinconf_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_group_pinconf_reg(%struct.owl_pingroup* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.owl_pingroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.owl_pingroup* %0, %struct.owl_pingroup** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %55 [
    i32 129, label %13
    i32 128, label %34
  ]

13:                                               ; preds = %5
  %14 = load %struct.owl_pingroup*, %struct.owl_pingroup** %7, align 8
  %15 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %59

21:                                               ; preds = %13
  %22 = load %struct.owl_pingroup*, %struct.owl_pingroup** %7, align 8
  %23 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.owl_pingroup*, %struct.owl_pingroup** %7, align 8
  %27 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.owl_pingroup*, %struct.owl_pingroup** %7, align 8
  %31 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %11, align 8
  store i32 %32, i32* %33, align 4
  br label %58

34:                                               ; preds = %5
  %35 = load %struct.owl_pingroup*, %struct.owl_pingroup** %7, align 8
  %36 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %59

42:                                               ; preds = %34
  %43 = load %struct.owl_pingroup*, %struct.owl_pingroup** %7, align 8
  %44 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.owl_pingroup*, %struct.owl_pingroup** %7, align 8
  %48 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.owl_pingroup*, %struct.owl_pingroup** %7, align 8
  %52 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %58

55:                                               ; preds = %5
  %56 = load i32, i32* @ENOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %59

58:                                               ; preds = %42, %21
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %55, %39, %18
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
