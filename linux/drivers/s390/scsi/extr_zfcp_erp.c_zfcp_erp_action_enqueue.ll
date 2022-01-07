; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32, i32, i32, i32, i32 }
%struct.zfcp_port = type { i32 }
%struct.scsi_device = type { i32 }
%struct.zfcp_erp_action = type { i32 }

@ZFCP_ERP_ACTION_FAILED = common dso_local global i32 0, align 4
@ZFCP_ERP_ACTION_NONE = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_ERP_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.scsi_device*, i8*, i32)* @zfcp_erp_action_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_erp_action_enqueue(i32 %0, %struct.zfcp_adapter* %1, %struct.zfcp_port* %2, %struct.scsi_device* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.zfcp_adapter*, align 8
  %9 = alloca %struct.zfcp_port*, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.zfcp_erp_action*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %8, align 8
  store %struct.zfcp_port* %2, %struct.zfcp_port** %9, align 8
  store %struct.scsi_device* %3, %struct.scsi_device** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %17 = load %struct.zfcp_port*, %struct.zfcp_port** %9, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %19 = call i32 @zfcp_erp_handle_failed(i32 %15, %struct.zfcp_adapter* %16, %struct.zfcp_port* %17, %struct.scsi_device* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ZFCP_ERP_ACTION_FAILED, align 4
  store i32 %23, i32* %13, align 4
  br label %70

24:                                               ; preds = %6
  %25 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %26 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ZFCP_ERP_ACTION_NONE, align 4
  store i32 %30, i32* %13, align 4
  br label %70

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %34 = load %struct.zfcp_port*, %struct.zfcp_port** %9, align 8
  %35 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %36 = call i32 @zfcp_erp_required_act(i32 %32, %struct.zfcp_adapter* %33, %struct.zfcp_port* %34, %struct.scsi_device* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %70

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %44 = load %struct.zfcp_port*, %struct.zfcp_port** %9, align 8
  %45 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %46 = call %struct.zfcp_erp_action* @zfcp_erp_setup_act(i32 %41, i32 %42, %struct.zfcp_adapter* %43, %struct.zfcp_port* %44, %struct.scsi_device* %45)
  store %struct.zfcp_erp_action* %46, %struct.zfcp_erp_action** %14, align 8
  %47 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %14, align 8
  %48 = icmp ne %struct.zfcp_erp_action* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ZFCP_ERP_ACTION_NONE, align 4
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  br label %70

53:                                               ; preds = %40
  %54 = load i32, i32* @ZFCP_STATUS_ADAPTER_ERP_PENDING, align 4
  %55 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %56 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %55, i32 0, i32 3
  %57 = call i32 @atomic_or(i32 %54, i32* %56)
  %58 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %59 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %14, align 8
  %63 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %62, i32 0, i32 0
  %64 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %65 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %64, i32 0, i32 1
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  %67 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %68 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %67, i32 0, i32 0
  %69 = call i32 @wake_up(i32* %68)
  br label %70

70:                                               ; preds = %53, %49, %39, %29, %22
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %73 = load %struct.zfcp_port*, %struct.zfcp_port** %9, align 8
  %74 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @zfcp_dbf_rec_trig(i8* %71, %struct.zfcp_adapter* %72, %struct.zfcp_port* %73, %struct.scsi_device* %74, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @zfcp_erp_handle_failed(i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.scsi_device*) #1

declare dso_local i32 @zfcp_erp_required_act(i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.scsi_device*) #1

declare dso_local %struct.zfcp_erp_action* @zfcp_erp_setup_act(i32, i32, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.scsi_device*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @zfcp_dbf_rec_trig(i8*, %struct.zfcp_adapter*, %struct.zfcp_port*, %struct.scsi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
