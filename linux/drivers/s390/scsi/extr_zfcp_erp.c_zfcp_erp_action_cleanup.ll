; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, i32, %struct.scsi_device*, %struct.zfcp_port*, %struct.zfcp_adapter* }
%struct.scsi_device = type { i32 }
%struct.zfcp_port = type { i32 }
%struct.zfcp_adapter = type { i32, i32, i32, i32 }

@ZFCP_STATUS_ERP_NO_REF = common dso_local global i32 0, align 4
@ZFCP_ERP_STEP_UNINITIALIZED = common dso_local global i32 0, align 4
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@zfcp_adapter_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_erp_action*, i32)* @zfcp_erp_action_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_erp_action_cleanup(%struct.zfcp_erp_action* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.zfcp_port*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %8, i32 0, i32 5
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  store %struct.zfcp_adapter* %10, %struct.zfcp_adapter** %5, align 8
  %11 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %12 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %11, i32 0, i32 4
  %13 = load %struct.zfcp_port*, %struct.zfcp_port** %12, align 8
  store %struct.zfcp_port* %13, %struct.zfcp_port** %6, align 8
  %14 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %15 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %14, i32 0, i32 3
  %16 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  store %struct.scsi_device* %16, %struct.scsi_device** %7, align 8
  %17 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %18 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %77 [
    i32 130, label %20
    i32 129, label %33
    i32 128, label %48
    i32 131, label %52
  ]

20:                                               ; preds = %2
  %21 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %22 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ZFCP_STATUS_ERP_NO_REF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %29 = call i32 @scsi_device_put(%struct.scsi_device* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.zfcp_port*, %struct.zfcp_port** %6, align 8
  %32 = call i32 @zfcp_erp_try_rport_unblock(%struct.zfcp_port* %31)
  br label %77

33:                                               ; preds = %2
  %34 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %35 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ZFCP_ERP_STEP_UNINITIALIZED, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.zfcp_port*, %struct.zfcp_port** %6, align 8
  %45 = call i32 @zfcp_erp_try_rport_unblock(%struct.zfcp_port* %44)
  br label %46

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %2, %47
  %49 = load %struct.zfcp_port*, %struct.zfcp_port** %6, align 8
  %50 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %49, i32 0, i32 0
  %51 = call i32 @put_device(i32* %50)
  br label %77

52:                                               ; preds = %2
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %58 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %57, i32 0, i32 1
  %59 = call i32 @register_service_level(i32* %58)
  %60 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %61 = call i32 @zfcp_fc_conditional_port_scan(%struct.zfcp_adapter* %60)
  %62 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %65, i32 0, i32 2
  %67 = call i32 @queue_work(i32 %64, i32* %66)
  br label %72

68:                                               ; preds = %52
  %69 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %70 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %69, i32 0, i32 1
  %71 = call i32 @unregister_service_level(i32* %70)
  br label %72

72:                                               ; preds = %68, %56
  %73 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %74 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* @zfcp_adapter_release, align 4
  %76 = call i32 @kref_put(i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %2, %72, %48, %30
  ret void
}

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @zfcp_erp_try_rport_unblock(%struct.zfcp_port*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @register_service_level(i32*) #1

declare dso_local i32 @zfcp_fc_conditional_port_scan(%struct.zfcp_adapter*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @unregister_service_level(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
