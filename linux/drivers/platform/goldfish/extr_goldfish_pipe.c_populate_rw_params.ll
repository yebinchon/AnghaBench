; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_populate_rw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_populate_rw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.goldfish_pipe_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i8** }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i32, i64, i64, i64, i64, i32, i32, %struct.goldfish_pipe_command*)* @populate_rw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_rw_params(%struct.page** %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, i32 %7, %struct.goldfish_pipe_command* %8) #0 {
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.goldfish_pipe_command*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.goldfish_pipe_command* %8, %struct.goldfish_pipe_command** %18, align 8
  %24 = load %struct.page**, %struct.page*** %10, align 8
  %25 = getelementptr inbounds %struct.page*, %struct.page** %24, i64 0
  %26 = load %struct.page*, %struct.page** %25, align 8
  %27 = call i64 @page_to_phys(%struct.page* %26)
  store i64 %27, i64* %19, align 8
  %28 = load i64, i64* %19, align 8
  store i64 %28, i64* %20, align 8
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %9
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %12, align 8
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = sext i32 %36 to i64
  br label %45

38:                                               ; preds = %9
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @PAGE_MASK, align 8
  %42 = xor i64 %41, -1
  %43 = and i64 %40, %42
  %44 = sub i64 %39, %43
  br label %45

45:                                               ; preds = %38, %32
  %46 = phi i64 [ %37, %32 ], [ %44, %38 ]
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %23, align 4
  %48 = load i64, i64* %19, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @PAGE_MASK, align 8
  %51 = xor i64 %50, -1
  %52 = and i64 %49, %51
  %53 = or i64 %48, %52
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.goldfish_pipe_command*, %struct.goldfish_pipe_command** %18, align 8
  %56 = getelementptr inbounds %struct.goldfish_pipe_command, %struct.goldfish_pipe_command* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  store i8* %54, i8** %59, align 8
  %60 = load i32, i32* %23, align 4
  %61 = load %struct.goldfish_pipe_command*, %struct.goldfish_pipe_command** %18, align 8
  %62 = getelementptr inbounds %struct.goldfish_pipe_command, %struct.goldfish_pipe_command* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %127, %45
  %67 = load i32, i32* %22, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %130

70:                                               ; preds = %66
  %71 = load %struct.page**, %struct.page*** %10, align 8
  %72 = load i32, i32* %22, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.page*, %struct.page** %71, i64 %73
  %75 = load %struct.page*, %struct.page** %74, align 8
  %76 = call i64 @page_to_phys(%struct.page* %75)
  store i64 %76, i64* %19, align 8
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, i32* %16, align 4
  %83 = zext i32 %82 to i64
  br label %86

84:                                               ; preds = %70
  %85 = load i64, i64* @PAGE_SIZE, align 8
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i64 [ %83, %81 ], [ %85, %84 ]
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %23, align 4
  %89 = load i64, i64* %19, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* @PAGE_SIZE, align 8
  %92 = add i64 %90, %91
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load i32, i32* %23, align 4
  %96 = load %struct.goldfish_pipe_command*, %struct.goldfish_pipe_command** %18, align 8
  %97 = getelementptr inbounds %struct.goldfish_pipe_command, %struct.goldfish_pipe_command* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %21, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %95
  store i32 %104, i32* %102, align 4
  br label %125

105:                                              ; preds = %86
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %21, align 4
  %108 = load i64, i64* %19, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.goldfish_pipe_command*, %struct.goldfish_pipe_command** %18, align 8
  %111 = getelementptr inbounds %struct.goldfish_pipe_command, %struct.goldfish_pipe_command* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %21, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  store i8* %109, i8** %116, align 8
  %117 = load i32, i32* %23, align 4
  %118 = load %struct.goldfish_pipe_command*, %struct.goldfish_pipe_command** %18, align 8
  %119 = getelementptr inbounds %struct.goldfish_pipe_command, %struct.goldfish_pipe_command* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %21, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %117, i32* %124, align 4
  br label %125

125:                                              ; preds = %105, %94
  %126 = load i64, i64* %19, align 8
  store i64 %126, i64* %20, align 8
  br label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %22, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %22, align 4
  br label %66

130:                                              ; preds = %66
  %131 = load i32, i32* %21, align 4
  %132 = add nsw i32 %131, 1
  %133 = load %struct.goldfish_pipe_command*, %struct.goldfish_pipe_command** %18, align 8
  %134 = getelementptr inbounds %struct.goldfish_pipe_command, %struct.goldfish_pipe_command* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 8
  ret void
}

declare dso_local i64 @page_to_phys(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
