; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, i32 }

@ZFCP_STATUS_ADAPTER_XCONFIG_OK = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_adapter_strategy_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_adapter_strategy_open(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %5 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %5, i32 0, i32 0
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  store %struct.zfcp_adapter* %7, %struct.zfcp_adapter** %4, align 8
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @zfcp_qdio_open(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @ZFCP_STATUS_ADAPTER_XCONFIG_OK, align 4
  %15 = load i32, i32* @ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %17, i32 0, i32 0
  %19 = call i32 @atomic_andnot(i32 %16, i32* %18)
  %20 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %23 = call i64 @zfcp_erp_adapter_strategy_open_fsf(%struct.zfcp_erp_action* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %27 = call i32 @zfcp_erp_adapter_strategy_close(%struct.zfcp_erp_action* %26)
  %28 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %31, i32 0, i32 0
  %33 = call i32 @atomic_or(i32 %30, i32* %32)
  %34 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %25, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @zfcp_qdio_open(i32) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

declare dso_local i64 @zfcp_erp_adapter_strategy_open_fsf(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_adapter_strategy_close(%struct.zfcp_erp_action*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
