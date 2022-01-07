; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.h_wsm_set_ether_type_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.h_wsm_set_ether_type_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_ether_type_filter_hdr = type { i32 }

@WSM_MIB_ID_SET_ETHERTYPE_DATAFRAME_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_ether_type_filter_hdr*)* @wsm_set_ether_type_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_set_ether_type_filter(%struct.cw1200_common* %0, %struct.wsm_ether_type_filter_hdr* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.wsm_ether_type_filter_hdr*, align 8
  %5 = alloca i64, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store %struct.wsm_ether_type_filter_hdr* %1, %struct.wsm_ether_type_filter_hdr** %4, align 8
  %6 = load %struct.wsm_ether_type_filter_hdr*, %struct.wsm_ether_type_filter_hdr** %4, align 8
  %7 = getelementptr inbounds %struct.wsm_ether_type_filter_hdr, %struct.wsm_ether_type_filter_hdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 4, %10
  store i64 %11, i64* %5, align 8
  %12 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %13 = load i32, i32* @WSM_MIB_ID_SET_ETHERTYPE_DATAFRAME_FILTER, align 4
  %14 = load %struct.wsm_ether_type_filter_hdr*, %struct.wsm_ether_type_filter_hdr** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @wsm_write_mib(%struct.cw1200_common* %12, i32 %13, %struct.wsm_ether_type_filter_hdr* %14, i64 %15)
  ret i32 %16
}

declare dso_local i32 @wsm_write_mib(%struct.cw1200_common*, i32, %struct.wsm_ether_type_filter_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
