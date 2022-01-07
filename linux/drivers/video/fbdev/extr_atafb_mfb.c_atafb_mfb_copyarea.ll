; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb_mfb.c_atafb_mfb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb_mfb.c_atafb_mfb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atafb_mfb_copyarea(%struct.fb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %8
  %23 = load i32, i32* %14, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %16, align 4
  %36 = ashr i32 %35, 3
  %37 = mul nsw i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32* %39, i32** %17, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %16, align 4
  %46 = ashr i32 %45, 3
  %47 = mul nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  store i32* %49, i32** %18, align 8
  %50 = load i32*, i32** %18, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = ashr i32 %53, 3
  %55 = mul nsw i32 %52, %54
  %56 = call i32 @fb_memmove(i32* %50, i32* %51, i32 %55)
  br label %164

57:                                               ; preds = %25, %22, %8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %108

61:                                               ; preds = %57
  %62 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32* %74, i32** %17, align 8
  %75 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %14, align 4
  %85 = ashr i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32* %87, i32** %18, align 8
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %93, %61
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %19, align 4
  %92 = icmp ne i32 %90, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i32*, i32** %18, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* %16, align 4
  %97 = ashr i32 %96, 3
  %98 = call i32 @fb_memmove(i32* %94, i32* %95, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %17, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %17, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %18, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %18, align 8
  br label %89

107:                                              ; preds = %89
  br label %163

108:                                              ; preds = %57
  %109 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %110 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %10, align 4
  %118 = mul nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %112, i64 %119
  %121 = load i32, i32* %12, align 4
  %122 = ashr i32 %121, 3
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32* %124, i32** %17, align 8
  %125 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %129, %130
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %10, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %128, i64 %135
  %137 = load i32, i32* %14, align 4
  %138 = ashr i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32* %140, i32** %18, align 8
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %19, align 4
  br label %142

142:                                              ; preds = %146, %108
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %19, align 4
  %145 = icmp ne i32 %143, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %142
  %147 = load i32*, i32** %18, align 8
  %148 = load i32*, i32** %17, align 8
  %149 = load i32, i32* %16, align 4
  %150 = ashr i32 %149, 3
  %151 = call i32 @fb_memmove(i32* %147, i32* %148, i32 %150)
  %152 = load i32, i32* %10, align 4
  %153 = load i32*, i32** %17, align 8
  %154 = sext i32 %152 to i64
  %155 = sub i64 0, %154
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32* %156, i32** %17, align 8
  %157 = load i32, i32* %10, align 4
  %158 = load i32*, i32** %18, align 8
  %159 = sext i32 %157 to i64
  %160 = sub i64 0, %159
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32* %161, i32** %18, align 8
  br label %142

162:                                              ; preds = %142
  br label %163

163:                                              ; preds = %162, %107
  br label %164

164:                                              ; preds = %163, %29
  ret void
}

declare dso_local i32 @fb_memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
