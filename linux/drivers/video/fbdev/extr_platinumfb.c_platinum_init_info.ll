; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_platinumfb.c_platinum_init_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_platinumfb.c_platinum_init_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i32, i64, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.fb_info_platinum = type { i64, i64, i32, i64, i32 }

@platinumfb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"platinum\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_info_platinum*)* @platinum_init_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platinum_init_info(%struct.fb_info* %0, %struct.fb_info_platinum* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_info_platinum*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_info_platinum* %1, %struct.fb_info_platinum** %4, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 5
  store i32* @platinumfb_ops, i32** %6, align 8
  %7 = load %struct.fb_info_platinum*, %struct.fb_info_platinum** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info_platinum, %struct.fb_info_platinum* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @FBINFO_DEFAULT, align 4
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.fb_info_platinum*, %struct.fb_info_platinum** %4, align 8
  %16 = getelementptr inbounds %struct.fb_info_platinum, %struct.fb_info_platinum* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 32
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = call i32 @fb_alloc_cmap(i32* %22, i32 256, i32 0)
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strcpy(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.fb_info_platinum*, %struct.fb_info_platinum** %4, align 8
  %30 = getelementptr inbounds %struct.fb_info_platinum, %struct.fb_info_platinum* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 9
  store i32 %31, i32* %34, align 4
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 4096, i32* %37, align 8
  %38 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 8
  store i32 %38, i32* %41, align 8
  %42 = load %struct.fb_info_platinum*, %struct.fb_info_platinum** %4, align 8
  %43 = getelementptr inbounds %struct.fb_info_platinum, %struct.fb_info_platinum* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 32
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 7
  store i64 %45, i64* %48, align 8
  %49 = load %struct.fb_info_platinum*, %struct.fb_info_platinum** %4, align 8
  %50 = getelementptr inbounds %struct.fb_info_platinum, %struct.fb_info_platinum* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 32
  %53 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 6
  store i64 %52, i64* %55, align 8
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @FB_ACCEL_NONE, align 4
  %69 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  ret void
}

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
