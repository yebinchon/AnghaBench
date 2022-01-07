; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { i32, i32, %struct.s3fb_info* }
%struct.s3fb_info = type { i64 }

@s3fb_formats = common dso_local global %struct.TYPE_3__* null, align 8
@CHIP_988_VIRGE_VX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unsupported mode requested\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"not enough framebuffer memory (%d kB requested , %u kB available)\0A\00", align 1
@s3_timing_regs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid timings requested\0A\00", align 1
@s3_pll = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"invalid pixclock value requested\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @s3fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.s3fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = load %struct.s3fb_info*, %struct.s3fb_info** %14, align 8
  store %struct.s3fb_info* %15, %struct.s3fb_info** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3fb_formats, align 8
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = call i32 @svga_match_format(%struct.TYPE_3__* %16, %struct.fb_var_screeninfo* %17, i32* null)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.s3fb_info*, %struct.s3fb_info** %6, align 8
  %20 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CHIP_988_VIRGE_VX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 7
  br i1 %26, label %30, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %27, %24
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %38 = call i32 (%struct.fb_info*, i8*, ...) @fb_err(%struct.fb_info* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %142

40:                                               ; preds = %33
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %54
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3fb_formats, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = ashr i32 %92, 3
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %98, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %68
  %104 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = ashr i32 %105, 10
  %107 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = ashr i32 %109, 10
  %111 = call i32 (%struct.fb_info*, i8*, ...) @fb_err(%struct.fb_info* %104, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %142

114:                                              ; preds = %68
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %116 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %117 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @svga_check_timings(i32* @s3_timing_regs, %struct.fb_var_screeninfo* %115, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %124 = call i32 (%struct.fb_info*, i8*, ...) @fb_err(%struct.fb_info* %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %142

126:                                              ; preds = %114
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @PICOS2KHZ(i32 %129)
  %131 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %132 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @svga_compute_pll(i32* @s3_pll, i32 %130, i32* %10, i32* %11, i32* %12, i32 %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %126
  %138 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %139 = call i32 (%struct.fb_info*, i8*, ...) @fb_err(%struct.fb_info* %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  br label %142

141:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %137, %122, %103, %36
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @svga_match_format(%struct.TYPE_3__*, %struct.fb_var_screeninfo*, i32*) #1

declare dso_local i32 @fb_err(%struct.fb_info*, i8*, ...) #1

declare dso_local i32 @svga_check_timings(i32*, %struct.fb_var_screeninfo*, i32) #1

declare dso_local i32 @svga_compute_pll(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @PICOS2KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
