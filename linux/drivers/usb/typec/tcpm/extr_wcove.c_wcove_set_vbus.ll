; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_set_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_set_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpc_dev = type { i32 }
%struct.wcove_typec = type { i32 }

@WCOVE_FUNC_DRIVE_VBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpc_dev*, i32, i32)* @wcove_set_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_set_vbus(%struct.tcpc_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcpc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wcove_typec*, align 8
  store %struct.tcpc_dev* %0, %struct.tcpc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tcpc_dev*, %struct.tcpc_dev** %4, align 8
  %9 = call %struct.wcove_typec* @tcpc_to_wcove(%struct.tcpc_dev* %8)
  store %struct.wcove_typec* %9, %struct.wcove_typec** %7, align 8
  %10 = load %struct.wcove_typec*, %struct.wcove_typec** %7, align 8
  %11 = load i32, i32* @WCOVE_FUNC_DRIVE_VBUS, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @wcove_typec_func(%struct.wcove_typec* %10, i32 %11, i32 %12)
  ret i32 %13
}

declare dso_local %struct.wcove_typec* @tcpc_to_wcove(%struct.tcpc_dev*) #1

declare dso_local i32 @wcove_typec_func(%struct.wcove_typec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
