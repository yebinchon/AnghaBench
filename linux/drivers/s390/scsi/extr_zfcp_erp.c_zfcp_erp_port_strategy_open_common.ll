; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_port_strategy_open_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_port_strategy_open_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.zfcp_port*, %struct.zfcp_adapter* }
%struct.zfcp_port = type { i32, i32 }
%struct.zfcp_adapter = type { i32 }

@FC_PORTTYPE_PTP = common dso_local global i32 0, align 4
@ZFCP_ERP_EXIT = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_NOESC = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_port_strategy_open_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_port_strategy_open_common(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca %struct.zfcp_port*, align 8
  %6 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %7 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %7, i32 0, i32 2
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  store %struct.zfcp_adapter* %9, %struct.zfcp_adapter** %4, align 8
  %10 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %10, i32 0, i32 1
  %12 = load %struct.zfcp_port*, %struct.zfcp_port** %11, align 8
  store %struct.zfcp_port* %12, %struct.zfcp_port** %5, align 8
  %13 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %14 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %13, i32 0, i32 1
  %15 = call i32 @atomic_read(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %73 [
    i32 128, label %19
    i32 131, label %19
    i32 130, label %19
    i32 129, label %41
    i32 133, label %72
    i32 132, label %72
  ]

19:                                               ; preds = %1, %1, %1
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fc_host_port_type(i32 %22)
  %24 = load i32, i32* @FC_PORTTYPE_PTP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %28 = call i32 @zfcp_erp_open_ptp_port(%struct.zfcp_erp_action* %27)
  store i32 %28, i32* %2, align 4
  br label %75

29:                                               ; preds = %19
  %30 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %31 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %36 = call i32 @zfcp_fc_trigger_did_lookup(%struct.zfcp_port* %35)
  %37 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %37, i32* %2, align 4
  br label %75

38:                                               ; preds = %29
  %39 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %40 = call i32 @zfcp_erp_port_strategy_open_port(%struct.zfcp_erp_action* %39)
  store i32 %40, i32* %2, align 4
  br label %75

41:                                               ; preds = %1
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %48 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %53 = call i32 @zfcp_fc_trigger_did_lookup(%struct.zfcp_port* %52)
  %54 = load i32, i32* @ZFCP_ERP_EXIT, align 4
  store i32 %54, i32* %2, align 4
  br label %75

55:                                               ; preds = %46
  %56 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %56, i32* %2, align 4
  br label %75

57:                                               ; preds = %41
  %58 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %59 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @ZFCP_STATUS_COMMON_NOESC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.zfcp_port*, %struct.zfcp_port** %5, align 8
  %69 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %70, i32* %2, align 4
  br label %75

71:                                               ; preds = %62, %57
  br label %73

72:                                               ; preds = %1, %1
  br label %73

73:                                               ; preds = %1, %72, %71
  %74 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %67, %55, %51, %38, %34, %26
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @fc_host_port_type(i32) #1

declare dso_local i32 @zfcp_erp_open_ptp_port(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_fc_trigger_did_lookup(%struct.zfcp_port*) #1

declare dso_local i32 @zfcp_erp_port_strategy_open_port(%struct.zfcp_erp_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
