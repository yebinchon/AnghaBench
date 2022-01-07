; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_fbmode_to_mmpmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_fbmode_to_mmpmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.fb_videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_mode*, %struct.fb_videomode*, i32)* @fbmode_to_mmpmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbmode_to_mmpmode(%struct.mmp_mode* %0, %struct.fb_videomode* %1, i32 %2) #0 {
  %4 = alloca %struct.mmp_mode*, align 8
  %5 = alloca %struct.fb_videomode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mmp_mode* %0, %struct.mmp_mode** %4, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 1000000000000, i64* %7, align 8
  %8 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %9 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %8, i32 0, i32 12
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %12 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %11, i32 0, i32 14
  store i32 %10, i32* %12, align 4
  %13 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %14 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %17 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %16, i32 0, i32 13
  store i32 %15, i32* %17, align 8
  %18 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %19 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %22 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %21, i32 0, i32 12
  store i32 %20, i32* %22, align 4
  %23 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %24 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %27 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %30 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @do_div(i64 %28, i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %35 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %34, i32 0, i32 10
  store i64 %33, i64* %35, align 8
  %36 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %37 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %40 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %42 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %45 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %47 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %50 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %52 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %55 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %57 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %60 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %62 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %65 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %67 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %76 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %78 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %87 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %89 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 8
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %97 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.mmp_mode*, %struct.mmp_mode** %4, align 8
  %100 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  ret void
}

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
