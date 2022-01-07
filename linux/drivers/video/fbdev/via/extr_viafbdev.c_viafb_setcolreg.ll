; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_viafbdev.c_viafb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_viafbdev.c_viafb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_10__, %struct.TYPE_6__, %struct.viafb_par* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.viafb_par = type { i64 }

@FB_VISUAL_PSEUDOCOLOR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@viafb_dual_fb = common dso_local global i32 0, align 4
@IGA1 = common dso_local global i64 0, align 8
@IGA2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @viafb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viafb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.viafb_par*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 3
  %20 = load %struct.viafb_par*, %struct.viafb_par** %19, align 8
  store %struct.viafb_par* %20, %struct.viafb_par** %14, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FB_VISUAL_PSEUDOCOLOR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %6
  %28 = load i32, i32* %8, align 4
  %29 = icmp ugt i32 %28, 255
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %132

33:                                               ; preds = %27
  %34 = load i32, i32* @viafb_dual_fb, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.viafb_par*, %struct.viafb_par** %14, align 8
  %38 = getelementptr inbounds %struct.viafb_par, %struct.viafb_par* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IGA1, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = lshr i32 %44, 8
  %46 = load i32, i32* %10, align 4
  %47 = lshr i32 %46, 8
  %48 = load i32, i32* %11, align 4
  %49 = lshr i32 %48, 8
  %50 = call i32 @viafb_set_primary_color_register(i32 %43, i32 %45, i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %42, %36
  %52 = load i32, i32* @viafb_dual_fb, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.viafb_par*, %struct.viafb_par** %14, align 8
  %56 = getelementptr inbounds %struct.viafb_par, %struct.viafb_par* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IGA2, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = lshr i32 %62, 8
  %64 = load i32, i32* %10, align 4
  %65 = lshr i32 %64, 8
  %66 = load i32, i32* %11, align 4
  %67 = lshr i32 %66, 8
  %68 = call i32 @viafb_set_secondary_color_register(i32 %61, i32 %63, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %60, %54
  br label %131

70:                                               ; preds = %6
  %71 = load i32, i32* %8, align 4
  %72 = icmp ugt i32 %71, 15
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %132

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 16, %82
  %84 = lshr i32 %77, %83
  %85 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %84, %89
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 16, %96
  %98 = lshr i32 %91, %97
  %99 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %98, %103
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 16, %110
  %112 = lshr i32 %105, %111
  %113 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %112, %117
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %16, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %17, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i32*
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %123, i32* %130, align 4
  br label %131

131:                                              ; preds = %76, %69
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %131, %73, %30
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i32 @viafb_set_primary_color_register(i32, i32, i32, i32) #1

declare dso_local i32 @viafb_set_secondary_color_register(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
