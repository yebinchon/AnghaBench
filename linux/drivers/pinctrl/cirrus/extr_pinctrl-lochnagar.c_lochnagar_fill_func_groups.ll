; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_fill_func_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_fill_func_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lochnagar_pin_priv = type { i32, %struct.TYPE_2__*, %struct.lochnagar_func_groups*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.lochnagar_func_groups = type { i64, i32* }

@LN_FTYPE_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lochnagar_pin_priv*)* @lochnagar_fill_func_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_fill_func_groups(%struct.lochnagar_pin_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lochnagar_pin_priv*, align 8
  %4 = alloca %struct.lochnagar_func_groups*, align 8
  %5 = alloca i32, align 4
  store %struct.lochnagar_pin_priv* %0, %struct.lochnagar_pin_priv** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %3, align 8
  %9 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %3, align 8
  %14 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %13, i32 0, i32 2
  %15 = load %struct.lochnagar_func_groups*, %struct.lochnagar_func_groups** %14, align 8
  %16 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %3, align 8
  %17 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.lochnagar_func_groups, %struct.lochnagar_func_groups* %15, i64 %23
  %25 = getelementptr inbounds %struct.lochnagar_func_groups, %struct.lochnagar_func_groups* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %12
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %69, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @LN_FTYPE_COUNT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %32
  %37 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %3, align 8
  %38 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %37, i32 0, i32 2
  %39 = load %struct.lochnagar_func_groups*, %struct.lochnagar_func_groups** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.lochnagar_func_groups, %struct.lochnagar_func_groups* %39, i64 %41
  store %struct.lochnagar_func_groups* %42, %struct.lochnagar_func_groups** %4, align 8
  %43 = load %struct.lochnagar_func_groups*, %struct.lochnagar_func_groups** %4, align 8
  %44 = getelementptr inbounds %struct.lochnagar_func_groups, %struct.lochnagar_func_groups* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %69

48:                                               ; preds = %36
  %49 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %3, align 8
  %50 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.lochnagar_func_groups*, %struct.lochnagar_func_groups** %4, align 8
  %53 = getelementptr inbounds %struct.lochnagar_func_groups, %struct.lochnagar_func_groups* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32* @devm_kcalloc(i32 %51, i64 %54, i32 4, i32 %55)
  %57 = load %struct.lochnagar_func_groups*, %struct.lochnagar_func_groups** %4, align 8
  %58 = getelementptr inbounds %struct.lochnagar_func_groups, %struct.lochnagar_func_groups* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.lochnagar_func_groups*, %struct.lochnagar_func_groups** %4, align 8
  %60 = getelementptr inbounds %struct.lochnagar_func_groups, %struct.lochnagar_func_groups* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %112

66:                                               ; preds = %48
  %67 = load %struct.lochnagar_func_groups*, %struct.lochnagar_func_groups** %4, align 8
  %68 = getelementptr inbounds %struct.lochnagar_func_groups, %struct.lochnagar_func_groups* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %47
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %32

72:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %108, %72
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %3, align 8
  %76 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %73
  %80 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %3, align 8
  %81 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %80, i32 0, i32 2
  %82 = load %struct.lochnagar_func_groups*, %struct.lochnagar_func_groups** %81, align 8
  %83 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %3, align 8
  %84 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.lochnagar_func_groups, %struct.lochnagar_func_groups* %82, i64 %90
  store %struct.lochnagar_func_groups* %91, %struct.lochnagar_func_groups** %4, align 8
  %92 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %3, align 8
  %93 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.lochnagar_func_groups*, %struct.lochnagar_func_groups** %4, align 8
  %101 = getelementptr inbounds %struct.lochnagar_func_groups, %struct.lochnagar_func_groups* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.lochnagar_func_groups*, %struct.lochnagar_func_groups** %4, align 8
  %104 = getelementptr inbounds %struct.lochnagar_func_groups, %struct.lochnagar_func_groups* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %99, i32* %107, align 4
  br label %108

108:                                              ; preds = %79
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %73

111:                                              ; preds = %73
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %63
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32* @devm_kcalloc(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
