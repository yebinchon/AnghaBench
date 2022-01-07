; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_send_pps_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_send_pps_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32, i32 }
%struct.pd_message = type { i32*, i32 }

@PD_DATA_REQUEST = common dso_local global i32 0, align 4
@TCPC_TX_SOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @tcpm_pd_send_pps_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pd_send_pps_request(%struct.tcpm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca %struct.pd_message, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  %7 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %8 = call i32 @tcpm_pd_build_pps_request(%struct.tcpm_port* %7, i32* %6)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = call i32 @memset(%struct.pd_message* %4, i32 0, i32 16)
  %15 = load i32, i32* @PD_DATA_REQUEST, align 4
  %16 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %17 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %20 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %23 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %26 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PD_HEADER_LE(i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 1)
  %29 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %4, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %4, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %36 = load i32, i32* @TCPC_TX_SOP, align 4
  %37 = call i32 @tcpm_pd_transmit(%struct.tcpm_port* %35, i32 %36, %struct.pd_message* %4)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %13, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @tcpm_pd_build_pps_request(%struct.tcpm_port*, i32*) #1

declare dso_local i32 @memset(%struct.pd_message*, i32, i32) #1

declare dso_local i32 @PD_HEADER_LE(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @tcpm_pd_transmit(%struct.tcpm_port*, i32, %struct.pd_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
