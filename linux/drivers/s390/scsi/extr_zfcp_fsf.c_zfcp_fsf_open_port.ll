; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.zfcp_port*, %struct.TYPE_7__* }
%struct.zfcp_port = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.zfcp_fsf_req = type { i32, %struct.zfcp_erp_action*, %struct.zfcp_port*, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_OPEN_PORT_WITH_DID = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@zfcp_fsf_open_port_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_open_port(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca %struct.zfcp_port*, align 8
  %5 = alloca %struct.zfcp_fsf_req*, align 8
  %6 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %7 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %7, i32 0, i32 2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %10, align 8
  store %struct.zfcp_qdio* %11, %struct.zfcp_qdio** %3, align 8
  %12 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %12, i32 0, i32 1
  %14 = load %struct.zfcp_port*, %struct.zfcp_port** %13, align 8
  store %struct.zfcp_port* %14, %struct.zfcp_port** %4, align 8
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %18 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %21 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %94

24:                                               ; preds = %1
  %25 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %26 = load i32, i32* @FSF_QTCB_OPEN_PORT_WITH_DID, align 4
  %27 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %28 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %29 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %25, i32 %26, i32 %27, i32 %33)
  store %struct.zfcp_fsf_req* %34, %struct.zfcp_fsf_req** %5, align 8
  %35 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %36 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %40 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %39)
  store i32 %40, i32* %6, align 4
  br label %94

41:                                               ; preds = %24
  %42 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %43 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %44 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %48 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %49 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %48, i32 0, i32 5
  %50 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %47, i32* %49)
  %51 = load i32, i32* @zfcp_fsf_open_port_handler, align 4
  %52 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %53 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %55 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %54, i32 0, i32 3
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %62 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hton24(i32 %60, i32 %63)
  %65 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %67 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %66, i32 0, i32 2
  store %struct.zfcp_port* %65, %struct.zfcp_port** %67, align 8
  %68 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %69 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %70 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %69, i32 0, i32 1
  store %struct.zfcp_erp_action* %68, %struct.zfcp_erp_action** %70, align 8
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %72 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %75 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %77 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %76, i32 0, i32 0
  %78 = call i32 @get_device(i32* %77)
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %80 = call i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req* %79)
  %81 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %82 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %41
  %86 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %87 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %86)
  %88 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %89 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %91 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %90, i32 0, i32 0
  %92 = call i32 @put_device(i32* %91)
  br label %93

93:                                               ; preds = %85, %41
  br label %94

94:                                               ; preds = %93, %38, %23
  %95 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %96 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock_irq(i32* %96)
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
