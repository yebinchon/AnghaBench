; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_ext_encode_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_ext_encode_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_fix_screeninfo = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.atafb_par = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Unknown Extern\00", align 1
@external_addr = common dso_local global i32 0, align 4
@external_len = common dso_local global i32 0, align 4
@external_depth = common dso_local global i32 0, align 4
@external_pmode = common dso_local global i32 0, align 4
@FB_VISUAL_MONO10 = common dso_local global i32 0, align 4
@FB_VISUAL_MONO01 = common dso_local global i32 0, align 4
@external_vgaiobase = common dso_local global i64 0, align 8
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_STATIC_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_fix_screeninfo*, %struct.atafb_par*)* @ext_encode_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_encode_fix(%struct.fb_fix_screeninfo* %0, %struct.atafb_par* %1) #0 {
  %3 = alloca %struct.fb_fix_screeninfo*, align 8
  %4 = alloca %struct.atafb_par*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_fix_screeninfo* %0, %struct.fb_fix_screeninfo** %3, align 8
  store %struct.atafb_par* %1, %struct.atafb_par** %4, align 8
  %6 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %7 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @strcpy(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @external_addr, align 4
  %11 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %12 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @external_len, align 4
  %14 = call i32 @PAGE_ALIGN(i32 %13)
  %15 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %16 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @external_depth, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %21 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %20, i32 0, i32 0
  store i32 129, i32* %21, align 8
  %22 = load i32, i32* @external_pmode, align 4
  %23 = icmp eq i32 %22, 130
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @external_pmode, align 4
  %26 = icmp eq i32 %25, 129
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %19
  %28 = load i32, i32* @FB_VISUAL_MONO10, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @FB_VISUAL_MONO01, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %34 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %72

35:                                               ; preds = %2
  %36 = load i64, i64* @external_vgaiobase, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @FB_VISUAL_STATIC_PSEUDOCOLOR, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @external_pmode, align 4
  switch i32 %44, label %71 [
    i32 -1, label %45
    i32 129, label %51
    i32 128, label %57
    i32 130, label %63
  ]

45:                                               ; preds = %42
  %46 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %47 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %46, i32 0, i32 0
  store i32 129, i32* %47, align 8
  %48 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %49 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %50 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %71

51:                                               ; preds = %42
  %52 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %53 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %52, i32 0, i32 0
  store i32 129, i32* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %56 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %71

57:                                               ; preds = %42
  %58 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %59 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %58, i32 0, i32 0
  store i32 128, i32* %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %62 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %71

63:                                               ; preds = %42
  %64 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %65 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %64, i32 0, i32 0
  store i32 130, i32* %65, align 8
  %66 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %67 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %66, i32 0, i32 2
  store i32 2, i32* %67, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %70 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %42, %63, %57, %51, %45
  br label %72

72:                                               ; preds = %71, %31
  %73 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %74 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %76 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %78 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %80 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %83 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  ret i32 0
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
