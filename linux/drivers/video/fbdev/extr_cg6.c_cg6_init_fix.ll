; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cg6.c_cg6_init_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cg6.c_cg6_init_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64* }
%struct.cg6_par = type { i32 }

@CG6_FHC_CPU_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sparc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"68020\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@CG6_FHC_REV_SHIFT = common dso_local global i32 0, align 4
@CG6_FHC_REV_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"TGX\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TGX+\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"GX\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"GX+\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_ACCEL_SUN_CGSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @cg6_init_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cg6_init_fix(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cg6_par*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.cg6_par*
  store %struct.cg6_par* %12, %struct.cg6_par** %5, align 8
  %13 = load %struct.cg6_par*, %struct.cg6_par** %5, align 8
  %14 = getelementptr inbounds %struct.cg6_par, %struct.cg6_par* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sbus_readl(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @CG6_FHC_CPU_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %22 [
    i32 128, label %20
    i32 129, label %21
  ]

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %23

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %23

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %23

23:                                               ; preds = %22, %21, %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @CG6_FHC_REV_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load i32, i32* @CG6_FHC_REV_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp sge i32 %28, 11
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sle i32 %34, 1048576
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %38

37:                                               ; preds = %30
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %38

38:                                               ; preds = %37, %36
  br label %48

39:                                               ; preds = %23
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sle i32 %43, 1048576
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %47

46:                                               ; preds = %39
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %38
  %49 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i64*, i64** %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @sprintf(i64* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %53, i8* %54)
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 7
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %66 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @FB_ACCEL_SUN_CGSIX, align 4
  %74 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  ret void
}

declare dso_local i32 @sbus_readl(i32) #1

declare dso_local i32 @sprintf(i64*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
