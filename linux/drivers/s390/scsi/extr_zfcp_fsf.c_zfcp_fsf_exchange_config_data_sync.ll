; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_config_data_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_config_data_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32 }
%struct.fsf_qtcb_bottom_config = type { i32 }
%struct.zfcp_fsf_req = type { i32, %struct.fsf_qtcb_bottom_config*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_EXCHANGE_CONFIG_DATA = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@zfcp_fsf_exchange_config_data_handler = common dso_local global i32 0, align 4
@FSF_FEATURE_NOTIFICATION_LOST = common dso_local global i32 0, align 4
@FSF_FEATURE_UPDATE_ALERT = common dso_local global i32 0, align 4
@ZFCP_FSF_REQUEST_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_exchange_config_data_sync(%struct.zfcp_qdio* %0, %struct.fsf_qtcb_bottom_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.fsf_qtcb_bottom_config*, align 8
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %4, align 8
  store %struct.fsf_qtcb_bottom_config* %1, %struct.fsf_qtcb_bottom_config** %5, align 8
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %6, align 8
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %11 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %14 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %19 = load i32, i32* @FSF_QTCB_EXCHANGE_CONFIG_DATA, align 4
  %20 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %21 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %18, i32 %19, i32 %20, i32* null)
  store %struct.zfcp_fsf_req* %21, %struct.zfcp_fsf_req** %6, align 8
  %22 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %23 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %26)
  store i32 %27, i32* %7, align 4
  br label %70

28:                                               ; preds = %17
  %29 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %30 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %31 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %30, i32 0, i32 4
  %32 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %29, i32* %31)
  %33 = load i32, i32* @zfcp_fsf_exchange_config_data_handler, align 4
  %34 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %35 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @FSF_FEATURE_NOTIFICATION_LOST, align 4
  %37 = load i32, i32* @FSF_FEATURE_UPDATE_ALERT, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %40 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %38, i32* %44, align 4
  %45 = load %struct.fsf_qtcb_bottom_config*, %struct.fsf_qtcb_bottom_config** %5, align 8
  %46 = icmp ne %struct.fsf_qtcb_bottom_config* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load %struct.fsf_qtcb_bottom_config*, %struct.fsf_qtcb_bottom_config** %5, align 8
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %50 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %49, i32 0, i32 1
  store %struct.fsf_qtcb_bottom_config* %48, %struct.fsf_qtcb_bottom_config** %50, align 8
  br label %51

51:                                               ; preds = %47, %28
  %52 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %53 = load i32, i32* @ZFCP_FSF_REQUEST_TIMEOUT, align 4
  %54 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %52, i32 %53)
  %55 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %56 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %58 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %51
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 0
  %65 = call i32 @wait_for_completion(i32* %64)
  br label %66

66:                                               ; preds = %62, %51
  %67 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %68 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %25, %16
  %71 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %72 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_irq(i32* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req*, i32) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
