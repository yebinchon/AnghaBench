; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, i32, i64, i32 }

@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_XCONFIG_OK = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_erp_action*)* @zfcp_erp_adapter_strategy_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_erp_adapter_strategy_close(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %4 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %4, i32 0, i32 0
  %6 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  store %struct.zfcp_adapter* %6, %struct.zfcp_adapter** %3, align 8
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @zfcp_qdio_close(i32 %9)
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %12 = call i32 @zfcp_fsf_req_dismiss_all(%struct.zfcp_adapter* %11)
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @zfcp_fc_wka_ports_force_offline(i32 %17)
  %19 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %20 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %21 = call i32 @zfcp_erp_clear_adapter_status(%struct.zfcp_adapter* %19, i32 %20)
  %22 = load i32, i32* @ZFCP_STATUS_ADAPTER_XCONFIG_OK, align 4
  %23 = load i32, i32* @ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %25, i32 0, i32 0
  %27 = call i32 @atomic_andnot(i32 %24, i32* %26)
  ret void
}

declare dso_local i32 @zfcp_qdio_close(i32) #1

declare dso_local i32 @zfcp_fsf_req_dismiss_all(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_fc_wka_ports_force_offline(i32) #1

declare dso_local i32 @zfcp_erp_clear_adapter_status(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
