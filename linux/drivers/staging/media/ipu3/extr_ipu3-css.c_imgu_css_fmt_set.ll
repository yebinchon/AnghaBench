; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_fmt_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_fmt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.imgu_css_pipe* }
%struct.imgu_css_pipe = type { %struct.v4l2_rect*, i32* }
%struct.v4l2_rect = type { i32 }
%struct.v4l2_pix_format_mplane = type { i32 }

@IPU3_CSS_QUEUES = common dso_local global i32 0, align 4
@IPU3_CSS_RECTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imgu_css_fmt_set(%struct.imgu_css* %0, %struct.v4l2_pix_format_mplane** %1, %struct.v4l2_rect** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.imgu_css*, align 8
  %7 = alloca %struct.v4l2_pix_format_mplane**, align 8
  %8 = alloca %struct.v4l2_rect**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.imgu_css_pipe*, align 8
  %16 = alloca i32, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %6, align 8
  store %struct.v4l2_pix_format_mplane** %1, %struct.v4l2_pix_format_mplane*** %7, align 8
  store %struct.v4l2_rect** %2, %struct.v4l2_rect*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @IPU3_CSS_QUEUES, align 4
  %18 = zext i32 %17 to i64
  %19 = load i32, i32* @IPU3_CSS_RECTS, align 4
  %20 = zext i32 %19 to i64
  %21 = load i32, i32* @IPU3_CSS_RECTS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca %struct.v4l2_rect, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @IPU3_CSS_RECTS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca %struct.v4l2_rect*, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %28 = load %struct.imgu_css*, %struct.imgu_css** %6, align 8
  %29 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %28, i32 0, i32 0
  %30 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %30, i64 %32
  store %struct.imgu_css_pipe* %33, %struct.imgu_css_pipe** %15, align 8
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %68, %4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @IPU3_CSS_RECTS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %8, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %39, i64 %41
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %42, align 8
  %44 = icmp ne %struct.v4l2_rect* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %24, i64 %47
  %49 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %8, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %49, i64 %51
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %52, align 8
  %54 = bitcast %struct.v4l2_rect* %48 to i8*
  %55 = bitcast %struct.v4l2_rect* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  br label %61

56:                                               ; preds = %38
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %24, i64 %58
  %60 = call i32 @memset(%struct.v4l2_rect* %59, i32 0, i32 4)
  br label %61

61:                                               ; preds = %56, %45
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %24, i64 %63
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %27, i64 %66
  store %struct.v4l2_rect* %64, %struct.v4l2_rect** %67, align 8
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %34

71:                                               ; preds = %34
  %72 = load %struct.imgu_css*, %struct.imgu_css** %6, align 8
  %73 = load %struct.v4l2_pix_format_mplane**, %struct.v4l2_pix_format_mplane*** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @imgu_css_fmt_try(%struct.imgu_css* %72, %struct.v4l2_pix_format_mplane** %73, %struct.v4l2_rect** %27, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %147

80:                                               ; preds = %71
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %105, %80
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @IPU3_CSS_QUEUES, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %15, align 8
  %87 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load %struct.v4l2_pix_format_mplane**, %struct.v4l2_pix_format_mplane*** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %92, i64 %94
  %96 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @IPU3_CSS_QUEUE_TO_FLAGS(i32 %97)
  %99 = call i64 @imgu_css_queue_init(i32* %91, %struct.v4l2_pix_format_mplane* %96, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %85
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %147

104:                                              ; preds = %85
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %81

108:                                              ; preds = %81
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %143, %108
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @IPU3_CSS_RECTS, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %146

113:                                              ; preds = %109
  %114 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %15, align 8
  %115 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %114, i32 0, i32 0
  %116 = load %struct.v4l2_rect*, %struct.v4l2_rect** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %116, i64 %118
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %24, i64 %121
  %123 = bitcast %struct.v4l2_rect* %119 to i8*
  %124 = bitcast %struct.v4l2_rect* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 4, i1 false)
  %125 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %8, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %125, i64 %127
  %129 = load %struct.v4l2_rect*, %struct.v4l2_rect** %128, align 8
  %130 = icmp ne %struct.v4l2_rect* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %113
  %132 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %8, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %132, i64 %134
  %136 = load %struct.v4l2_rect*, %struct.v4l2_rect** %135, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %24, i64 %138
  %140 = bitcast %struct.v4l2_rect* %136 to i8*
  %141 = bitcast %struct.v4l2_rect* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 4 %141, i64 4, i1 false)
  br label %142

142:                                              ; preds = %131, %113
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %109

146:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %147

147:                                              ; preds = %146, %101, %78
  %148 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.v4l2_rect*, i32, i32) #3

declare dso_local i32 @imgu_css_fmt_try(%struct.imgu_css*, %struct.v4l2_pix_format_mplane**, %struct.v4l2_rect**, i32) #3

declare dso_local i64 @imgu_css_queue_init(i32*, %struct.v4l2_pix_format_mplane*, i32) #3

declare dso_local i32 @IPU3_CSS_QUEUE_TO_FLAGS(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
