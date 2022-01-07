; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_port_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_port_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.zfcp_fsf_req = type { i32, %struct.zfcp_erp_action*, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_FEATURE_HBAAPI_MANAGEMENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FSF_QTCB_EXCHANGE_PORT_DATA = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@zfcp_fsf_exchange_port_data_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_exchange_port_data(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.zfcp_fsf_req*, align 8
  %6 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %7 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %10, align 8
  store %struct.zfcp_qdio* %11, %struct.zfcp_qdio** %4, align 8
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %15 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FSF_FEATURE_HBAAPI_MANAGEMENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %88

25:                                               ; preds = %1
  %26 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %30 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %83

33:                                               ; preds = %25
  %34 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %35 = load i32, i32* @FSF_QTCB_EXCHANGE_PORT_DATA, align 4
  %36 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %37 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %38 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %34, i32 %35, i32 %36, i32 %42)
  store %struct.zfcp_fsf_req* %43, %struct.zfcp_fsf_req** %5, align 8
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %45 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %49 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %48)
  store i32 %49, i32* %6, align 4
  br label %83

50:                                               ; preds = %33
  %51 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %52 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %53 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 3
  %59 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %56, i32* %58)
  %60 = load i32, i32* @zfcp_fsf_exchange_port_data_handler, align 4
  %61 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %62 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %64 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %65 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %64, i32 0, i32 1
  store %struct.zfcp_erp_action* %63, %struct.zfcp_erp_action** %65, align 8
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %67 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %70 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %72 = call i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req* %71)
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %74 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %50
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %79 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %78)
  %80 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %81 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %77, %50
  br label %83

83:                                               ; preds = %82, %47, %32
  %84 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %85 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock_irq(i32* %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %22
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
