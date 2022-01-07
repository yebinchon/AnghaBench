; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strat_fsf_xconf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strat_fsf_xconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, i32, i32, i32, i32 }

@ZFCP_STATUS_ADAPTER_XCONFIG_OK = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_HOST_CON_INIT = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_TIMEDOUT = common dso_local global i32 0, align 4
@FC_PORTTYPE_PTP = common dso_local global i64 0, align 8
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_adapter_strat_fsf_xconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_adapter_strat_fsf_xconf(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %7, i32 0, i32 1
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  store %struct.zfcp_adapter* %9, %struct.zfcp_adapter** %6, align 8
  %10 = load i32, i32* @ZFCP_STATUS_ADAPTER_XCONFIG_OK, align 4
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %11, i32 0, i32 1
  %13 = call i32 @atomic_andnot(i32 %10, i32* %12)
  store i32 7, i32* %4, align 4
  br label %14

14:                                               ; preds = %70, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %14
  %18 = load i32, i32* @ZFCP_STATUS_ADAPTER_HOST_CON_INIT, align 4
  %19 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %19, i32 0, i32 1
  %21 = call i32 @atomic_andnot(i32 %18, i32* %20)
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %22, i32 0, i32 4
  %24 = call i32 @write_lock_irq(i32* %23)
  %25 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %26 = call i32 @zfcp_erp_action_to_running(%struct.zfcp_erp_action* %25)
  %27 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %27, i32 0, i32 4
  %29 = call i32 @write_unlock_irq(i32* %28)
  %30 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %31 = call i64 @zfcp_fsf_exchange_config_data(%struct.zfcp_erp_action* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load i32, i32* @ZFCP_STATUS_ADAPTER_HOST_CON_INIT, align 4
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %35, i32 0, i32 1
  %37 = call i32 @atomic_andnot(i32 %34, i32* %36)
  %38 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %38, i32* %2, align 4
  br label %98

39:                                               ; preds = %17
  %40 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %43, i32 0, i32 2
  %45 = call i32 @list_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @wait_event(i32 %42, i32 %48)
  %50 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %51 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ZFCP_STATUS_ERP_TIMEDOUT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %73

57:                                               ; preds = %39
  %58 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %59 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %58, i32 0, i32 1
  %60 = call i32 @atomic_read(i32* %59)
  %61 = load i32, i32* @ZFCP_STATUS_ADAPTER_HOST_CON_INIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %73

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ssleep(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 %68, 2
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %4, align 4
  br label %14

73:                                               ; preds = %64, %56, %14
  %74 = load i32, i32* @ZFCP_STATUS_ADAPTER_HOST_CON_INIT, align 4
  %75 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %75, i32 0, i32 1
  %77 = call i32 @atomic_andnot(i32 %74, i32* %76)
  %78 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %78, i32 0, i32 1
  %80 = call i32 @atomic_read(i32* %79)
  %81 = load i32, i32* @ZFCP_STATUS_ADAPTER_XCONFIG_OK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %85, i32* %2, align 4
  br label %98

86:                                               ; preds = %73
  %87 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %88 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @fc_host_port_type(i32 %89)
  %91 = load i64, i64* @FC_PORTTYPE_PTP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %95 = call i32 @zfcp_erp_enqueue_ptp_port(%struct.zfcp_adapter* %94)
  br label %96

96:                                               ; preds = %93, %86
  %97 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %84, %33
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @atomic_andnot(i32, i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @zfcp_erp_action_to_running(%struct.zfcp_erp_action*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i64 @zfcp_fsf_exchange_config_data(%struct.zfcp_erp_action*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i64 @fc_host_port_type(i32) #1

declare dso_local i32 @zfcp_erp_enqueue_ptp_port(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
