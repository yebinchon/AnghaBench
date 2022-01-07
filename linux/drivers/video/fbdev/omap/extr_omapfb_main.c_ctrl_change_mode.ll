; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_ctrl_change_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_ctrl_change_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.fb_var_screeninfo, %struct.omapfb_plane_struct* }
%struct.TYPE_4__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.omapfb_plane_struct = type { %struct.TYPE_6__, i32, i32, %struct.omapfb_device* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.omapfb_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32, i64, i32, i32, i32, i32, i32, i32)*, i32 (i32)*, i32 (i32, i32, i32, i32, i32)*, i32 (...)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @ctrl_change_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_change_mode(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.omapfb_plane_struct*, align 8
  %7 = alloca %struct.omapfb_device*, align 8
  %8 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 2
  %11 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %10, align 8
  store %struct.omapfb_plane_struct* %11, %struct.omapfb_plane_struct** %6, align 8
  %12 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %13 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %12, i32 0, i32 3
  %14 = load %struct.omapfb_device*, %struct.omapfb_device** %13, align 8
  store %struct.omapfb_device* %14, %struct.omapfb_device** %7, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1
  store %struct.fb_var_screeninfo* %16, %struct.fb_var_screeninfo** %8, align 8
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %19, %23
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = sdiv i32 %31, 8
  %33 = add nsw i32 %24, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %5, align 8
  %35 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %36 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32 (...)*, i32 (...)** %38, align 8
  %40 = icmp ne i32 (...)* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %43 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32 (...)*, i32 (...)** %45, align 8
  %47 = call i32 (...) %46()
  br label %48

48:                                               ; preds = %41, %1
  %49 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %50 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32, i64, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i64, i32, i32, i32, i32, i32, i32)** %52, align 8
  %54 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %55 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %58 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %66 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %70 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %80 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 %53(i32 %56, i32 %60, i64 %61, i32 %64, i32 %68, i32 %72, i32 %75, i32 %78, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %48
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %142

87:                                               ; preds = %48
  %88 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %89 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32 (i32)*, i32 (i32)** %91, align 8
  %93 = icmp ne i32 (i32)* %92, null
  br i1 %93, label %94, label %109

94:                                               ; preds = %87
  %95 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %96 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32 (i32)*, i32 (i32)** %98, align 8
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 %99(i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %142

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %87
  %110 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %111 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %113, align 8
  %115 = icmp ne i32 (i32, i32, i32, i32, i32)* %114, null
  br i1 %115, label %116, label %140

116:                                              ; preds = %109
  %117 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %118 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %120, align 8
  %122 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %123 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %126 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %132 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %136 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 %121(i32 %124, i32 %127, i32 %130, i32 %134, i32 %138)
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %116, %109
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %106, %85
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
