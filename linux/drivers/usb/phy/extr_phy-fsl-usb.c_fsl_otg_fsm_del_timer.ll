; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_fsm_del_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_fsm_del_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_fsm = type { i32 }
%struct.fsl_otg_timer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.otg_fsm*, i32)* @fsl_otg_fsm_del_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_otg_fsm_del_timer(%struct.otg_fsm* %0, i32 %1) #0 {
  %3 = alloca %struct.otg_fsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_otg_timer*, align 8
  store %struct.otg_fsm* %0, %struct.otg_fsm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.fsl_otg_timer* @fsl_otg_get_timer(i32 %6)
  store %struct.fsl_otg_timer* %7, %struct.fsl_otg_timer** %5, align 8
  %8 = load %struct.fsl_otg_timer*, %struct.fsl_otg_timer** %5, align 8
  %9 = icmp ne %struct.fsl_otg_timer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %15

11:                                               ; preds = %2
  %12 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %13 = load %struct.fsl_otg_timer*, %struct.fsl_otg_timer** %5, align 8
  %14 = call i32 @fsl_otg_del_timer(%struct.otg_fsm* %12, %struct.fsl_otg_timer* %13)
  br label %15

15:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.fsl_otg_timer* @fsl_otg_get_timer(i32) #1

declare dso_local i32 @fsl_otg_del_timer(%struct.otg_fsm*, %struct.fsl_otg_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
