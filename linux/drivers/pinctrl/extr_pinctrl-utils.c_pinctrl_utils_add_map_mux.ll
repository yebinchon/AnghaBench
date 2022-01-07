; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-utils.c_pinctrl_utils_add_map_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-utils.c_pinctrl_utils_add_map_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@ENOSPC = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinctrl_utils_add_map_mux(%struct.pinctrl_dev* %0, %struct.pinctrl_map** %1, i32* %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pinctrl_dev*, align 8
  %9 = alloca %struct.pinctrl_map**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %8, align 8
  store %struct.pinctrl_map** %1, %struct.pinctrl_map*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %57

25:                                               ; preds = %6
  %26 = load i32, i32* @PIN_MAP_TYPE_MUX_GROUP, align 4
  %27 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %28 = load %struct.pinctrl_map*, %struct.pinctrl_map** %27, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %28, i64 %31
  %33 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %32, i32 0, i32 1
  store i32 %26, i32* %33, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %36 = load %struct.pinctrl_map*, %struct.pinctrl_map** %35, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %36, i64 %39
  %41 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i8* %34, i8** %43, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %46 = load %struct.pinctrl_map*, %struct.pinctrl_map** %45, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %46, i64 %49
  %51 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i8* %44, i8** %53, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %54, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %25, %22
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
