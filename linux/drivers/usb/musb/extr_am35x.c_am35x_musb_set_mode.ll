; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_am35x.c_am35x_musb_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_am35x.c_am35x_musb_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { %struct.device* }
%struct.device = type { i32 }
%struct.musb_hdrc_platform_data = type { %struct.omap_musb_board_data* }
%struct.omap_musb_board_data = type { i32 (i32)* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*, i32)* @am35x_musb_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am35x_musb_set_mode(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.musb_hdrc_platform_data*, align 8
  %7 = alloca %struct.omap_musb_board_data*, align 8
  %8 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.musb*, %struct.musb** %3, align 8
  %10 = getelementptr inbounds %struct.musb, %struct.musb* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.device* %12)
  store %struct.musb_hdrc_platform_data* %13, %struct.musb_hdrc_platform_data** %6, align 8
  %14 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %6, align 8
  %15 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %14, i32 0, i32 0
  %16 = load %struct.omap_musb_board_data*, %struct.omap_musb_board_data** %15, align 8
  store %struct.omap_musb_board_data* %16, %struct.omap_musb_board_data** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.omap_musb_board_data*, %struct.omap_musb_board_data** %7, align 8
  %18 = getelementptr inbounds %struct.omap_musb_board_data, %struct.omap_musb_board_data* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.omap_musb_board_data*, %struct.omap_musb_board_data** %7, align 8
  %23 = getelementptr inbounds %struct.omap_musb_board_data, %struct.omap_musb_board_data* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 %24(i32 %25)
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local %struct.musb_hdrc_platform_data* @dev_get_platdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
