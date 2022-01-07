; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_accel.c_radeonfb_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_accel.c_radeonfb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.TYPE_2__, %struct.radeonfb_info* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.radeonfb_info = type { i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeonfb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.radeonfb_info*, align 8
  %6 = alloca %struct.fb_fillrect, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 3
  %11 = load %struct.radeonfb_info*, %struct.radeonfb_info** %10, align 8
  store %struct.radeonfb_info* %11, %struct.radeonfb_info** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %91

18:                                               ; preds = %2
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %28 = call i32 @cfb_fillrect(%struct.fb_info* %26, %struct.fb_fillrect* %27)
  br label %91

29:                                               ; preds = %18
  %30 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %31 = call i32 @radeon_fixup_offset(%struct.radeonfb_info* %30)
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %41 = call i32 @memcpy(%struct.fb_fillrect* %6, %struct.fb_fillrect* %40, i32 16)
  %42 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49, %45, %29
  br label %91

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %62, %64
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %69, %71
  %73 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %60
  %75 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %76, %78
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  %84 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %83, %85
  %87 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %74
  %89 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %90 = call i32 @radeonfb_prim_fillrect(%struct.radeonfb_info* %89, %struct.fb_fillrect* %6)
  br label %91

91:                                               ; preds = %88, %59, %25, %17
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @radeon_fixup_offset(%struct.radeonfb_info*) #1

declare dso_local i32 @memcpy(%struct.fb_fillrect*, %struct.fb_fillrect*, i32) #1

declare dso_local i32 @radeonfb_prim_fillrect(%struct.radeonfb_info*, %struct.fb_fillrect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
