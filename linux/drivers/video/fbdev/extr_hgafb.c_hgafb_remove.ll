; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hgafb.c_hgafb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hgafb.c_hgafb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fb_info = type { i32 }

@hga_vram = common dso_local global i32 0, align 4
@release_io_ports = common dso_local global i64 0, align 8
@release_io_port = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hgafb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgafb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.fb_info* %5, %struct.fb_info** %3, align 8
  %6 = call i32 (...) @hga_txt_mode()
  %7 = call i32 (...) @hga_clear_screen()
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = icmp ne %struct.fb_info* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = call i32 @unregister_framebuffer(%struct.fb_info* %11)
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = call i32 @framebuffer_release(%struct.fb_info* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @hga_vram, align 4
  %17 = call i32 @iounmap(i32 %16)
  %18 = load i64, i64* @release_io_ports, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @release_region(i32 944, i32 12)
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i64, i64* @release_io_port, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @release_region(i32 959, i32 1)
  br label %27

27:                                               ; preds = %25, %22
  ret i32 0
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @hga_txt_mode(...) #1

declare dso_local i32 @hga_clear_screen(...) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
