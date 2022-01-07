; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_modedb.c_fb_var_to_videomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_modedb.c_fb_var_to_videomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FB_VMODE_MASK = common dso_local global i32 0, align 4
@FB_MODE_IS_FROM_VAR = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fb_var_to_videomode(%struct.fb_videomode* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.fb_videomode*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_videomode* %0, %struct.fb_videomode** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %9 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %10 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %9, i32 0, i32 13
  store i32* null, i32** %10, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %15 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %20 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %25 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 8
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %30 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %35 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %40 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %45 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %50 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %55 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %60 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %59, i32 0, i32 11
  store i32 %58, i32* %60, align 4
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FB_VMODE_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %67 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @FB_MODE_IS_FROM_VAR, align 4
  %69 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %70 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 8
  %71 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %72 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %71, i32 0, i32 9
  store i32 0, i32* %72, align 4
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %2
  br label %149

78:                                               ; preds = %2
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PICOS2KHZ(i32 %81)
  %83 = mul nsw i32 %82, 1000
  store i32 %83, i32* %5, align 4
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %94, %97
  store i32 %98, i32* %7, align 4
  %99 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %100 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  store i32 %113, i32* %8, align 4
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %78
  %121 = load i32, i32* %8, align 4
  %122 = sdiv i32 %121, 2
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %78
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i32, i32* %8, align 4
  %132 = mul nsw i32 %131, 2
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %130, %123
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136, %133
  br label %149

140:                                              ; preds = %136
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %7, align 4
  %143 = sdiv i32 %141, %142
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %8, align 4
  %146 = sdiv i32 %144, %145
  %147 = load %struct.fb_videomode*, %struct.fb_videomode** %3, align 8
  %148 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %147, i32 0, i32 9
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %140, %139, %77
  ret void
}

declare dso_local i32 @PICOS2KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
