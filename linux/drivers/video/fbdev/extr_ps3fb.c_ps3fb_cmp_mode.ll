; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ps3fb.c_ps3fb_cmp_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ps3fb.c_ps3fb_cmp_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64 }

@FB_VMODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_videomode*, %struct.fb_var_screeninfo*)* @ps3fb_cmp_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3fb_cmp_mode(%struct.fb_videomode* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.fb_videomode* %0, %struct.fb_videomode** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %18 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %53, label %21

21:                                               ; preds = %2
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %26 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %53, label %29

29:                                               ; preds = %21
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %34 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %29
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %42 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %50 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %37, %29, %21, %2
  store i32 -1, i32* %3, align 4
  br label %167

54:                                               ; preds = %45
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FB_VMODE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %61 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %167

65:                                               ; preds = %54
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @max(i64 %68, i32 1)
  store i64 %69, i64* %6, align 8
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @max(i64 %72, i32 1)
  store i64 %73, i64* %7, align 8
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %78 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @max(i64 %76, i32 %79)
  store i64 %80, i64* %8, align 8
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %85 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @max(i64 %83, i32 %86)
  store i64 %87, i64* %9, align 8
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %92 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @max(i64 %90, i32 %93)
  store i64 %94, i64* %10, align 8
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %99 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @max(i64 %97, i32 %100)
  store i64 %101, i64* %11, align 8
  %102 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %103 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = zext i32 %104 to i64
  %106 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %107 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %111 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = zext i32 %112 to i64
  %114 = add nsw i64 %109, %113
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i64, i64* %9, align 8
  %119 = add nsw i64 %117, %118
  %120 = sub nsw i64 %114, %119
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %167

124:                                              ; preds = %65
  %125 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %126 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  %129 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %130 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %134 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 8
  %136 = zext i32 %135 to i64
  %137 = add nsw i64 %132, %136
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* %7, align 8
  %140 = add nsw i64 %138, %139
  %141 = load i64, i64* %11, align 8
  %142 = add nsw i64 %140, %141
  %143 = sub nsw i64 %137, %142
  store i64 %143, i64* %13, align 8
  %144 = load i64, i64* %13, align 8
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %124
  store i32 -1, i32* %3, align 4
  br label %167

147:                                              ; preds = %124
  %148 = load i64, i64* %12, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = load i64, i64* %13, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %167

154:                                              ; preds = %150, %147
  %155 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %156 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %6, align 8
  %159 = sub nsw i64 %157, %158
  %160 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %161 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %7, align 8
  %164 = sub nsw i64 %162, %163
  %165 = mul nsw i64 %159, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %154, %153, %146, %123, %64, %53
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
