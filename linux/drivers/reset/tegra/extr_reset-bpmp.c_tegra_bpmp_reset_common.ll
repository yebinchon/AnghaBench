; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/tegra/extr_reset-bpmp.c_tegra_bpmp_reset_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/tegra/extr_reset-bpmp.c_tegra_bpmp_reset_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.tegra_bpmp = type { i32 }
%struct.mrq_reset_request = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.tegra_bpmp_message* }
%struct.tegra_bpmp_message = type { i32, i32, %struct.TYPE_2__, i32 }

@MRQ_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i32, i32)* @tegra_bpmp_reset_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_reset_common(%struct.reset_controller_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_bpmp*, align 8
  %8 = alloca %struct.mrq_reset_request, align 8
  %9 = alloca %struct.tegra_bpmp_message, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %11 = call %struct.tegra_bpmp* @to_tegra_bpmp(%struct.reset_controller_dev* %10)
  store %struct.tegra_bpmp* %11, %struct.tegra_bpmp** %7, align 8
  %12 = bitcast %struct.mrq_reset_request* %8 to %struct.tegra_bpmp_message*
  %13 = call i32 @memset(%struct.tegra_bpmp_message* %12, i32 0, i32 32)
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.mrq_reset_request, %struct.mrq_reset_request* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.mrq_reset_request, %struct.mrq_reset_request* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = call i32 @memset(%struct.tegra_bpmp_message* %9, i32 0, i32 32)
  %19 = load i32, i32* @MRQ_RESET, align 4
  %20 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = bitcast %struct.mrq_reset_request* %8 to %struct.tegra_bpmp_message*
  %22 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store %struct.tegra_bpmp_message* %21, %struct.tegra_bpmp_message** %23, align 8
  %24 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 32, i32* %25, align 8
  %26 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %7, align 8
  %27 = call i32 @tegra_bpmp_transfer(%struct.tegra_bpmp* %26, %struct.tegra_bpmp_message* %9)
  ret i32 %27
}

declare dso_local %struct.tegra_bpmp* @to_tegra_bpmp(%struct.reset_controller_dev*) #1

declare dso_local i32 @memset(%struct.tegra_bpmp_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_transfer(%struct.tegra_bpmp*, %struct.tegra_bpmp_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
