; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_add_map_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_add_map_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_map = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@ENOSPC = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_map**, i32*, i32*, i8*, i8*)* @add_map_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_map_mux(%struct.pinctrl_map** %0, i32* %1, i32* %2, i8* %3, i8* %4) #0 {
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
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %55

23:                                               ; preds = %5
  %24 = load i32, i32* @PIN_MAP_TYPE_MUX_GROUP, align 4
  %25 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %7, align 8
  %26 = load %struct.pinctrl_map*, %struct.pinctrl_map** %25, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %26, i64 %29
  %31 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %30, i32 0, i32 1
  store i32 %24, i32* %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %7, align 8
  %34 = load %struct.pinctrl_map*, %struct.pinctrl_map** %33, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %34, i64 %37
  %39 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* %32, i8** %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %7, align 8
  %44 = load %struct.pinctrl_map*, %struct.pinctrl_map** %43, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %44, i64 %47
  %49 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i8* %42, i8** %51, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %52, align 4
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %23, %20
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
