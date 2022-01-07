; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8623fb.c_vt8623fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8623fb.c_vt8623fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { i32, i32 }

@vt8623fb_formats = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"unsupported mode requested\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"not enough framebuffer memory (%d kB requested, %d kB available)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"text framebuffer size too large (%d kB requested, 256 kB possible)\0A\00", align 1
@vt8623_timing_regs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid timings requested\0A\00", align 1
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @vt8623fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8623fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vt8623fb_formats, align 8
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %11 = call i32 @svga_match_format(%struct.TYPE_3__* %9, %struct.fb_var_screeninfo* %10, i32* null)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %16 = call i32 (%struct.fb_info*, i8*, ...) @fb_err(%struct.fb_info* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %130

18:                                               ; preds = %2
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vt8623fb_formats, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = ashr i32 %70, 3
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %46
  %82 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = ashr i32 %83, 10
  %85 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 10
  %89 = call i32 (%struct.fb_info*, i8*, ...) @fb_err(%struct.fb_info* %82, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %130

92:                                               ; preds = %46
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = icmp sgt i32 %98, 262144
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = ashr i32 %102, 10
  %104 = call i32 (%struct.fb_info*, i8*, ...) @fb_err(%struct.fb_info* %101, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %130

107:                                              ; preds = %97, %92
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %109 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %110 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @svga_check_timings(i32* @vt8623_timing_regs, %struct.fb_var_screeninfo* %108, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %117 = call i32 (%struct.fb_info*, i8*, ...) @fb_err(%struct.fb_info* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %130

119:                                              ; preds = %107
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %130

129:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %126, %115, %100, %81, %14
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @svga_match_format(%struct.TYPE_3__*, %struct.fb_var_screeninfo*, i32*) #1

declare dso_local i32 @fb_err(%struct.fb_info*, i8*, ...) #1

declare dso_local i32 @svga_check_timings(i32*, %struct.fb_var_screeninfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
