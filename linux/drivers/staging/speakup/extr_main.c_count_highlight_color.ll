; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_count_highlight_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_count_highlight_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.vc_data = type { i32, i32, i32, i32, i64 }

@speakup_console = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*)* @count_highlight_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_highlight_color(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %11 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %8, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %33, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @speakup_console, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %18

36:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %86, %36
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %37
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %8, align 8
  store i32* %51, i32** %10, align 8
  br label %52

52:                                               ; preds = %76, %43
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ult i32* %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @get_attributes(%struct.vc_data* %57, i32* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 112
  %62 = ashr i32 %61, 4
  store i32 %62, i32* %4, align 4
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @speakup_console, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %56
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %10, align 8
  br label %52

79:                                               ; preds = %52
  %80 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %81 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %8, align 8
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %37

89:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %111, %89
  %91 = load i32, i32* %3, align 4
  %92 = icmp slt i32 %91, 8
  br i1 %92, label %93, label %114

93:                                               ; preds = %90
  %94 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @speakup_console, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %94, i64 %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %93
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %107, %93
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %90

114:                                              ; preds = %90
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @get_attributes(%struct.vc_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
