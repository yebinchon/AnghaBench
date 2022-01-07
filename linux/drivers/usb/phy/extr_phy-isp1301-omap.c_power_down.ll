; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-isp1301-omap.c_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-isp1301-omap.c_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1301 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@ISP1301_MODE_CONTROL_1 = common dso_local global i32 0, align 4
@MC1_SUSPEND = common dso_local global i32 0, align 4
@ISP1301_OTG_CONTROL_1 = common dso_local global i32 0, align 4
@OTG1_ID_PULLDOWN = common dso_local global i32 0, align 4
@MC1_DAT_SE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1301*)* @power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_down(%struct.isp1301* %0) #0 {
  %2 = alloca %struct.isp1301*, align 8
  store %struct.isp1301* %0, %struct.isp1301** %2, align 8
  %3 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %4 = load %struct.isp1301*, %struct.isp1301** %2, align 8
  %5 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %3, i32* %8, align 4
  %9 = load %struct.isp1301*, %struct.isp1301** %2, align 8
  %10 = load i32, i32* @ISP1301_MODE_CONTROL_1, align 4
  %11 = load i32, i32* @MC1_SUSPEND, align 4
  %12 = call i32 @isp1301_set_bits(%struct.isp1301* %9, i32 %10, i32 %11)
  %13 = load %struct.isp1301*, %struct.isp1301** %2, align 8
  %14 = load i32, i32* @ISP1301_OTG_CONTROL_1, align 4
  %15 = load i32, i32* @OTG1_ID_PULLDOWN, align 4
  %16 = call i32 @isp1301_clear_bits(%struct.isp1301* %13, i32 %14, i32 %15)
  %17 = load %struct.isp1301*, %struct.isp1301** %2, align 8
  %18 = load i32, i32* @ISP1301_MODE_CONTROL_1, align 4
  %19 = load i32, i32* @MC1_DAT_SE0, align 4
  %20 = call i32 @isp1301_clear_bits(%struct.isp1301* %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @isp1301_set_bits(%struct.isp1301*, i32, i32) #1

declare dso_local i32 @isp1301_clear_bits(%struct.isp1301*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
