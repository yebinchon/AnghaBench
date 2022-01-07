; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.fb_var_screeninfo, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i64, i64 }
%struct.pvr2fb_par = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DISP_SYNCSIZE = common dso_local global i32 0, align 4
@video_output = common dso_local global i64 0, align 8
@VO_VGA = common dso_local global i64 0, align 8
@DISP_DIWSIZE = common dso_local global i32 0, align 4
@DISP_DIWADDRL = common dso_local global i32 0, align 4
@DISP_DIWADDRS = common dso_local global i32 0, align 4
@DISP_BRDRHORZ = common dso_local global i32 0, align 4
@DISP_BRDRVERT = common dso_local global i32 0, align 4
@DISP_BRDRCOLR = common dso_local global i32 0, align 4
@DISP_DIWHSTRT = common dso_local global i32 0, align 4
@DISP_DIWVSTRT = common dso_local global i32 0, align 4
@DISP_DIWCONF = common dso_local global i32 0, align 4
@DISP_DIWMODE = common dso_local global i32 0, align 4
@DISP_PIXDEPTH = common dso_local global i32 0, align 4
@DISP_SYNCCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @pvr2_init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_init_display(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pvr2fb_par*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.pvr2fb_par*
  store %struct.pvr2fb_par* %12, %struct.pvr2fb_par** %3, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1
  store %struct.fb_var_screeninfo* %14, %struct.fb_var_screeninfo** %4, align 8
  store i32 1, i32* %7, align 4
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 3
  store i32 %18, i32* %8, align 4
  %19 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %20 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %24 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  %27 = load i32, i32* @DISP_SYNCSIZE, align 4
  %28 = call i32 @fb_writel(i32 %26, i32 %27)
  %29 = load i64, i64* @video_output, align 8
  %30 = load i64, i64* @VO_VGA, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %34 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 4
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %32, %1
  %46 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %47 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 2
  br label %59

55:                                               ; preds = %45
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i32 [ %54, %50 ], [ %58, %55 ]
  store i32 %60, i32* %5, align 4
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @get_line_length(i64 %63, i32 %66)
  %68 = sdiv i32 %67, 4
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = shl i32 %69, 20
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, -1
  store i32 %72, i32* %5, align 4
  %73 = shl i32 %72, 10
  %74 = or i32 %70, %73
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, -1
  store i32 %76, i32* %6, align 4
  %77 = or i32 %74, %76
  %78 = load i32, i32* @DISP_DIWSIZE, align 4
  %79 = call i32 @fb_writel(i32 %77, i32 %78)
  %80 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %81 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DISP_DIWADDRL, align 4
  %84 = call i32 @fb_writel(i32 %82, i32 %83)
  %85 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %86 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @get_line_length(i64 %94, i32 %97)
  %99 = add nsw i32 %87, %98
  %100 = load i32, i32* @DISP_DIWADDRS, align 4
  %101 = call i32 @fb_writel(i32 %99, i32 %100)
  %102 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %103 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 16
  %106 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %107 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %105, %108
  %110 = load i32, i32* @DISP_BRDRHORZ, align 4
  %111 = call i32 @fb_writel(i32 %109, i32 %110)
  %112 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %113 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 16
  %116 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %117 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %115, %118
  %120 = load i32, i32* @DISP_BRDRVERT, align 4
  %121 = call i32 @fb_writel(i32 %119, i32 %120)
  %122 = load i32, i32* @DISP_BRDRCOLR, align 4
  %123 = call i32 @fb_writel(i32 0, i32 %122)
  %124 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %125 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DISP_DIWHSTRT, align 4
  %128 = call i32 @fb_writel(i32 %126, i32 %127)
  %129 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %130 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 16
  %133 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %134 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %132, %135
  %137 = load i32, i32* @DISP_DIWVSTRT, align 4
  %138 = call i32 @fb_writel(i32 %136, i32 %137)
  %139 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %140 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 4
  %142 = or i32 1441792, %141
  %143 = load i32, i32* @DISP_DIWCONF, align 4
  %144 = call i32 @fb_writel(i32 %142, i32 %143)
  %145 = load i64, i64* @video_output, align 8
  %146 = load i64, i64* @VO_VGA, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = shl i32 %148, 23
  %150 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %151 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 4
  %153 = shl i32 %152, 1
  %154 = or i32 %149, %153
  %155 = or i32 %154, 1
  %156 = load i32, i32* @DISP_DIWMODE, align 4
  %157 = call i32 @fb_writel(i32 %155, i32 %156)
  %158 = load i32, i32* @DISP_DIWMODE, align 4
  %159 = call i32 @fb_readl(i32 %158)
  %160 = load i32, i32* %8, align 4
  %161 = add i32 %160, -1
  store i32 %161, i32* %8, align 4
  %162 = shl i32 %161, 2
  %163 = or i32 %159, %162
  %164 = load i32, i32* @DISP_DIWMODE, align 4
  %165 = call i32 @fb_writel(i32 %163, i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = shl i32 %166, 2
  %168 = load i32, i32* @DISP_PIXDEPTH, align 4
  %169 = call i32 @fb_writel(i32 %167, i32 %168)
  %170 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %171 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 4
  %174 = or i32 256, %173
  %175 = load i32, i32* @DISP_SYNCCONF, align 4
  %176 = call i32 @fb_writel(i32 %174, i32 %175)
  ret void
}

declare dso_local i32 @fb_writel(i32, i32) #1

declare dso_local i32 @get_line_length(i64, i32) #1

declare dso_local i32 @fb_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
