; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_init_tcpc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_init_tcpc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpc_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@tcpm_init = common dso_local global i32 0, align 4
@tcpm_get_vbus = common dso_local global i32 0, align 4
@tcpm_get_current_limit = common dso_local global i32 0, align 4
@tcpm_set_cc = common dso_local global i32 0, align 4
@tcpm_get_cc = common dso_local global i32 0, align 4
@tcpm_set_polarity = common dso_local global i32 0, align 4
@tcpm_set_vconn = common dso_local global i32 0, align 4
@tcpm_set_vbus = common dso_local global i32 0, align 4
@tcpm_set_pd_rx = common dso_local global i32 0, align 4
@tcpm_set_roles = common dso_local global i32 0, align 4
@tcpm_start_toggling = common dso_local global i32 0, align 4
@tcpm_pd_transmit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpc_dev*)* @init_tcpc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tcpc_dev(%struct.tcpc_dev* %0) #0 {
  %2 = alloca %struct.tcpc_dev*, align 8
  store %struct.tcpc_dev* %0, %struct.tcpc_dev** %2, align 8
  %3 = load i32, i32* @tcpm_init, align 4
  %4 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %5 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %4, i32 0, i32 11
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @tcpm_get_vbus, align 4
  %7 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %8 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %7, i32 0, i32 10
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @tcpm_get_current_limit, align 4
  %10 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %11 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @tcpm_set_cc, align 4
  %13 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %14 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @tcpm_get_cc, align 4
  %16 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %17 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @tcpm_set_polarity, align 4
  %19 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %20 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @tcpm_set_vconn, align 4
  %22 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %23 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @tcpm_set_vbus, align 4
  %25 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %26 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @tcpm_set_pd_rx, align 4
  %28 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %29 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @tcpm_set_roles, align 4
  %31 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %32 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @tcpm_start_toggling, align 4
  %34 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %35 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @tcpm_pd_transmit, align 4
  %37 = load %struct.tcpc_dev*, %struct.tcpc_dev** %2, align 8
  %38 = getelementptr inbounds %struct.tcpc_dev, %struct.tcpc_dev* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
