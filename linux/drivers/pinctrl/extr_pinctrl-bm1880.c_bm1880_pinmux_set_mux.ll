; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-bm1880.c_bm1880_pinmux_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-bm1880.c_bm1880_pinmux_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.bm1880_pinctrl = type { i32, %struct.bm1880_pinmux_function*, %struct.bm1880_pctrl_group* }
%struct.bm1880_pinmux_function = type { i32 }
%struct.bm1880_pctrl_group = type { i32, i32* }

@BM1880_REG_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @bm1880_pinmux_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bm1880_pinmux_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bm1880_pinctrl*, align 8
  %8 = alloca %struct.bm1880_pctrl_group*, align 8
  %9 = alloca %struct.bm1880_pinmux_function*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %16 = call %struct.bm1880_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.bm1880_pinctrl* %16, %struct.bm1880_pinctrl** %7, align 8
  %17 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %7, align 8
  %18 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %17, i32 0, i32 2
  %19 = load %struct.bm1880_pctrl_group*, %struct.bm1880_pctrl_group** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bm1880_pctrl_group, %struct.bm1880_pctrl_group* %19, i64 %21
  store %struct.bm1880_pctrl_group* %22, %struct.bm1880_pctrl_group** %8, align 8
  %23 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %7, align 8
  %24 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %23, i32 0, i32 1
  %25 = load %struct.bm1880_pinmux_function*, %struct.bm1880_pinmux_function** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bm1880_pinmux_function, %struct.bm1880_pinmux_function* %25, i64 %27
  store %struct.bm1880_pinmux_function* %28, %struct.bm1880_pinmux_function** %9, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %83, %3
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.bm1880_pctrl_group*, %struct.bm1880_pctrl_group** %8, align 8
  %32 = getelementptr inbounds %struct.bm1880_pctrl_group, %struct.bm1880_pctrl_group* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %86

35:                                               ; preds = %29
  %36 = load %struct.bm1880_pctrl_group*, %struct.bm1880_pctrl_group** %8, align 8
  %37 = getelementptr inbounds %struct.bm1880_pctrl_group, %struct.bm1880_pctrl_group* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = lshr i32 %43, 1
  %45 = shl i32 %44, 2
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add i32 %46, 1
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = shl i32 %51, 4
  %53 = add nsw i32 %52, 4
  store i32 %53, i32* %13, align 4
  %54 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %7, align 8
  %55 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BM1880_REG_MUX, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @readl_relaxed(i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = shl i32 3, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %14, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %14, align 4
  %67 = load %struct.bm1880_pinmux_function*, %struct.bm1880_pinmux_function** %9, align 8
  %68 = getelementptr inbounds %struct.bm1880_pinmux_function, %struct.bm1880_pinmux_function* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %14, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %7, align 8
  %76 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BM1880_REG_MUX, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @writel_relaxed(i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %35
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %29

86:                                               ; preds = %29
  ret i32 0
}

declare dso_local %struct.bm1880_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
