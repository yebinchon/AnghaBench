; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_send_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32, i32 }
%struct.pd_message = type { i32 }

@TCPC_TX_SOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32)* @tcpm_pd_send_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pd_send_control(%struct.tcpm_port* %0, i32 %1) #0 {
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pd_message, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.pd_message* %5, i32 0, i32 4)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %9 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %12 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %15 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %18 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PD_HEADER_LE(i32 %7, i32 %10, i32 %13, i32 %16, i32 %19, i32 0)
  %21 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %23 = load i32, i32* @TCPC_TX_SOP, align 4
  %24 = call i32 @tcpm_pd_transmit(%struct.tcpm_port* %22, i32 %23, %struct.pd_message* %5)
  ret i32 %24
}

declare dso_local i32 @memset(%struct.pd_message*, i32, i32) #1

declare dso_local i32 @PD_HEADER_LE(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tcpm_pd_transmit(%struct.tcpm_port*, i32, %struct.pd_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
