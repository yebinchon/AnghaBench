; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_rcar_gen3_init_for_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_rcar_gen3_init_for_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_gen3_chan = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_gen3_chan*)* @rcar_gen3_init_for_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_gen3_init_for_host(%struct.rcar_gen3_chan* %0) #0 {
  %2 = alloca %struct.rcar_gen3_chan*, align 8
  store %struct.rcar_gen3_chan* %0, %struct.rcar_gen3_chan** %2, align 8
  %3 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %2, align 8
  %4 = call i32 @rcar_gen3_set_linectrl(%struct.rcar_gen3_chan* %3, i32 1, i32 1)
  %5 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %2, align 8
  %6 = call i32 @rcar_gen3_set_host_mode(%struct.rcar_gen3_chan* %5, i32 1)
  %7 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %2, align 8
  %8 = call i32 @rcar_gen3_enable_vbus_ctrl(%struct.rcar_gen3_chan* %7, i32 1)
  %9 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %2, align 8
  %10 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %2, align 8
  %12 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %11, i32 0, i32 1
  %13 = call i32 @schedule_work(i32* %12)
  ret void
}

declare dso_local i32 @rcar_gen3_set_linectrl(%struct.rcar_gen3_chan*, i32, i32) #1

declare dso_local i32 @rcar_gen3_set_host_mode(%struct.rcar_gen3_chan*, i32) #1

declare dso_local i32 @rcar_gen3_enable_vbus_ctrl(%struct.rcar_gen3_chan*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
