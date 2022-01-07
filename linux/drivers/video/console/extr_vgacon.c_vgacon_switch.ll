; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.vc_data = type { i32, i32, i64, i32, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VGA_FONTWIDTH = common dso_local global i32 0, align 4
@screen_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@vga_default_font_height = common dso_local global i32 0, align 4
@vga_video_num_columns = common dso_local global i32 0, align 4
@vga_video_num_lines = common dso_local global i32 0, align 4
@vga_is_gfx = common dso_local global i32 0, align 4
@vga_vram_size = common dso_local global i64 0, align 8
@vgacon_xres = common dso_local global i32 0, align 4
@vgacon_yres = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*)* @vgacon_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_switch(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %6 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @VGA_FONTWIDTH, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %13, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @screen_info, i32 0, i32 0), align 4
  %20 = load i32, i32* @vga_default_font_height, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %21, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* @vga_video_num_columns, align 4
  %30 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* @vga_video_num_lines, align 4
  %33 = load i32, i32* @vga_is_gfx, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %87, label %35

35:                                               ; preds = %1
  %36 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @vga_vram_size, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i64, i64* @vga_vram_size, align 8
  br label %55

51:                                               ; preds = %35
  %52 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi i64 [ %50, %49 ], [ %54, %51 ]
  %57 = call i32 @scr_memcpyw(i32* %39, i32* %43, i64 %56)
  %58 = load i32, i32* @vgacon_xres, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @vgacon_yres, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %61, %55
  %66 = load i32, i32* @vga_video_num_columns, align 4
  %67 = srem i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @vga_video_num_columns, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @screen_info, i32 0, i32 1), align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i32, i32* @vga_video_num_lines, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %79 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %83 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @vgacon_doresize(%struct.vc_data* %78, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %77, %73, %69, %65, %61
  br label %87

87:                                               ; preds = %86, %1
  %88 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %89 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @vgacon_scrollback_switch(i32 %90)
  ret i32 0
}

declare dso_local i32 @scr_memcpyw(i32*, i32*, i64) #1

declare dso_local i32 @vgacon_doresize(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @vgacon_scrollback_switch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
