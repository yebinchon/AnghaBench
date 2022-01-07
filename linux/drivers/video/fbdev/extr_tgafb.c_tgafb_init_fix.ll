; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tgafb.c_tgafb_init_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tgafb.c_tgafb_init_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_10__, %struct.TYPE_6__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, i32, i32, i64, i64, i64, i32, i64, i32, i32 }
%struct.tga_par = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Digital ZLXp-E1\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Digital ZLX-E1\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Digital ZLXp-E2\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Digital ZLX-E2\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Digital ZLXp-E3\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Digital ZLX-E3\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i32 0, align 4
@FB_ACCEL_DEC_TGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @tgafb_init_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgafb_init_fix(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.tga_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.tga_par*
  store %struct.tga_par* %12, %struct.tga_par** %3, align 8
  %13 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %14 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_is_pci(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %18 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @TGA_BUS_TC(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %22 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %52 [
    i32 128, label %25
    i32 130, label %34
    i32 129, label %43
  ]

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %33

33:                                               ; preds = %32, %29
  store i32 2097152, i32* %8, align 4
  br label %52

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %42

42:                                               ; preds = %41, %38
  store i32 8388608, i32* %8, align 4
  br label %52

43:                                               ; preds = %1
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %51

51:                                               ; preds = %50, %47
  store i32 16777216, i32* %8, align 4
  br label %52

52:                                               ; preds = %1, %51, %42, %33
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  store i32 16777216, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @strlcpy(i32 %60, i8* %61, i32 4)
  %63 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %64 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 10
  store i32 %63, i32* %66, align 8
  %67 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 9
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 128
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %76

74:                                               ; preds = %56
  %75 = load i32, i32* @FB_VISUAL_DIRECTCOLOR, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 8
  store i32 %77, i32* %80, align 8
  %81 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %82 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  %91 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %92 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i64 %93, i64* %96, align 8
  %97 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store i32 512, i32* %99, align 8
  %100 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 7
  store i64 0, i64* %102, align 8
  %103 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 6
  store i64 0, i64* %105, align 8
  %106 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 5
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* @FB_ACCEL_DEC_TGA, align 4
  %110 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 128
  br i1 %114, label %115, label %140

115:                                              ; preds = %76
  %116 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %117 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 8, i32* %119, align 8
  %120 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i32 8, i32* %123, align 8
  %124 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i32 8, i32* %127, align 8
  %128 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i32 16, i32* %131, align 4
  %132 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %133 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i32 8, i32* %135, align 4
  %136 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %137 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %115, %76
  ret void
}

declare dso_local i32 @dev_is_pci(i32) #1

declare dso_local i32 @TGA_BUS_TC(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
