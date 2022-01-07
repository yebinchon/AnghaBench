; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_open_ptp_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_open_ptp_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { %struct.zfcp_port*, %struct.zfcp_adapter* }
%struct.zfcp_port = type { i64, i32 }
%struct.zfcp_adapter = type { i64, i32 }

@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_open_ptp_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_open_ptp_port(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca %struct.zfcp_port*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %6 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %6, i32 0, i32 1
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %4, align 8
  %9 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %9, i32 0, i32 0
  %11 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  store %struct.zfcp_port* %11, %struct.zfcp_port** %5, align 8
  %12 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %13 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %21 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %22 = call i32 @zfcp_erp_set_port_status(%struct.zfcp_port* %20, i32 %21)
  %23 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %29 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %31 = call i32 @zfcp_erp_port_strategy_open_port(%struct.zfcp_erp_action* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @zfcp_erp_set_port_status(%struct.zfcp_port*, i32) #1

declare dso_local i32 @zfcp_erp_port_strategy_open_port(%struct.zfcp_erp_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
