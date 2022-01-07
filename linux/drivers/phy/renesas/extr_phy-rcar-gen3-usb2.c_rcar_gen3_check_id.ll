; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_rcar_gen3_check_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_rcar_gen3_check_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_gen3_chan = type { i64, i64, i32 }

@USB_DR_MODE_HOST = common dso_local global i64 0, align 8
@USB2_ADPCTRL = common dso_local global i64 0, align 8
@USB2_ADPCTRL_IDDIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_gen3_chan*)* @rcar_gen3_check_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gen3_check_id(%struct.rcar_gen3_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_gen3_chan*, align 8
  store %struct.rcar_gen3_chan* %0, %struct.rcar_gen3_chan** %3, align 8
  %4 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %3, align 8
  %5 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %3, align 8
  %10 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_DR_MODE_HOST, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 1
  store i32 %15, i32* %2, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %3, align 8
  %18 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USB2_ADPCTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  %23 = load i32, i32* @USB2_ADPCTRL_IDDIG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %16, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
