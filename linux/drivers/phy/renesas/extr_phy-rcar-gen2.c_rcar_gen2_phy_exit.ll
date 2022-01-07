; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen2.c_rcar_gen2_phy_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen2.c_rcar_gen2_phy_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.rcar_gen2_phy = type { %struct.rcar_gen2_channel* }
%struct.rcar_gen2_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rcar_gen2_phy_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gen2_phy_exit(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.rcar_gen2_phy*, align 8
  %4 = alloca %struct.rcar_gen2_channel*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.rcar_gen2_phy* @phy_get_drvdata(%struct.phy* %5)
  store %struct.rcar_gen2_phy* %6, %struct.rcar_gen2_phy** %3, align 8
  %7 = load %struct.rcar_gen2_phy*, %struct.rcar_gen2_phy** %3, align 8
  %8 = getelementptr inbounds %struct.rcar_gen2_phy, %struct.rcar_gen2_phy* %7, i32 0, i32 0
  %9 = load %struct.rcar_gen2_channel*, %struct.rcar_gen2_channel** %8, align 8
  store %struct.rcar_gen2_channel* %9, %struct.rcar_gen2_channel** %4, align 8
  %10 = load %struct.rcar_gen2_channel*, %struct.rcar_gen2_channel** %4, align 8
  %11 = getelementptr inbounds %struct.rcar_gen2_channel, %struct.rcar_gen2_channel* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_disable_unprepare(i32 %14)
  %16 = load %struct.rcar_gen2_channel*, %struct.rcar_gen2_channel** %4, align 8
  %17 = getelementptr inbounds %struct.rcar_gen2_channel, %struct.rcar_gen2_channel* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  ret i32 0
}

declare dso_local %struct.rcar_gen2_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
