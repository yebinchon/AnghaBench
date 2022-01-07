; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }
%struct.intelfb_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FB_ACTIVATE_VBL = common dso_local global i32 0, align 4
@DSPABASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intelfbhw_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.intelfb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = call %struct.intelfb_info* @GET_DINFO(%struct.fb_info* %10)
  store %struct.intelfb_info* %11, %struct.intelfb_info** %6, align 8
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ROUND_DOWN_TO(i32 %14, i32 8)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %20, %24
  %26 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %25, %29
  br i1 %30, label %44, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %33, %37
  %39 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31, %2
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %94

47:                                               ; preds = %31
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %50 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %53, %57
  %59 = sdiv i32 %58, 8
  %60 = add nsw i32 %52, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %62 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 12
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %70 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FB_ACTIVATE_VBL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %47
  %79 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %80 = call i32 @intelfbhw_enable_irq(%struct.intelfb_info* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %84 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  br label %93

86:                                               ; preds = %78, %47
  %87 = load %struct.intelfb_info*, %struct.intelfb_info** %6, align 8
  %88 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* @DSPABASE, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @OUTREG(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %82
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %44
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.intelfb_info* @GET_DINFO(%struct.fb_info*) #1

declare dso_local i32 @ROUND_DOWN_TO(i32, i32) #1

declare dso_local i32 @intelfbhw_enable_irq(%struct.intelfb_info*) #1

declare dso_local i32 @OUTREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
