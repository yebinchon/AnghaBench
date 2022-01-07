; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_reset_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_reset_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.TYPE_3__ = type { i32 }

@TYPEC_POLARITY_CC1 = common dso_local global i32 0, align 4
@TYPEC_STATE_SAFE = common dso_local global i32 0, align 4
@USB_ROLE_NONE = common dso_local global i32 0, align 4
@TYPEC_ORIENTATION_NONE = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*)* @tcpm_reset_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_reset_port(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  %3 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %4 = call i32 @tcpm_unregister_altmodes(%struct.tcpm_port* %3)
  %5 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %6 = call i32 @tcpm_typec_disconnect(%struct.tcpm_port* %5)
  %7 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %8 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %10 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %12 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %11, i32 0, i32 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %15 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %14, i32 0, i32 2
  store i32 -1, i32* %15, align 8
  %16 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %17 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %16, i32 0, i32 7
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %19, align 8
  %21 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %22 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %21, i32 0, i32 7
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 %20(%struct.TYPE_4__* %23, i32 0)
  %25 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %26 = call i32 @tcpm_init_vbus(%struct.tcpm_port* %25)
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %28 = call i32 @tcpm_init_vconn(%struct.tcpm_port* %27)
  %29 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %30 = call i32 @tcpm_set_current_limit(%struct.tcpm_port* %29, i32 0, i32 0)
  %31 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %32 = load i32, i32* @TYPEC_POLARITY_CC1, align 4
  %33 = call i32 @tcpm_set_polarity(%struct.tcpm_port* %31, i32 %32)
  %34 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %35 = load i32, i32* @TYPEC_STATE_SAFE, align 4
  %36 = load i32, i32* @USB_ROLE_NONE, align 4
  %37 = load i32, i32* @TYPEC_ORIENTATION_NONE, align 4
  %38 = call i32 @tcpm_mux_set(%struct.tcpm_port* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %40 = call i32 @tcpm_set_attached_state(%struct.tcpm_port* %39, i32 0)
  %41 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %42 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %44 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @POWER_SUPPLY_USB_TYPE_C, align 4
  %46 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %47 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %49 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @power_supply_changed(i32 %50)
  ret void
}

declare dso_local i32 @tcpm_unregister_altmodes(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_typec_disconnect(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_init_vbus(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_init_vconn(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_set_current_limit(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @tcpm_set_polarity(%struct.tcpm_port*, i32) #1

declare dso_local i32 @tcpm_mux_set(%struct.tcpm_port*, i32, i32, i32) #1

declare dso_local i32 @tcpm_set_attached_state(%struct.tcpm_port*, i32) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
