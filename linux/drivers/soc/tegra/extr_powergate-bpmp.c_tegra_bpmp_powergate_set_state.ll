; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_powergate_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_powergate_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.mrq_pg_request = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.tegra_bpmp_message* }
%struct.tegra_bpmp_message = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@CMD_PG_SET_STATE = common dso_local global i32 0, align 4
@MRQ_PG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*, i32, i32)* @tegra_bpmp_powergate_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_powergate_set_state(%struct.tegra_bpmp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_bpmp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mrq_pg_request, align 8
  %9 = alloca %struct.tegra_bpmp_message, align 8
  %10 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.mrq_pg_request* %8 to %struct.tegra_bpmp_message*
  %12 = call i32 @memset(%struct.tegra_bpmp_message* %11, i32 0, i32 48)
  %13 = load i32, i32* @CMD_PG_SET_STATE, align 4
  %14 = getelementptr inbounds %struct.mrq_pg_request, %struct.mrq_pg_request* %8, i32 0, i32 5
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.mrq_pg_request, %struct.mrq_pg_request* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds %struct.mrq_pg_request, %struct.mrq_pg_request* %8, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = call i32 @memset(%struct.tegra_bpmp_message* %9, i32 0, i32 48)
  %21 = load i32, i32* @MRQ_PG, align 4
  %22 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = bitcast %struct.mrq_pg_request* %8 to %struct.tegra_bpmp_message*
  %24 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store %struct.tegra_bpmp_message* %23, %struct.tegra_bpmp_message** %25, align 8
  %26 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 48, i32* %27, align 8
  %28 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %29 = call i32 @tegra_bpmp_transfer(%struct.tegra_bpmp* %28, %struct.tegra_bpmp_message* %9)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %9, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %39, %32
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @memset(%struct.tegra_bpmp_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_transfer(%struct.tegra_bpmp*, %struct.tegra_bpmp_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
