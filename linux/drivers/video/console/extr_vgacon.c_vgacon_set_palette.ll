; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_set_palette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vgacon_set_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@vga_video_type = common dso_local global i64 0, align 8
@VIDEO_TYPE_VGAC = common dso_local global i64 0, align 8
@vga_palette_blanked = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i8*)* @vgacon_set_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgacon_set_palette(%struct.vc_data* %0, i8* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @vga_video_type, align 8
  %6 = load i64, i64* @VIDEO_TYPE_VGAC, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @vga_palette_blanked, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %13 = call i32 @con_is_visible(%struct.vc_data* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %8, %2
  br label %20

16:                                               ; preds = %11
  %17 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @vga_set_palette(%struct.vc_data* %17, i8* %18)
  br label %20

20:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @con_is_visible(%struct.vc_data*) #1

declare dso_local i32 @vga_set_palette(%struct.vc_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
