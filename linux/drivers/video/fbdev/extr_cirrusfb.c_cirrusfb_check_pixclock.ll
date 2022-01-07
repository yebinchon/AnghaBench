; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_check_pixclock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_check_pixclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }
%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_3__, i32, %struct.cirrusfb_info* }
%struct.TYPE_3__ = type { i64 }
%struct.cirrusfb_info = type { i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"desired pixclock: %ld kHz\0A\00", align 1
@cirrusfb_board_info = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Frequency greater than maxclock (%ld kHz)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MB_ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @cirrusfb_check_pixclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrusfb_check_pixclock(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cirrusfb_info*, align 8
  %9 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %11, align 8
  store %struct.cirrusfb_info* %12, %struct.cirrusfb_info** %8, align 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 3
  store i32 %16, i32* %9, align 4
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @PICOS2KHZ(i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cirrusfb_board_info, align 8
  %27 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %28 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %38 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %98

50:                                               ; preds = %2
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %57 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  switch i64 %58, label %73 [
    i64 131, label %59
    i64 128, label %59
    i64 129, label %59
    i64 130, label %66
  ]

59:                                               ; preds = %55, %55, %55
  %60 = load i64, i64* %6, align 8
  %61 = icmp sgt i64 %60, 85500
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %64 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %63, i32 0, i32 1
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  br label %74

66:                                               ; preds = %55
  %67 = load i64, i64* %6, align 8
  %68 = icmp sgt i64 %67, 135100
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %71 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %66
  br label %74

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %72, %65
  br label %75

75:                                               ; preds = %74, %50
  %76 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %77 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %76, i32 0, i32 2
  store i32 0, i32* %77, align 4
  %78 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %79 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 128
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MB_, align 8
  %88 = icmp sle i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 16
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %96 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %95, i32 0, i32 2
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %89, %82, %75
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %42
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @PICOS2KHZ(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
