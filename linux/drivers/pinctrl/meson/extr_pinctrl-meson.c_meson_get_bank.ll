; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_get_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_get_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.meson_bank* }
%struct.meson_bank = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pinctrl*, i32, %struct.meson_bank**)* @meson_get_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_get_bank(%struct.meson_pinctrl* %0, i32 %1, %struct.meson_bank** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.meson_bank**, align 8
  %8 = alloca i32, align 4
  store %struct.meson_pinctrl* %0, %struct.meson_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.meson_bank** %2, %struct.meson_bank*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %54, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %12 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %9
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %20 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.meson_bank*, %struct.meson_bank** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.meson_bank, %struct.meson_bank* %23, i64 %25
  %27 = getelementptr inbounds %struct.meson_bank, %struct.meson_bank* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp uge i32 %18, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %33 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.meson_bank*, %struct.meson_bank** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.meson_bank, %struct.meson_bank* %36, i64 %38
  %40 = getelementptr inbounds %struct.meson_bank, %struct.meson_bank* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ule i32 %31, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %30
  %44 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %45 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.meson_bank*, %struct.meson_bank** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.meson_bank, %struct.meson_bank* %48, i64 %50
  %52 = load %struct.meson_bank**, %struct.meson_bank*** %7, align 8
  store %struct.meson_bank* %51, %struct.meson_bank** %52, align 8
  store i32 0, i32* %4, align 4
  br label %60

53:                                               ; preds = %30, %17
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %9

57:                                               ; preds = %9
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %43
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
