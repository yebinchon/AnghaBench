; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_fill_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_fill_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_37xx_pinctrl = type { i32, i32, %struct.armada_37xx_pin_group*, i32, %struct.armada_37xx_pmx_func* }
%struct.armada_37xx_pin_group = type { i8*, i32 }
%struct.armada_37xx_pmx_func = type { i8*, i8**, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NB_FUNCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armada_37xx_pinctrl*)* @armada_37xx_fill_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_fill_func(%struct.armada_37xx_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.armada_37xx_pinctrl*, align 8
  %4 = alloca %struct.armada_37xx_pmx_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.armada_37xx_pin_group*, align 8
  %10 = alloca i32, align 4
  store %struct.armada_37xx_pinctrl* %0, %struct.armada_37xx_pinctrl** %3, align 8
  %11 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %12 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %11, i32 0, i32 4
  %13 = load %struct.armada_37xx_pmx_func*, %struct.armada_37xx_pmx_func** %12, align 8
  store %struct.armada_37xx_pmx_func* %13, %struct.armada_37xx_pmx_func** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %93, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %17 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %96

20:                                               ; preds = %14
  %21 = load %struct.armada_37xx_pmx_func*, %struct.armada_37xx_pmx_func** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.armada_37xx_pmx_func, %struct.armada_37xx_pmx_func* %21, i64 %23
  %25 = getelementptr inbounds %struct.armada_37xx_pmx_func, %struct.armada_37xx_pmx_func* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %28 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.armada_37xx_pmx_func*, %struct.armada_37xx_pmx_func** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.armada_37xx_pmx_func, %struct.armada_37xx_pmx_func* %30, i64 %32
  %34 = getelementptr inbounds %struct.armada_37xx_pmx_func, %struct.armada_37xx_pmx_func* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8** @devm_kcalloc(i32 %29, i32 %35, i32 8, i32 %36)
  %38 = load %struct.armada_37xx_pmx_func*, %struct.armada_37xx_pmx_func** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.armada_37xx_pmx_func, %struct.armada_37xx_pmx_func* %38, i64 %40
  %42 = getelementptr inbounds %struct.armada_37xx_pmx_func, %struct.armada_37xx_pmx_func* %41, i32 0, i32 1
  store i8** %37, i8*** %42, align 8
  %43 = load %struct.armada_37xx_pmx_func*, %struct.armada_37xx_pmx_func** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.armada_37xx_pmx_func, %struct.armada_37xx_pmx_func* %43, i64 %45
  %47 = getelementptr inbounds %struct.armada_37xx_pmx_func, %struct.armada_37xx_pmx_func* %46, i32 0, i32 1
  %48 = load i8**, i8*** %47, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %20
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %97

53:                                               ; preds = %20
  %54 = load %struct.armada_37xx_pmx_func*, %struct.armada_37xx_pmx_func** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.armada_37xx_pmx_func, %struct.armada_37xx_pmx_func* %54, i64 %56
  %58 = getelementptr inbounds %struct.armada_37xx_pmx_func, %struct.armada_37xx_pmx_func* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  store i8** %59, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %89, %53
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %63 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %60
  %67 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %68 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %67, i32 0, i32 2
  %69 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %69, i64 %71
  store %struct.armada_37xx_pin_group* %72, %struct.armada_37xx_pin_group** %9, align 8
  %73 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %9, align 8
  %74 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NB_FUNCS, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @match_string(i32 %75, i32 %76, i8* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  br label %89

82:                                               ; preds = %66
  %83 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %9, align 8
  %84 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** %7, align 8
  store i8* %85, i8** %86, align 8
  %87 = load i8**, i8*** %7, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %7, align 8
  br label %89

89:                                               ; preds = %82, %81
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %60

92:                                               ; preds = %60
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %14

96:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %50
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i8** @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @match_string(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
