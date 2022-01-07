; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_pagedir = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vc_data = type { i32, i32, %struct.uni_pagedir**, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@vga_can_do_color = common dso_local global i32 0, align 4
@vga_video_num_columns = common dso_local global i32 0, align 4
@vga_video_num_lines = common dso_local global i32 0, align 4
@vga_scan_lines = common dso_local global i32 0, align 4
@vga_video_font_height = common dso_local global i32 0, align 4
@vga_512_chars = common dso_local global i64 0, align 8
@vgacon_uni_pagedir = common dso_local global %struct.uni_pagedir* null, align 8
@vgacon_refcount = common dso_local global i32 0, align 4
@global_cursor_default = common dso_local global i32 0, align 4
@screen_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@VIDEO_FLAGS_NOCURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @vgacon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgacon_init(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_pagedir*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @vga_can_do_color, align 4
  %7 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 7
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @vga_video_num_columns, align 4
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @vga_video_num_lines, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %20 = load i32, i32* @vga_video_num_columns, align 4
  %21 = load i32, i32* @vga_video_num_lines, align 4
  %22 = call i32 @vc_resize(%struct.vc_data* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %11
  %24 = load i32, i32* @vga_scan_lines, align 4
  %25 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @vga_video_font_height, align 4
  %28 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 0
  store i32 30464, i32* %32, align 8
  %33 = load i64, i64* @vga_512_chars, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 1
  store i32 2048, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %23
  %39 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 2
  %41 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %40, align 8
  %42 = load %struct.uni_pagedir*, %struct.uni_pagedir** %41, align 8
  store %struct.uni_pagedir* %42, %struct.uni_pagedir** %5, align 8
  %43 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %44 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 2
  %45 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %44, align 8
  %46 = icmp ne %struct.uni_pagedir** %45, @vgacon_uni_pagedir
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %49 = call i32 @con_free_unimap(%struct.vc_data* %48)
  %50 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 2
  store %struct.uni_pagedir** @vgacon_uni_pagedir, %struct.uni_pagedir*** %51, align 8
  %52 = load i32, i32* @vgacon_refcount, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @vgacon_refcount, align 4
  br label %54

54:                                               ; preds = %47, %38
  %55 = load %struct.uni_pagedir*, %struct.uni_pagedir** @vgacon_uni_pagedir, align 8
  %56 = icmp ne %struct.uni_pagedir* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %59 = icmp ne %struct.uni_pagedir* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %62 = call i32 @con_set_default_unimap(%struct.vc_data* %61)
  br label %63

63:                                               ; preds = %60, %57, %54
  %64 = load i32, i32* @global_cursor_default, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @screen_info, i32 0, i32 0), align 4
  %68 = load i32, i32* @VIDEO_FLAGS_NOCURSOR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* @global_cursor_default, align 4
  br label %73

73:                                               ; preds = %66, %63
  ret void
}

declare dso_local i32 @vc_resize(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @con_free_unimap(%struct.vc_data*) #1

declare dso_local i32 @con_set_default_unimap(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
