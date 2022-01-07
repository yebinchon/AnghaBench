; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_render_hline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_render_hline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { i32, i32 }
%struct.urb = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlfb_data*, %struct.urb**, i8*, i8**, i32, i32, i32*, i32*)* @dlfb_render_hline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_render_hline(%struct.dlfb_data* %0, %struct.urb** %1, i8* %2, i8** %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlfb_data*, align 8
  %11 = alloca %struct.urb**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.urb*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store %struct.dlfb_data* %0, %struct.dlfb_data** %10, align 8
  store %struct.urb** %1, %struct.urb*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8** %3, i8*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %29 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %30 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %21, align 4
  %34 = load %struct.urb**, %struct.urb*** %11, align 8
  %35 = load %struct.urb*, %struct.urb** %34, align 8
  store %struct.urb* %35, %struct.urb** %22, align 8
  %36 = load i8**, i8*** %13, align 8
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %23, align 8
  %38 = load %struct.urb*, %struct.urb** %22, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.urb*, %struct.urb** %22, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8* %45, i8** %24, align 8
  store i64 0, i64* %25, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %18, align 8
  %50 = load i8*, i8** %18, align 8
  store i8* %50, i8** %20, align 8
  %51 = load i8*, i8** %20, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8* %54, i8** %19, align 8
  %55 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %56 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %8
  %60 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %61 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %27, align 8
  %67 = load i8*, i8** %27, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load i8*, i8** %18, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = sub i64 %68, %70
  store i64 %71, i64* %25, align 8
  %72 = load i8*, i8** %27, align 8
  %73 = call i64 @dlfb_trim_hline(i8* %72, i8** %20, i32* %15)
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %73
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load i8*, i8** %20, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %26, align 4
  %85 = load i8*, i8** %20, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8* %88, i8** %19, align 8
  %89 = load i32, i32* %26, align 4
  %90 = load i32, i32* %21, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %21, align 4
  %92 = load i32, i32* %26, align 4
  %93 = load i8*, i8** %27, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %27, align 8
  %96 = load i32, i32* %26, align 4
  %97 = load i8*, i8** %18, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %18, align 8
  br label %100

100:                                              ; preds = %59, %8
  br label %101

101:                                              ; preds = %153, %100
  %102 = load i8*, i8** %20, align 8
  %103 = load i8*, i8** %19, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %154

105:                                              ; preds = %101
  %106 = bitcast i8** %20 to i32**
  %107 = load i8*, i8** %19, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = load i8*, i8** %24, align 8
  %110 = load i64, i64* %25, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = call i32 @dlfb_compress_hline(i32** %106, i32* %108, i32* %21, i8** %23, i8* %109, i64 %110, i32* %111)
  %113 = load i8*, i8** %23, align 8
  %114 = load i8*, i8** %24, align 8
  %115 = icmp uge i8* %113, %114
  br i1 %115, label %116, label %153

116:                                              ; preds = %105
  %117 = load i8*, i8** %23, align 8
  %118 = load %struct.urb*, %struct.urb** %22, align 8
  %119 = getelementptr inbounds %struct.urb, %struct.urb* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = ptrtoint i8* %117 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %28, align 4
  %125 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %126 = load %struct.urb*, %struct.urb** %22, align 8
  %127 = load i32, i32* %28, align 4
  %128 = call i64 @dlfb_submit_urb(%struct.dlfb_data* %125, %struct.urb* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  store i32 1, i32* %9, align 4
  br label %157

131:                                              ; preds = %116
  %132 = load i32, i32* %28, align 4
  %133 = load i32*, i32** %17, align 8
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %132
  store i32 %135, i32* %133, align 4
  %136 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  %137 = call %struct.urb* @dlfb_get_urb(%struct.dlfb_data* %136)
  store %struct.urb* %137, %struct.urb** %22, align 8
  %138 = load %struct.urb*, %struct.urb** %22, align 8
  %139 = icmp ne %struct.urb* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %131
  store i32 1, i32* %9, align 4
  br label %157

141:                                              ; preds = %131
  %142 = load %struct.urb*, %struct.urb** %22, align 8
  %143 = load %struct.urb**, %struct.urb*** %11, align 8
  store %struct.urb* %142, %struct.urb** %143, align 8
  %144 = load %struct.urb*, %struct.urb** %22, align 8
  %145 = getelementptr inbounds %struct.urb, %struct.urb* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** %23, align 8
  %147 = load i8*, i8** %23, align 8
  %148 = load %struct.urb*, %struct.urb** %22, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %147, i64 %151
  store i8* %152, i8** %24, align 8
  br label %153

153:                                              ; preds = %141, %105
  br label %101

154:                                              ; preds = %101
  %155 = load i8*, i8** %23, align 8
  %156 = load i8**, i8*** %13, align 8
  store i8* %155, i8** %156, align 8
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %154, %140, %130
  %158 = load i32, i32* %9, align 4
  ret i32 %158
}

declare dso_local i64 @dlfb_trim_hline(i8*, i8**, i32*) #1

declare dso_local i32 @dlfb_compress_hline(i32**, i32*, i32*, i8**, i8*, i64, i32*) #1

declare dso_local i64 @dlfb_submit_urb(%struct.dlfb_data*, %struct.urb*, i32) #1

declare dso_local %struct.urb* @dlfb_get_urb(%struct.dlfb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
