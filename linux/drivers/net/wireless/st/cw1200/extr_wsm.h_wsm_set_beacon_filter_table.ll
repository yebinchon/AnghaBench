; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.h_wsm_set_beacon_filter_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.h_wsm_set_beacon_filter_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_mib_beacon_filter_table = type { i32 }

@WSM_MIB_ID_BEACON_FILTER_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_mib_beacon_filter_table*)* @wsm_set_beacon_filter_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_set_beacon_filter_table(%struct.cw1200_common* %0, %struct.wsm_mib_beacon_filter_table* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.wsm_mib_beacon_filter_table*, align 8
  %5 = alloca i64, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store %struct.wsm_mib_beacon_filter_table* %1, %struct.wsm_mib_beacon_filter_table** %4, align 8
  %6 = load %struct.wsm_mib_beacon_filter_table*, %struct.wsm_mib_beacon_filter_table** %4, align 8
  %7 = getelementptr inbounds %struct.wsm_mib_beacon_filter_table, %struct.wsm_mib_beacon_filter_table* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @__le32_to_cpu(i32 %8)
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, 4
  store i64 %12, i64* %5, align 8
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %14 = load i32, i32* @WSM_MIB_ID_BEACON_FILTER_TABLE, align 4
  %15 = load %struct.wsm_mib_beacon_filter_table*, %struct.wsm_mib_beacon_filter_table** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @wsm_write_mib(%struct.cw1200_common* %13, i32 %14, %struct.wsm_mib_beacon_filter_table* %15, i64 %16)
  ret i32 %17
}

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @wsm_write_mib(%struct.cw1200_common*, i32, %struct.wsm_mib_beacon_filter_table*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
