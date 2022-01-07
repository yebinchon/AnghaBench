; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_pad_pinconf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_pad_pinconf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_padinfo = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.owl_padinfo*, i32, i32*, i32*, i32*)* @owl_pad_pinconf_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_pad_pinconf_reg(%struct.owl_padinfo* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.owl_padinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.owl_padinfo* %0, %struct.owl_padinfo** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %67 [
    i32 132, label %13
    i32 131, label %13
    i32 130, label %13
    i32 129, label %13
    i32 128, label %40
  ]

13:                                               ; preds = %5, %5, %5, %5
  %14 = load %struct.owl_padinfo*, %struct.owl_padinfo** %7, align 8
  %15 = getelementptr inbounds %struct.owl_padinfo, %struct.owl_padinfo* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %71

21:                                               ; preds = %13
  %22 = load %struct.owl_padinfo*, %struct.owl_padinfo** %7, align 8
  %23 = getelementptr inbounds %struct.owl_padinfo, %struct.owl_padinfo* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.owl_padinfo*, %struct.owl_padinfo** %7, align 8
  %29 = getelementptr inbounds %struct.owl_padinfo, %struct.owl_padinfo* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.owl_padinfo*, %struct.owl_padinfo** %7, align 8
  %35 = getelementptr inbounds %struct.owl_padinfo, %struct.owl_padinfo* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  br label %70

40:                                               ; preds = %5
  %41 = load %struct.owl_padinfo*, %struct.owl_padinfo** %7, align 8
  %42 = getelementptr inbounds %struct.owl_padinfo, %struct.owl_padinfo* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %71

48:                                               ; preds = %40
  %49 = load %struct.owl_padinfo*, %struct.owl_padinfo** %7, align 8
  %50 = getelementptr inbounds %struct.owl_padinfo, %struct.owl_padinfo* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.owl_padinfo*, %struct.owl_padinfo** %7, align 8
  %56 = getelementptr inbounds %struct.owl_padinfo, %struct.owl_padinfo* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.owl_padinfo*, %struct.owl_padinfo** %7, align 8
  %62 = getelementptr inbounds %struct.owl_padinfo, %struct.owl_padinfo* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  br label %70

67:                                               ; preds = %5
  %68 = load i32, i32* @ENOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %71

70:                                               ; preds = %48, %21
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %67, %45, %18
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
