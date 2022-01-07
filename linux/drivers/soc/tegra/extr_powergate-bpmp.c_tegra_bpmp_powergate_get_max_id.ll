; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_powergate_get_max_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_powergate_get_max_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.mrq_pg_response = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, %struct.tegra_bpmp_message* }
%struct.tegra_bpmp_message = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.tegra_bpmp_message* }
%struct.mrq_pg_request = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }

@CMD_PG_GET_MAX_ID = common dso_local global i32 0, align 4
@MRQ_PG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*)* @tegra_bpmp_powergate_get_max_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_powergate_get_max_id(%struct.tegra_bpmp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_bpmp*, align 8
  %4 = alloca %struct.mrq_pg_response, align 8
  %5 = alloca %struct.mrq_pg_request, align 8
  %6 = alloca %struct.tegra_bpmp_message, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %3, align 8
  %8 = bitcast %struct.mrq_pg_request* %5 to %struct.tegra_bpmp_message*
  %9 = call i32 @memset(%struct.tegra_bpmp_message* %8, i32 0, i32 56)
  %10 = load i32, i32* @CMD_PG_GET_MAX_ID, align 4
  %11 = getelementptr inbounds %struct.mrq_pg_request, %struct.mrq_pg_request* %5, i32 0, i32 4
  store i32 %10, i32* %11, align 4
  %12 = bitcast %struct.mrq_pg_response* %4 to %struct.tegra_bpmp_message*
  %13 = call i32 @memset(%struct.tegra_bpmp_message* %12, i32 0, i32 56)
  %14 = call i32 @memset(%struct.tegra_bpmp_message* %6, i32 0, i32 56)
  %15 = load i32, i32* @MRQ_PG, align 4
  %16 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %6, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = bitcast %struct.mrq_pg_request* %5 to %struct.tegra_bpmp_message*
  %18 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %6, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store %struct.tegra_bpmp_message* %17, %struct.tegra_bpmp_message** %19, align 8
  %20 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %6, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 56, i32* %21, align 8
  %22 = bitcast %struct.mrq_pg_response* %4 to %struct.tegra_bpmp_message*
  %23 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  store %struct.tegra_bpmp_message* %22, %struct.tegra_bpmp_message** %24, align 8
  %25 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %6, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 56, i32* %26, align 8
  %27 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %28 = call i32 @tegra_bpmp_transfer(%struct.tegra_bpmp* %27, %struct.tegra_bpmp_message* %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %46

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.mrq_pg_response, %struct.mrq_pg_response* %4, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %38, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @memset(%struct.tegra_bpmp_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_transfer(%struct.tegra_bpmp*, %struct.tegra_bpmp_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
