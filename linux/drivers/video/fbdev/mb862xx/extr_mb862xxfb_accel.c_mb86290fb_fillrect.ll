; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb86290fb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.fb_fillrect = type { i64, i64, i64, i64, i64, i32 }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@GDC_ROP_XOR = common dso_local global i32 0, align 4
@GDC_ROP_COPY = common dso_local global i32 0, align 4
@GDC_TYPE_SETREGISTER = common dso_local global i32 0, align 4
@GDC_REG_MODE_BITMAP = common dso_local global i32 0, align 4
@GDC_TYPE_SETCOLORREGISTER = common dso_local global i32 0, align 4
@GDC_CMD_BODY_FORE_COLOR = common dso_local global i32 0, align 4
@GDC_TYPE_DRAWRECTP = common dso_local global i32 0, align 4
@GDC_CMD_BLT_FILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @mb86290fb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb86290fb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [7 x i64], align 16
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %22 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %27 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %32 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %38 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %30, %25, %2
  br label %158

43:                                               ; preds = %36
  %44 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %45 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %48 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* %5, align 8
  %51 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %52 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %55 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @min(i64 %58, i64 %59)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @min(i64 %61, i64 %62)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %66 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %71 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  store i64 %73, i64* %9, align 8
  %74 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %43
  %81 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %80, %43
  %88 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i64*
  %92 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %93 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %11, align 8
  br label %101

97:                                               ; preds = %80
  %98 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %99 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %97, %87
  %102 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %103 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  switch i32 %104, label %117 [
    i32 128, label %105
    i32 129, label %111
  ]

105:                                              ; preds = %101
  %106 = load i32, i32* @GDC_ROP_XOR, align 4
  %107 = shl i32 %106, 9
  %108 = or i32 256, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [7 x i64], [7 x i64]* %12, i64 0, i64 1
  store i64 %109, i64* %110, align 8
  br label %117

111:                                              ; preds = %101
  %112 = load i32, i32* @GDC_ROP_COPY, align 4
  %113 = shl i32 %112, 9
  %114 = or i32 256, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [7 x i64], [7 x i64]* %12, i64 0, i64 1
  store i64 %115, i64* %116, align 8
  br label %117

117:                                              ; preds = %101, %111, %105
  %118 = load i32, i32* @GDC_TYPE_SETREGISTER, align 4
  %119 = shl i32 %118, 24
  %120 = or i32 %119, 65536
  %121 = load i32, i32* @GDC_REG_MODE_BITMAP, align 4
  %122 = or i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [7 x i64], [7 x i64]* %12, i64 0, i64 0
  store i64 %123, i64* %124, align 16
  %125 = load i32, i32* @GDC_TYPE_SETCOLORREGISTER, align 4
  %126 = shl i32 %125, 24
  %127 = load i32, i32* @GDC_CMD_BODY_FORE_COLOR, align 4
  %128 = shl i32 %127, 16
  %129 = or i32 %126, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [7 x i64], [7 x i64]* %12, i64 0, i64 2
  store i64 %130, i64* %131, align 16
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr inbounds [7 x i64], [7 x i64]* %12, i64 0, i64 3
  store i64 %132, i64* %133, align 8
  %134 = load i32, i32* @GDC_TYPE_DRAWRECTP, align 4
  %135 = shl i32 %134, 24
  %136 = load i32, i32* @GDC_CMD_BLT_FILL, align 4
  %137 = shl i32 %136, 16
  %138 = or i32 %135, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [7 x i64], [7 x i64]* %12, i64 0, i64 4
  store i64 %139, i64* %140, align 16
  %141 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %142 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = shl i64 %143, 16
  %145 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %146 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = or i64 %144, %147
  %149 = getelementptr inbounds [7 x i64], [7 x i64]* %12, i64 0, i64 5
  store i64 %148, i64* %149, align 8
  %150 = load i64, i64* %9, align 8
  %151 = shl i64 %150, 16
  %152 = load i64, i64* %10, align 8
  %153 = or i64 %151, %152
  %154 = getelementptr inbounds [7 x i64], [7 x i64]* %12, i64 0, i64 6
  store i64 %153, i64* %154, align 16
  %155 = getelementptr inbounds [7 x i64], [7 x i64]* %12, i64 0, i64 0
  %156 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %157 = call i32 @mb862xxfb_write_fifo(i32 7, i64* %155, %struct.fb_info* %156)
  br label %158

158:                                              ; preds = %117, %42
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @mb862xxfb_write_fifo(i32, i64*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
