; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_fix_screeninfo, %struct.fb_var_screeninfo, %struct.lynxfb_par* }
%struct.fb_fix_screeninfo = type { i32, i8* }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.lynxfb_par = type { %struct.lynxfb_output, %struct.lynxfb_crtc }
%struct.lynxfb_output = type { i32 }
%struct.lynxfb_crtc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"fix->line_length = %d\0A\00", align 1
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i8* null, align 8
@FB_VISUAL_TRUECOLOR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"pixel bpp format not satisfied\0A.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @lynxfb_ops_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lynxfb_ops_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.lynxfb_par*, align 8
  %5 = alloca %struct.lynxfb_crtc*, align 8
  %6 = alloca %struct.lynxfb_output*, align 8
  %7 = alloca %struct.fb_var_screeninfo*, align 8
  %8 = alloca %struct.fb_fix_screeninfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = icmp ne %struct.fb_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %158

16:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 2
  %19 = load %struct.lynxfb_par*, %struct.lynxfb_par** %18, align 8
  store %struct.lynxfb_par* %19, %struct.lynxfb_par** %4, align 8
  %20 = load %struct.lynxfb_par*, %struct.lynxfb_par** %4, align 8
  %21 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %20, i32 0, i32 1
  store %struct.lynxfb_crtc* %21, %struct.lynxfb_crtc** %5, align 8
  %22 = load %struct.lynxfb_par*, %struct.lynxfb_par** %4, align 8
  %23 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %22, i32 0, i32 0
  store %struct.lynxfb_output* %23, %struct.lynxfb_output** %6, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 1
  store %struct.fb_var_screeninfo* %25, %struct.fb_var_screeninfo** %7, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  store %struct.fb_fix_screeninfo* %27, %struct.fb_fix_screeninfo** %8, align 8
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = sdiv i32 %34, 8
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %5, align 8
  %38 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ALIGN(i32 %36, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %43 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %45 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %129 [
    i32 8, label %51
    i32 16, label %79
    i32 24, label %107
    i32 32, label %107
  ]

51:                                               ; preds = %16
  %52 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %53 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %54 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 8, i32* %60, align 4
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 8, i32* %66, align 4
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 8, i32* %72, align 8
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %132

79:                                               ; preds = %16
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 11, i32* %82, align 8
  %83 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %84 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32 5, i32* %85, align 4
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 5, i32* %88, align 8
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 6, i32* %91, align 4
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i32 5, i32* %97, align 8
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %105 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %106 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %132

107:                                              ; preds = %16, %16
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 16, i32* %110, align 8
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i32 8, i32* %113, align 4
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 8, i32* %116, align 8
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 8, i32* %119, align 4
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i32 8, i32* %125, align 8
  %126 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %127 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %128 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  br label %132

129:                                              ; preds = %16
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %129, %107, %79, %51
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 3
  store i32 -1, i32* %134, align 4
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 2
  store i32 -1, i32* %136, align 8
  %137 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %138 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %137, i32 0, i32 4
  store i64 0, i64* %138, align 8
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %2, align 4
  br label %158

144:                                              ; preds = %132
  %145 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %5, align 8
  %146 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %147 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %148 = call i32 @hw_sm750_crtc_setMode(%struct.lynxfb_crtc* %145, %struct.fb_var_screeninfo* %146, %struct.fb_fix_screeninfo* %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %144
  %152 = load %struct.lynxfb_output*, %struct.lynxfb_output** %6, align 8
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %154 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %155 = call i32 @hw_sm750_output_setMode(%struct.lynxfb_output* %152, %struct.fb_var_screeninfo* %153, %struct.fb_fix_screeninfo* %154)
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %151, %144
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %141, %13
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @hw_sm750_crtc_setMode(%struct.lynxfb_crtc*, %struct.fb_var_screeninfo*, %struct.fb_fix_screeninfo*) #1

declare dso_local i32 @hw_sm750_output_setMode(%struct.lynxfb_output*, %struct.fb_var_screeninfo*, %struct.fb_fix_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
