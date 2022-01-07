; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_rcar_gen3_phy_usb2_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_rcar_gen3_phy_usb2_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.rcar_gen3_phy = type { i32, %struct.rcar_gen3_chan* }
%struct.rcar_gen3_chan = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rcar_gen3_phy_usb2_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gen3_phy_usb2_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.rcar_gen3_phy*, align 8
  %4 = alloca %struct.rcar_gen3_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %6 = load %struct.phy*, %struct.phy** %2, align 8
  %7 = call %struct.rcar_gen3_phy* @phy_get_drvdata(%struct.phy* %6)
  store %struct.rcar_gen3_phy* %7, %struct.rcar_gen3_phy** %3, align 8
  %8 = load %struct.rcar_gen3_phy*, %struct.rcar_gen3_phy** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_gen3_phy, %struct.rcar_gen3_phy* %8, i32 0, i32 1
  %10 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %9, align 8
  store %struct.rcar_gen3_chan* %10, %struct.rcar_gen3_chan** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %4, align 8
  %12 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.rcar_gen3_phy*, %struct.rcar_gen3_phy** %3, align 8
  %15 = getelementptr inbounds %struct.rcar_gen3_phy, %struct.rcar_gen3_phy* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %4, align 8
  %17 = call i32 @rcar_gen3_are_all_rphys_power_off(%struct.rcar_gen3_chan* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %4, align 8
  %22 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %4, align 8
  %27 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @regulator_disable(i64 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %20
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %4, align 8
  %33 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.rcar_gen3_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcar_gen3_are_all_rphys_power_off(%struct.rcar_gen3_chan*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
