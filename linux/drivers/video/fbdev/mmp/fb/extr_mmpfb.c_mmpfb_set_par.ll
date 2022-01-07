; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpfb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.mmpfb_info* }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32 }
%struct.mmpfb_info = type { i32, i64, i32, i32, i32 }
%struct.mmp_addr = type { i64* }
%struct.mmp_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @mmpfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmpfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.mmpfb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.mmp_addr, align 8
  %7 = alloca %struct.mmp_mode, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load %struct.mmpfb_info*, %struct.mmpfb_info** %10, align 8
  store %struct.mmpfb_info* %11, %struct.mmpfb_info** %4, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  store %struct.fb_var_screeninfo* %13, %struct.fb_var_screeninfo** %5, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = call i32 @var_update(%struct.fb_info* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %62

20:                                               ; preds = %1
  %21 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %22 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %21, i32 0, i32 4
  %23 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %24 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @fbmode_to_mmpmode(%struct.mmp_mode* %7, i32* %22, i32 %25)
  %27 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %28 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mmp_path_set_mode(i32 %29, %struct.mmp_mode* %7)
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = call i32 @mmpfb_set_win(%struct.fb_info* %31)
  %33 = call i32 @memset(%struct.mmp_addr* %6, i32 0, i32 8)
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = sdiv i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %52 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = getelementptr inbounds %struct.mmp_addr, %struct.mmp_addr* %6, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %59 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @mmp_overlay_set_addr(i32 %60, %struct.mmp_addr* %6)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %20, %18
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @var_update(%struct.fb_info*) #1

declare dso_local i32 @fbmode_to_mmpmode(%struct.mmp_mode*, i32*, i32) #1

declare dso_local i32 @mmp_path_set_mode(i32, %struct.mmp_mode*) #1

declare dso_local i32 @mmpfb_set_win(%struct.fb_info*) #1

declare dso_local i32 @memset(%struct.mmp_addr*, i32, i32) #1

declare dso_local i32 @mmp_overlay_set_addr(i32, %struct.mmp_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
