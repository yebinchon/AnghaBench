; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_port_data_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_exchange_port_data_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fsf_qtcb_bottom_port = type { i32 }
%struct.zfcp_fsf_req = type { i32, i32, i32, %struct.fsf_qtcb_bottom_port* }

@EIO = common dso_local global i32 0, align 4
@FSF_FEATURE_HBAAPI_MANAGEMENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FSF_QTCB_EXCHANGE_PORT_DATA = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@zfcp_fsf_exchange_port_data_handler = common dso_local global i32 0, align 4
@ZFCP_FSF_REQUEST_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_exchange_port_data_sync(%struct.zfcp_qdio* %0, %struct.fsf_qtcb_bottom_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.fsf_qtcb_bottom_port*, align 8
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %4, align 8
  store %struct.fsf_qtcb_bottom_port* %1, %struct.fsf_qtcb_bottom_port** %5, align 8
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %6, align 8
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %11 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FSF_FEATURE_HBAAPI_MANAGEMENT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %78

21:                                               ; preds = %2
  %22 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %23 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %26 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %73

29:                                               ; preds = %21
  %30 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %31 = load i32, i32* @FSF_QTCB_EXCHANGE_PORT_DATA, align 4
  %32 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %33 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %30, i32 %31, i32 %32, i32* null)
  store %struct.zfcp_fsf_req* %33, %struct.zfcp_fsf_req** %6, align 8
  %34 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %35 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %39 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %38)
  store i32 %39, i32* %7, align 4
  br label %73

40:                                               ; preds = %29
  %41 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %42 = icmp ne %struct.fsf_qtcb_bottom_port* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %5, align 8
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 3
  store %struct.fsf_qtcb_bottom_port* %44, %struct.fsf_qtcb_bottom_port** %46, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %50 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %49, i32 0, i32 2
  %51 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %48, i32* %50)
  %52 = load i32, i32* @zfcp_fsf_exchange_port_data_handler, align 4
  %53 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %54 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %56 = load i32, i32* @ZFCP_FSF_REQUEST_TIMEOUT, align 4
  %57 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %55, i32 %56)
  %58 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %59 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %61 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_irq(i32* %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %47
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %67 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %66, i32 0, i32 0
  %68 = call i32 @wait_for_completion(i32* %67)
  br label %69

69:                                               ; preds = %65, %47
  %70 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %71 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %78

73:                                               ; preds = %37, %28
  %74 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %75 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_irq(i32* %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %69, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
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
