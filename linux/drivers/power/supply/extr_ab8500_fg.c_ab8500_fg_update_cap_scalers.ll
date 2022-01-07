; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_update_cap_scalers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_update_cap_scalers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.ab8500_fg_cap_scaling }
%struct.ab8500_fg_cap_scaling = type { i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"Cap to stop scale at charge %d%%\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Cap to scale at discharge %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_fg*)* @ab8500_fg_update_cap_scalers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_fg_update_cap_scalers(%struct.ab8500_fg* %0) #0 {
  %2 = alloca %struct.ab8500_fg*, align 8
  %3 = alloca %struct.ab8500_fg_cap_scaling*, align 8
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %2, align 8
  %4 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %5 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store %struct.ab8500_fg_cap_scaling* %6, %struct.ab8500_fg_cap_scaling** %3, align 8
  %7 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %3, align 8
  %8 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %94

12:                                               ; preds = %1
  %13 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %14 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %20 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %25 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  %28 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %29 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %32 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %94

37:                                               ; preds = %12
  %38 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %3, align 8
  %39 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 100
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %3, align 8
  %44 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %3, align 8
  %47 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %51 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %3, align 8
  %55 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %53, i32* %57, align 4
  br label %79

58:                                               ; preds = %37
  %59 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %3, align 8
  %60 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 100, i32* %62, align 4
  %63 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %64 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %68 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @max(i32 %66, i32 %73)
  %75 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %3, align 8
  %76 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %58, %42
  %80 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %81 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %3, align 8
  %84 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %3, align 8
  %89 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %11, %79, %18
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
