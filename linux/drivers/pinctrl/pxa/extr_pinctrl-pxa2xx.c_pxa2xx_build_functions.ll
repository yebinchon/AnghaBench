; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_build_functions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_build_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_pinctrl = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pxa_desc_function* }
%struct.pxa_desc_function = type { i64 }
%struct.pxa_pinctrl_function = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_pinctrl*)* @pxa2xx_build_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_build_functions(%struct.pxa_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxa_pinctrl_function*, align 8
  %6 = alloca %struct.pxa_desc_function*, align 8
  store %struct.pxa_pinctrl* %0, %struct.pxa_pinctrl** %3, align 8
  %7 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %8 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %11 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %12, 6
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.pxa_pinctrl_function* @devm_kcalloc(i32 %9, i32 %13, i32 8, i32 %14)
  store %struct.pxa_pinctrl_function* %15, %struct.pxa_pinctrl_function** %5, align 8
  %16 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %5, align 8
  %17 = icmp ne %struct.pxa_pinctrl_function* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %98

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %67, %21
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %25 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %22
  %29 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %30 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %35, align 8
  store %struct.pxa_desc_function* %36, %struct.pxa_desc_function** %6, align 8
  br label %37

37:                                               ; preds = %63, %28
  %38 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %6, align 8
  %39 = getelementptr inbounds %struct.pxa_desc_function, %struct.pxa_desc_function* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %37
  %43 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %44 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %6, align 8
  %45 = getelementptr inbounds %struct.pxa_desc_function, %struct.pxa_desc_function* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %5, align 8
  %48 = call i32 @pxa2xx_find_function(%struct.pxa_pinctrl* %43, i64 %46, %struct.pxa_pinctrl_function* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %42
  %51 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %6, align 8
  %52 = getelementptr inbounds %struct.pxa_desc_function, %struct.pxa_desc_function* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %5, align 8
  %55 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %56 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %54, i64 %59
  %61 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %60, i32 0, i32 0
  store i64 %53, i64* %61, align 8
  br label %62

62:                                               ; preds = %50, %42
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %6, align 8
  %65 = getelementptr inbounds %struct.pxa_desc_function, %struct.pxa_desc_function* %64, i32 1
  store %struct.pxa_desc_function* %65, %struct.pxa_desc_function** %6, align 8
  br label %37

66:                                               ; preds = %37
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %22

70:                                               ; preds = %22
  %71 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %72 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %5, align 8
  %75 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %76 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32 @devm_kmemdup(i32 %73, %struct.pxa_pinctrl_function* %74, i32 %80, i32 %81)
  %83 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %84 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %86 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %70
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %98

92:                                               ; preds = %70
  %93 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %94 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %5, align 8
  %97 = call i32 @devm_kfree(i32 %95, %struct.pxa_pinctrl_function* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %92, %89, %18
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.pxa_pinctrl_function* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @pxa2xx_find_function(%struct.pxa_pinctrl*, i64, %struct.pxa_pinctrl_function*) #1

declare dso_local i32 @devm_kmemdup(i32, %struct.pxa_pinctrl_function*, i32, i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.pxa_pinctrl_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
