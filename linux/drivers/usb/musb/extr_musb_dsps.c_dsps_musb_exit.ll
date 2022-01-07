; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_musb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_musb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.dsps_glue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*)* @dsps_musb_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsps_musb_exit(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dsps_glue*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %5 = load %struct.musb*, %struct.musb** %2, align 8
  %6 = getelementptr inbounds %struct.musb, %struct.musb* %5, i32 0, i32 2
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dsps_glue* @dev_get_drvdata(i32 %10)
  store %struct.dsps_glue* %11, %struct.dsps_glue** %4, align 8
  %12 = load %struct.musb*, %struct.musb** %2, align 8
  %13 = getelementptr inbounds %struct.musb, %struct.musb* %12, i32 0, i32 1
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = load %struct.musb*, %struct.musb** %2, align 8
  %16 = getelementptr inbounds %struct.musb, %struct.musb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @phy_power_off(i32 %17)
  %19 = load %struct.musb*, %struct.musb** %2, align 8
  %20 = getelementptr inbounds %struct.musb, %struct.musb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @phy_exit(i32 %21)
  %23 = load %struct.dsps_glue*, %struct.dsps_glue** %4, align 8
  %24 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @debugfs_remove_recursive(i32 %25)
  ret i32 0
}

declare dso_local %struct.dsps_glue* @dev_get_drvdata(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
