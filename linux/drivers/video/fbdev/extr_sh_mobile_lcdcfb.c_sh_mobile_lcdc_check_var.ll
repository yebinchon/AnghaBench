; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { %struct.sh_mobile_lcdc_chan* }
%struct.sh_mobile_lcdc_chan = type { %struct.TYPE_2__*, %struct.sh_mobile_lcdc_priv* }
%struct.TYPE_2__ = type { i32, %struct.fb_videomode* }
%struct.fb_videomode = type { i32, i32 }
%struct.sh_mobile_lcdc_priv = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @sh_mobile_lcdc_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %7 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_videomode*, align 8
  %14 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %16, align 8
  store %struct.sh_mobile_lcdc_chan* %17, %struct.sh_mobile_lcdc_chan** %6, align 8
  %18 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %18, i32 0, i32 1
  %20 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %19, align 8
  store %struct.sh_mobile_lcdc_priv* %20, %struct.sh_mobile_lcdc_priv** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %99, %2
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %24 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %22, %27
  br i1 %28, label %29, label %102

29:                                               ; preds = %21
  %30 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %31 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.fb_videomode*, %struct.fb_videomode** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %34, i64 %36
  store %struct.fb_videomode* %37, %struct.fb_videomode** %13, align 8
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fb_videomode*, %struct.fb_videomode** %13, align 8
  %42 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %29
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fb_videomode*, %struct.fb_videomode** %13, align 8
  %50 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %29
  br label %99

54:                                               ; preds = %45
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = load %struct.fb_videomode*, %struct.fb_videomode** %13, align 8
  %63 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fb_videomode*, %struct.fb_videomode** %13, align 8
  %66 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = add nsw i32 %61, %68
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fb_videomode*, %struct.fb_videomode** %13, align 8
  %74 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @min(i32 %72, i32 %75)
  %77 = mul nsw i32 2, %76
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fb_videomode*, %struct.fb_videomode** %13, align 8
  %82 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @min(i32 %80, i32 %83)
  %85 = mul nsw i32 %77, %84
  %86 = sub nsw i32 %69, %85
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %54
  %91 = load %struct.fb_videomode*, %struct.fb_videomode** %13, align 8
  %92 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  %94 = load %struct.fb_videomode*, %struct.fb_videomode** %13, align 8
  %95 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %90, %54
  br label %99

99:                                               ; preds = %98, %53
  %100 = load i32, i32* %11, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %21

102:                                              ; preds = %21
  %103 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %6, align 8
  %104 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %146

115:                                              ; preds = %109
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %102
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %124 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %125 = call i32 @__sh_mobile_lcdc_check_var(%struct.fb_var_screeninfo* %123, %struct.fb_info* %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %3, align 4
  br label %146

130:                                              ; preds = %122
  %131 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %7, align 8
  %132 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %7, align 8
  %137 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %140 = call i64 @sh_mobile_format_fourcc(%struct.fb_var_screeninfo* %139)
  %141 = icmp ne i64 %138, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %146

145:                                              ; preds = %135, %130
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %142, %128, %112
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @__sh_mobile_lcdc_check_var(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

declare dso_local i64 @sh_mobile_format_fourcc(%struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
