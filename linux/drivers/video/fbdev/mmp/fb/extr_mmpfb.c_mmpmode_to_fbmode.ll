; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpmode_to_fbmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpmode_to_fbmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.mmp_mode = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_videomode*, %struct.mmp_mode*)* @mmpmode_to_fbmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmpmode_to_fbmode(%struct.fb_videomode* %0, %struct.mmp_mode* %1) #0 {
  %3 = alloca %struct.fb_videomode*, align 8
  %4 = alloca %struct.mmp_mode*, align 8
  %5 = alloca i64, align 8
  store %struct.fb_videomode* %0, %struct.fb_videomode** %3, align 8
  store %struct.mmp_mode* %1, %struct.mmp_mode** %4, align 8
  store i64 1000000000000, i64* %5, align 8
  %6 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %7 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %6, i32 0, i32 13
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %10 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %9, i32 0, i32 12
  store i32 %8, i32* %10, align 4
  %11 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %12 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %15 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %14, i32 0, i32 11
  store i32 %13, i32* %15, align 8
  %16 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %17 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %20 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %22 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %25 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %28 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @do_div(i64 %26, i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %33 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %32, i32 0, i32 8
  store i64 %31, i64* %33, align 8
  %34 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %35 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %38 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %40 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %43 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %45 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %48 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %50 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %53 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %55 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %58 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %60 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %63 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %65 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %2
  %69 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  br label %71

70:                                               ; preds = %2
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %74 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  br label %80

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  %82 = or i32 %72, %81
  %83 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %84 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %86 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 8, i32 0
  %91 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %92 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  ret void
}

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
