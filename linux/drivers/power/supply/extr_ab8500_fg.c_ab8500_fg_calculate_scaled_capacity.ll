; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_calculate_scaled_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_calculate_scaled_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.ab8500_fg_cap_scaling }
%struct.ab8500_fg_cap_scaling = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Scale cap with %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Cap to stop scale lowered %d%%\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Disabling scaled capacity\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Waiting in cap to level %d%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_fg*)* @ab8500_fg_calculate_scaled_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_fg_calculate_scaled_capacity(%struct.ab8500_fg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ab8500_fg*, align 8
  %4 = alloca %struct.ab8500_fg_cap_scaling*, align 8
  %5 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %3, align 8
  %6 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %7 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store %struct.ab8500_fg_cap_scaling* %8, %struct.ab8500_fg_cap_scaling** %4, align 8
  %9 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %10 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %14 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %159

19:                                               ; preds = %1
  %20 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %21 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %19
  %26 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %27 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 100, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %32 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @max(i32 %30, i32 %37)
  %39 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %40 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %44 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %47 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %52 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @dev_dbg(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %55)
  br label %57

57:                                               ; preds = %25, %19
  %58 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %59 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %64 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %62, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %57
  %70 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %71 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %78 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %82 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %80, %85
  %87 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %88 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @DIV_ROUND_CLOSEST(i32 %86, i32 %91)
  %93 = call i32 @min(i32 100, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %76, %69, %57
  %95 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %96 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %157

100:                                              ; preds = %94
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %103 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %109 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %111 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %114 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i8*, ...) @dev_dbg(i32 %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %156

117:                                              ; preds = %100
  %118 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %119 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %155, label %123

123:                                              ; preds = %117
  %124 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %125 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %129 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp sge i32 %127, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %123
  %133 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %134 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32, i8*, ...) @dev_dbg(i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %137 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %138 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  %139 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %140 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %5, align 4
  br label %154

143:                                              ; preds = %123
  %144 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %145 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %148 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, i8*, ...) @dev_dbg(i32 %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = load %struct.ab8500_fg_cap_scaling*, %struct.ab8500_fg_cap_scaling** %4, align 8
  %152 = getelementptr inbounds %struct.ab8500_fg_cap_scaling, %struct.ab8500_fg_cap_scaling* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %143, %132
  br label %155

155:                                              ; preds = %154, %117
  br label %156

156:                                              ; preds = %155, %106
  br label %157

157:                                              ; preds = %156, %94
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %17
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
