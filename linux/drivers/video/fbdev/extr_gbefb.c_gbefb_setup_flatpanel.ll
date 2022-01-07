; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gbefb.c_gbefb_setup_flatpanel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gbefb.c_gbefb_setup_flatpanel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.gbe_timing_info = type { i32, i32, i32, i64 }

@VT_FLAGS = common dso_local global i32 0, align 4
@HDRV_INVERT = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@VDRV_INVERT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@gbe = common dso_local global %struct.TYPE_2__* null, align 8
@FP_DE = common dso_local global i32 0, align 4
@ON = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@FP_HDRV = common dso_local global i32 0, align 4
@FP_VDRV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_timing_info*)* @gbefb_setup_flatpanel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbefb_setup_flatpanel(%struct.gbe_timing_info* %0) #0 {
  %2 = alloca %struct.gbe_timing_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.gbe_timing_info* %0, %struct.gbe_timing_info** %2, align 8
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* @VT_FLAGS, align 4
  %9 = load i32, i32* @HDRV_INVERT, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %12 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 1
  %19 = call i32 @SET_GBE_FIELD(i32 %8, i32 %9, i8* %10, i32 %18)
  %20 = load i32, i32* @VT_FLAGS, align 4
  %21 = load i32, i32* @VDRV_INVERT, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %24 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 1
  %31 = call i32 @SET_GBE_FIELD(i32 %20, i32 %21, i8* %22, i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  store i32 1600, i32* %3, align 4
  store i32 1024, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1600, i32* %6, align 4
  %35 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %36 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %35, i32 0, i32 1
  store i32 4, i32* %36, align 4
  %37 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %38 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  %39 = load %struct.gbe_timing_info*, %struct.gbe_timing_info** %2, align 8
  %40 = getelementptr inbounds %struct.gbe_timing_info, %struct.gbe_timing_info* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  store i8* null, i8** %7, align 8
  %41 = load i32, i32* @FP_DE, align 4
  %42 = load i32, i32* @ON, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @SET_GBE_FIELD(i32 %41, i32 %42, i8* %43, i32 %44)
  %46 = load i32, i32* @FP_DE, align 4
  %47 = load i32, i32* @OFF, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @SET_GBE_FIELD(i32 %46, i32 %47, i8* %48, i32 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  store i8* null, i8** %7, align 8
  %54 = load i32, i32* @FP_HDRV, align 4
  %55 = load i32, i32* @OFF, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @SET_GBE_FIELD(i32 %54, i32 %55, i8* %56, i32 %57)
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  store i8* null, i8** %7, align 8
  %62 = load i32, i32* @FP_VDRV, align 4
  %63 = load i32, i32* @ON, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @SET_GBE_FIELD(i32 %62, i32 %63, i8* %64, i32 1)
  %66 = load i32, i32* @FP_VDRV, align 4
  %67 = load i32, i32* @OFF, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @SET_GBE_FIELD(i32 %66, i32 %67, i8* %68, i32 %70)
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gbe, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  ret void
}

declare dso_local i32 @SET_GBE_FIELD(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
