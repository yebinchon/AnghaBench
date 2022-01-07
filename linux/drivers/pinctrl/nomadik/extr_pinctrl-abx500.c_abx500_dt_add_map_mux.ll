; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_dt_add_map_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_dt_add_map_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_map = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@ENOSPC = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_map**, i32*, i32*, i8*, i8*)* @abx500_dt_add_map_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_dt_add_map_mux(%struct.pinctrl_map** %0, i32* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinctrl_map**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.pinctrl_map** %0, %struct.pinctrl_map*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %52

20:                                               ; preds = %5
  %21 = load i32, i32* @PIN_MAP_TYPE_MUX_GROUP, align 4
  %22 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %7, align 8
  %23 = load %struct.pinctrl_map*, %struct.pinctrl_map** %22, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %23, i64 %26
  %28 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %27, i32 0, i32 1
  store i32 %21, i32* %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %7, align 8
  %31 = load %struct.pinctrl_map*, %struct.pinctrl_map** %30, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %31, i64 %34
  %36 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i8* %29, i8** %38, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %7, align 8
  %41 = load %struct.pinctrl_map*, %struct.pinctrl_map** %40, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %41, i64 %44
  %46 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i8* %39, i8** %48, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %49, align 4
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %20, %17
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
