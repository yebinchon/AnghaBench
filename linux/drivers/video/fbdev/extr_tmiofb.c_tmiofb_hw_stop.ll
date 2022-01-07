; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tmiofb.c_tmiofb_hw_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tmiofb.c_tmiofb_hw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tmio_fb_data = type { i32 (%struct.platform_device.0*, i32)* }
%struct.platform_device.0 = type opaque
%struct.fb_info = type { %struct.tmiofb_par* }
%struct.tmiofb_par = type { i64, i64 }

@CCR_UGCC = common dso_local global i64 0, align 8
@LCR_GM = common dso_local global i64 0, align 8
@LCR_LCDCCRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tmiofb_hw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmiofb_hw_stop(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tmio_fb_data*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.tmiofb_par*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.tmio_fb_data* @dev_get_platdata(i32* %7)
  store %struct.tmio_fb_data* %8, %struct.tmio_fb_data** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.fb_info* %10, %struct.fb_info** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.tmiofb_par*, %struct.tmiofb_par** %12, align 8
  store %struct.tmiofb_par* %13, %struct.tmiofb_par** %5, align 8
  %14 = load %struct.tmiofb_par*, %struct.tmiofb_par** %5, align 8
  %15 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CCR_UGCC, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @tmio_iowrite16(i32 0, i64 %18)
  %20 = load %struct.tmiofb_par*, %struct.tmiofb_par** %5, align 8
  %21 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LCR_GM, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @tmio_iowrite16(i32 0, i64 %24)
  %26 = load %struct.tmio_fb_data*, %struct.tmio_fb_data** %3, align 8
  %27 = getelementptr inbounds %struct.tmio_fb_data, %struct.tmio_fb_data* %26, i32 0, i32 0
  %28 = load i32 (%struct.platform_device.0*, i32)*, i32 (%struct.platform_device.0*, i32)** %27, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = bitcast %struct.platform_device* %29 to %struct.platform_device.0*
  %31 = call i32 %28(%struct.platform_device.0* %30, i32 0)
  %32 = load %struct.tmiofb_par*, %struct.tmiofb_par** %5, align 8
  %33 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LCR_LCDCCRC, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @tmio_iowrite16(i32 16, i64 %36)
  ret i32 0
}

declare dso_local %struct.tmio_fb_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @tmio_iowrite16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
