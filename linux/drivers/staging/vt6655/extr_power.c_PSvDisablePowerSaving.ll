; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_power.c_PSvDisablePowerSaving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_power.c_PSvDisablePowerSaving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32 }

@MAC_REG_PSCFG = common dso_local global i32 0, align 4
@PSCFG_AUTOSLEEP = common dso_local global i32 0, align 4
@MAC_REG_TFTCTL = common dso_local global i32 0, align 4
@TFTCTL_HWUTSF = common dso_local global i32 0, align 4
@MAC_REG_PSCTL = common dso_local global i32 0, align 4
@PSCTL_ALBCN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PSvDisablePowerSaving(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %3 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %4 = call i32 @MACbPSWakeup(%struct.vnt_private* %3)
  %5 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MAC_REG_PSCFG, align 4
  %9 = load i32, i32* @PSCFG_AUTOSLEEP, align 4
  %10 = call i32 @MACvRegBitsOff(i32 %7, i32 %8, i32 %9)
  %11 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %12 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAC_REG_TFTCTL, align 4
  %15 = load i32, i32* @TFTCTL_HWUTSF, align 4
  %16 = call i32 @MACvRegBitsOff(i32 %13, i32 %14, i32 %15)
  %17 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %18 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MAC_REG_PSCTL, align 4
  %21 = load i32, i32* @PSCTL_ALBCN, align 4
  %22 = call i32 @MACvRegBitsOn(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %24 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %26 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  ret void
}

declare dso_local i32 @MACbPSWakeup(%struct.vnt_private*) #1

declare dso_local i32 @MACvRegBitsOff(i32, i32, i32) #1

declare dso_local i32 @MACvRegBitsOn(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
