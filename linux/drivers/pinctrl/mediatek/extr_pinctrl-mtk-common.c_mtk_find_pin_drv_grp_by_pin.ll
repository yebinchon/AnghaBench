; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_find_pin_drv_grp_by_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_find_pin_drv_grp_by_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pin_drv_grp = type { i64 }
%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.mtk_pin_drv_grp* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_pin_drv_grp* (%struct.mtk_pinctrl*, i64)* @mtk_find_pin_drv_grp_by_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_pin_drv_grp* @mtk_find_pin_drv_grp_by_pin(%struct.mtk_pinctrl* %0, i64 %1) #0 {
  %3 = alloca %struct.mtk_pin_drv_grp*, align 8
  %4 = alloca %struct.mtk_pinctrl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_pin_drv_grp*, align 8
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %8
  %17 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.mtk_pin_drv_grp*, %struct.mtk_pin_drv_grp** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mtk_pin_drv_grp, %struct.mtk_pin_drv_grp* %21, i64 %23
  store %struct.mtk_pin_drv_grp* %24, %struct.mtk_pin_drv_grp** %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.mtk_pin_drv_grp*, %struct.mtk_pin_drv_grp** %7, align 8
  %27 = getelementptr inbounds %struct.mtk_pin_drv_grp, %struct.mtk_pin_drv_grp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = load %struct.mtk_pin_drv_grp*, %struct.mtk_pin_drv_grp** %7, align 8
  store %struct.mtk_pin_drv_grp* %31, %struct.mtk_pin_drv_grp** %3, align 8
  br label %37

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %8

36:                                               ; preds = %8
  store %struct.mtk_pin_drv_grp* null, %struct.mtk_pin_drv_grp** %3, align 8
  br label %37

37:                                               ; preds = %36, %30
  %38 = load %struct.mtk_pin_drv_grp*, %struct.mtk_pin_drv_grp** %3, align 8
  ret %struct.mtk_pin_drv_grp* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
