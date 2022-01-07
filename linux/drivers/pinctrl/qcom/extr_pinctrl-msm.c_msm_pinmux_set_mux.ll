; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_pinmux_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_pinmux_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.msm_pinctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.msm_pingroup* }
%struct.msm_pingroup = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @msm_pinmux_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_pinmux_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_pinctrl*, align 8
  %9 = alloca %struct.msm_pingroup*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.msm_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.msm_pinctrl* %15, %struct.msm_pinctrl** %8, align 8
  %16 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %8, align 8
  %17 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.msm_pingroup*, %struct.msm_pingroup** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %20, i64 %22
  store %struct.msm_pingroup* %23, %struct.msm_pingroup** %9, align 8
  %24 = load %struct.msm_pingroup*, %struct.msm_pingroup** %9, align 8
  %25 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load %struct.msm_pingroup*, %struct.msm_pingroup** %9, align 8
  %29 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @order_base_2(i32 %30)
  %32 = add nsw i64 %27, %31
  %33 = sub nsw i64 %32, 1
  %34 = load %struct.msm_pingroup*, %struct.msm_pingroup** %9, align 8
  %35 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @GENMASK(i64 %33, i32 %36)
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %56, %3
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.msm_pingroup*, %struct.msm_pingroup** %9, align 8
  %41 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.msm_pingroup*, %struct.msm_pingroup** %9, align 8
  %46 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %59

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %38

59:                                               ; preds = %54, %38
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.msm_pingroup*, %struct.msm_pingroup** %9, align 8
  %62 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @WARN_ON(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %98

71:                                               ; preds = %59
  %72 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %8, align 8
  %73 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %72, i32 0, i32 0
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @raw_spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %8, align 8
  %77 = load %struct.msm_pingroup*, %struct.msm_pingroup** %9, align 8
  %78 = call i32 @msm_readl_ctl(%struct.msm_pinctrl* %76, %struct.msm_pingroup* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.msm_pingroup*, %struct.msm_pingroup** %9, align 8
  %85 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %83, %86
  %88 = load i32, i32* %11, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %8, align 8
  %92 = load %struct.msm_pingroup*, %struct.msm_pingroup** %9, align 8
  %93 = call i32 @msm_writel_ctl(i32 %90, %struct.msm_pinctrl* %91, %struct.msm_pingroup* %92)
  %94 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %8, align 8
  %95 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %94, i32 0, i32 0
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @raw_spin_unlock_irqrestore(i32* %95, i64 %96)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %71, %68
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.msm_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i64 @order_base_2(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @msm_readl_ctl(%struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @msm_writel_ctl(i32, %struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
