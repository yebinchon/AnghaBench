; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.fw_device = type { i32, i32 }
%struct.fwtty_peer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_unit*)* @fwserial_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwserial_update(%struct.fw_unit* %0) #0 {
  %2 = alloca %struct.fw_unit*, align 8
  %3 = alloca %struct.fw_device*, align 8
  %4 = alloca %struct.fwtty_peer*, align 8
  %5 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %2, align 8
  %6 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %7 = call %struct.fw_device* @fw_parent_device(%struct.fw_unit* %6)
  store %struct.fw_device* %7, %struct.fw_device** %3, align 8
  %8 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %9 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %8, i32 0, i32 0
  %10 = call %struct.fwtty_peer* @dev_get_drvdata(i32* %9)
  store %struct.fwtty_peer* %10, %struct.fwtty_peer** %4, align 8
  %11 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %12 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = call i32 (...) @smp_rmb()
  %15 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %16 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %19 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = call i32 (...) @smp_wmb()
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %23 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local %struct.fw_device* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local %struct.fwtty_peer* @dev_get_drvdata(i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
