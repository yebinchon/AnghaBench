; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_handle_mode_mismatch_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_handle_mode_mismatch_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@GINTSTS_MODEMIS = common dso_local global i32 0, align 4
@GINTSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Mode Mismatch Interrupt: currently in %s mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_handle_mode_mismatch_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_handle_mode_mismatch_intr(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %3 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %4 = load i32, i32* @GINTSTS_MODEMIS, align 4
  %5 = load i32, i32* @GINTSTS, align 4
  %6 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %3, i32 %4, i32 %5)
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %11 = call i64 @dwc2_is_host_mode(%struct.dwc2_hsotg* %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @dev_warn(i32 %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %14)
  ret void
}

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*) #1

declare dso_local i64 @dwc2_is_host_mode(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
