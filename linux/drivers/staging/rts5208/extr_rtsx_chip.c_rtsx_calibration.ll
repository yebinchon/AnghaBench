; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @rtsx_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_calibration(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %3, i32 27, i32 4958)
  %5 = call i32 @wait_timeout(i32 10)
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %7 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %6, i32 0, i32 640)
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %9 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %8, i32 1, i32 28946)
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %11 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %10, i32 1, i32 28944)
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %13 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %12, i32 1, i32 28946)
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %15 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %14, i32 1, i32 28947)
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %17 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %16, i32 0, i32 648)
  ret void
}

declare dso_local i32 @rtsx_write_phy_register(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @wait_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
