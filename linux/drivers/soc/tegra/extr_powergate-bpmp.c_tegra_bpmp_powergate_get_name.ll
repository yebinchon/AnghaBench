; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_powergate_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_powergate_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.mrq_pg_response = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, %struct.tegra_bpmp_message* }
%struct.tegra_bpmp_message = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.tegra_bpmp_message* }
%struct.mrq_pg_request = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }

@CMD_PG_GET_NAME = common dso_local global i32 0, align 4
@MRQ_PG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tegra_bpmp*, i32)* @tegra_bpmp_powergate_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tegra_bpmp_powergate_get_name(%struct.tegra_bpmp* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mrq_pg_response, align 8
  %7 = alloca %struct.mrq_pg_request, align 8
  %8 = alloca %struct.tegra_bpmp_message, align 8
  %9 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.mrq_pg_request* %7 to %struct.tegra_bpmp_message*
  %11 = call i32 @memset(%struct.tegra_bpmp_message* %10, i32 0, i32 56)
  %12 = load i32, i32* @CMD_PG_GET_NAME, align 4
  %13 = getelementptr inbounds %struct.mrq_pg_request, %struct.mrq_pg_request* %7, i32 0, i32 5
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.mrq_pg_request, %struct.mrq_pg_request* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = bitcast %struct.mrq_pg_response* %6 to %struct.tegra_bpmp_message*
  %17 = call i32 @memset(%struct.tegra_bpmp_message* %16, i32 0, i32 56)
  %18 = call i32 @memset(%struct.tegra_bpmp_message* %8, i32 0, i32 56)
  %19 = load i32, i32* @MRQ_PG, align 4
  %20 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %8, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = bitcast %struct.mrq_pg_request* %7 to %struct.tegra_bpmp_message*
  %22 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %8, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store %struct.tegra_bpmp_message* %21, %struct.tegra_bpmp_message** %23, align 8
  %24 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %8, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 56, i32* %25, align 8
  %26 = bitcast %struct.mrq_pg_response* %6 to %struct.tegra_bpmp_message*
  %27 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %8, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store %struct.tegra_bpmp_message* %26, %struct.tegra_bpmp_message** %28, align 8
  %29 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %8, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 56, i32* %30, align 8
  %31 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %32 = call i32 @tegra_bpmp_transfer(%struct.tegra_bpmp* %31, %struct.tegra_bpmp_message* %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %8, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %2
  store i8* null, i8** %3, align 8
  br label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.mrq_pg_response, %struct.mrq_pg_response* %6, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kstrdup(i32 %44, i32 %45)
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %41, %40
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i32 @memset(%struct.tegra_bpmp_message*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_transfer(%struct.tegra_bpmp*, %struct.tegra_bpmp_message*) #1

declare dso_local i8* @kstrdup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
