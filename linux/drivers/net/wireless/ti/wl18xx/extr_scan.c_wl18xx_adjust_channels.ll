; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_scan.c_wl18xx_adjust_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_scan.c_wl18xx_adjust_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl18xx_cmd_scan_params = type { i32, i32, i32, i32, i32, i32 }
%struct.wlcore_scan_channels = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl18xx_cmd_scan_params*, %struct.wlcore_scan_channels*)* @wl18xx_adjust_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl18xx_adjust_channels(%struct.wl18xx_cmd_scan_params* %0, %struct.wlcore_scan_channels* %1) #0 {
  %3 = alloca %struct.wl18xx_cmd_scan_params*, align 8
  %4 = alloca %struct.wlcore_scan_channels*, align 8
  store %struct.wl18xx_cmd_scan_params* %0, %struct.wl18xx_cmd_scan_params** %3, align 8
  store %struct.wlcore_scan_channels* %1, %struct.wlcore_scan_channels** %4, align 8
  %5 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %3, align 8
  %6 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %4, align 8
  %9 = getelementptr inbounds %struct.wlcore_scan_channels, %struct.wlcore_scan_channels* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @memcpy(i32 %7, i32 %10, i32 4)
  %12 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %3, align 8
  %13 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %4, align 8
  %16 = getelementptr inbounds %struct.wlcore_scan_channels, %struct.wlcore_scan_channels* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcpy(i32 %14, i32 %17, i32 4)
  %19 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %4, align 8
  %20 = getelementptr inbounds %struct.wlcore_scan_channels, %struct.wlcore_scan_channels* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %3, align 8
  %23 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %4, align 8
  %25 = getelementptr inbounds %struct.wlcore_scan_channels, %struct.wlcore_scan_channels* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %3, align 8
  %28 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %3, align 8
  %30 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %4, align 8
  %33 = getelementptr inbounds %struct.wlcore_scan_channels, %struct.wlcore_scan_channels* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %31, i32 %34, i32 4)
  %36 = load %struct.wl18xx_cmd_scan_params*, %struct.wl18xx_cmd_scan_params** %3, align 8
  %37 = getelementptr inbounds %struct.wl18xx_cmd_scan_params, %struct.wl18xx_cmd_scan_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %4, align 8
  %40 = getelementptr inbounds %struct.wlcore_scan_channels, %struct.wlcore_scan_channels* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %38, i32 %41, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
