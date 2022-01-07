; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.fb_var_screeninfo, %struct.lynxfb_par* }
%struct.TYPE_2__ = type { i64 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i64 }
%struct.lynxfb_par = type { i32*, %struct.lynxfb_crtc }
%struct.lynxfb_crtc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"regno = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @lynxfb_ops_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lynxfb_ops_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.lynxfb_par*, align 8
  %15 = alloca %struct.lynxfb_crtc*, align 8
  %16 = alloca %struct.fb_var_screeninfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 2
  %21 = load %struct.lynxfb_par*, %struct.lynxfb_par** %20, align 8
  store %struct.lynxfb_par* %21, %struct.lynxfb_par** %14, align 8
  %22 = load %struct.lynxfb_par*, %struct.lynxfb_par** %14, align 8
  %23 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %22, i32 0, i32 1
  store %struct.lynxfb_crtc* %23, %struct.lynxfb_crtc** %15, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 1
  store %struct.fb_var_screeninfo* %25, %struct.fb_var_screeninfo** %16, align 8
  store i32 0, i32* %17, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ugt i32 %26, 256
  br i1 %27, label %28, label %33

28:                                               ; preds = %6
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %129

33:                                               ; preds = %6
  %34 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = mul i32 %40, 77
  %42 = load i32, i32* %10, align 4
  %43 = mul i32 %42, 151
  %44 = add i32 %41, %43
  %45 = load i32, i32* %11, align 4
  %46 = mul i32 %45, 28
  %47 = add i32 %44, %46
  %48 = lshr i32 %47, 8
  store i32 %48, i32* %11, align 4
  store i32 %48, i32* %10, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %39, %33
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FB_VISUAL_PSEUDOCOLOR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = lshr i32 %62, 8
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = lshr i32 %64, 8
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = lshr i32 %66, 8
  store i32 %67, i32* %11, align 4
  %68 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %15, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @hw_sm750_setColReg(%struct.lynxfb_crtc* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %17, align 4
  br label %127

74:                                               ; preds = %54, %49
  %75 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = icmp ult i32 %82, 256
  br i1 %83, label %84, label %124

84:                                               ; preds = %81
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 16
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 24
  br i1 %98, label %99, label %123

99:                                               ; preds = %94, %89, %84
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 3
  %103 = call i32 @chan_to_field(i32 %100, i32* %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 2
  %107 = call i32 @chan_to_field(i32 %104, i32* %106)
  %108 = load i32, i32* %18, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 1
  %113 = call i32 @chan_to_field(i32 %110, i32* %112)
  %114 = load i32, i32* %18, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load %struct.lynxfb_par*, %struct.lynxfb_par** %14, align 8
  %118 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  br label %127

123:                                              ; preds = %94
  br label %124

124:                                              ; preds = %123, %81, %74
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %17, align 4
  br label %127

127:                                              ; preds = %124, %99, %61
  %128 = load i32, i32* %17, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %127, %28
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @hw_sm750_setColReg(%struct.lynxfb_crtc*, i32, i32, i32, i32) #1

declare dso_local i32 @chan_to_field(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
