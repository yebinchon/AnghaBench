; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_tegra-bpmp-thermal.c_tegra_bpmp_thermal_get_num_zones.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_tegra-bpmp-thermal.c_tegra_bpmp_thermal_get_num_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.mrq_thermal_host_to_bpmp_request = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32, %union.mrq_thermal_bpmp_to_host_response* }
%union.mrq_thermal_bpmp_to_host_response = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.tegra_bpmp_message* }
%struct.tegra_bpmp_message = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }

@CMD_THERMAL_GET_NUM_ZONES = common dso_local global i32 0, align 4
@MRQ_THERMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*, i32*)* @tegra_bpmp_thermal_get_num_zones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_thermal_get_num_zones(%struct.tegra_bpmp* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mrq_thermal_host_to_bpmp_request, align 8
  %7 = alloca %union.mrq_thermal_bpmp_to_host_response, align 4
  %8 = alloca %struct.tegra_bpmp_message, align 8
  %9 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = bitcast %struct.mrq_thermal_host_to_bpmp_request* %6 to %struct.tegra_bpmp_message*
  %11 = call i32 @memset(%struct.tegra_bpmp_message* %10, i32 0, i32 40)
  %12 = load i32, i32* @CMD_THERMAL_GET_NUM_ZONES, align 4
  %13 = getelementptr inbounds %struct.mrq_thermal_host_to_bpmp_request, %struct.mrq_thermal_host_to_bpmp_request* %6, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = call i32 @memset(%struct.tegra_bpmp_message* %8, i32 0, i32 40)
  %15 = load i32, i32* @MRQ_THERMAL, align 4
  %16 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %8, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = bitcast %struct.mrq_thermal_host_to_bpmp_request* %6 to %struct.tegra_bpmp_message*
  %18 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %8, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store %struct.tegra_bpmp_message* %17, %struct.tegra_bpmp_message** %19, align 8
  %20 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %8, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 40, i32* %21, align 8
  %22 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %8, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store %union.mrq_thermal_bpmp_to_host_response* %7, %union.mrq_thermal_bpmp_to_host_response** %23, align 8
  %24 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %8, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %27 = call i32 @tegra_bpmp_transfer(%struct.tegra_bpmp* %26, %struct.tegra_bpmp_message* %8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %2
  %33 = bitcast %union.mrq_thermal_bpmp_to_host_response* %7 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %30
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.tegra_bpmp_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_transfer(%struct.tegra_bpmp*, %struct.tegra_bpmp_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
