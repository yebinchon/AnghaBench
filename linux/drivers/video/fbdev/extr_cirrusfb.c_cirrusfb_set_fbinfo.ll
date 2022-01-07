; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_set_fbinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_set_fbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fb_info = type { i32, i32, i32, i32, %struct.TYPE_3__, i32*, i32, %struct.fb_var_screeninfo, %struct.cirrusfb_info* }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.fb_var_screeninfo = type { i32 }
%struct.cirrusfb_info = type { i64, i32 }

@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_XPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_FILLRECT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_IMAGEBLIT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_COPYAREA = common dso_local global i32 0, align 4
@noaccel = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_ACCEL_CIRRUS_ALPINE = common dso_local global i32 0, align 4
@cirrusfb_ops = common dso_local global i32 0, align 4
@BT_GD5480 = common dso_local global i64 0, align 8
@MB_ = common dso_local global i32 0, align 4
@cirrusfb_board_info = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @cirrusfb_set_fbinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrusfb_set_fbinfo(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.cirrusfb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 8
  %7 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %6, align 8
  store %struct.cirrusfb_info* %7, %struct.cirrusfb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 7
  store %struct.fb_var_screeninfo* %9, %struct.fb_var_screeninfo** %4, align 8
  %10 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %11 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @FBINFO_DEFAULT, align 4
  %16 = load i32, i32* @FBINFO_HWACCEL_XPAN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FBINFO_HWACCEL_FILLRECT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FBINFO_HWACCEL_IMAGEBLIT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* @noaccel, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %32 = call i64 @is_laguna(%struct.cirrusfb_info* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30, %1
  %35 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @FB_ACCEL_NONE, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 7
  store i32 %40, i32* %43, align 4
  br label %49

44:                                               ; preds = %30
  %45 = load i32, i32* @FB_ACCEL_CIRRUS_ALPINE, align 4
  %46 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 7
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %34
  %50 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 5
  store i32* @cirrusfb_ops, i32** %51, align 8
  %52 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %53 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BT_GD5480, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %49
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 16
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* @MB_, align 4
  %64 = mul nsw i32 1, %63
  %65 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %57
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* @MB_, align 4
  %76 = mul nsw i32 2, %75
  %77 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %74, %69
  br label %82

82:                                               ; preds = %81, %49
  %83 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cirrusfb_board_info, align 8
  %88 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %89 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strlcpy(i32 %86, i32 %93, i32 4)
  %95 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %111

105:                                              ; preds = %82
  %106 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sdiv i32 %109, 4
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %82
  %112 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %113 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 5
  store i64 0, i64* %114, align 8
  %115 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  %121 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  %124 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  %127 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %128 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %127, i32 0, i32 3
  %129 = call i32 @fb_alloc_cmap(i32* %128, i32 256, i32 0)
  ret i32 0
}

declare dso_local i64 @is_laguna(%struct.cirrusfb_info*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
