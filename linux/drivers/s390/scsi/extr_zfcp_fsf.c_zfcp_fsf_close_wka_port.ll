; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_wka_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_wka_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fc_wka_port = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.zfcp_fsf_req = type { i64, %struct.TYPE_10__*, %struct.zfcp_fc_wka_port*, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_CLOSE_PORT = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@zfcp_fsf_close_wka_port_handler = common dso_local global i32 0, align 4
@ZFCP_FSF_REQUEST_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fscwp_1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_close_wka_port(%struct.zfcp_fc_wka_port* %0) #0 {
  %2 = alloca %struct.zfcp_fc_wka_port*, align 8
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.zfcp_fc_wka_port* %0, %struct.zfcp_fc_wka_port** %2, align 8
  %7 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %10, align 8
  store %struct.zfcp_qdio* %11, %struct.zfcp_qdio** %3, align 8
  store i64 0, i64* %5, align 8
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %15 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %18 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %76

21:                                               ; preds = %1
  %22 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %23 = load i32, i32* @FSF_QTCB_CLOSE_PORT, align 4
  %24 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %25 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %26 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %22, i32 %23, i32 %24, i32 %30)
  store %struct.zfcp_fsf_req* %31, %struct.zfcp_fsf_req** %4, align 8
  %32 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %33 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %37 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %36)
  store i32 %37, i32* %6, align 4
  br label %76

38:                                               ; preds = %21
  %39 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %40 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %41 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 4
  %47 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %44, i32* %46)
  %48 = load i32, i32* @zfcp_fsf_close_wka_port_handler, align 4
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %50 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %2, align 8
  %52 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %53 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %52, i32 0, i32 2
  store %struct.zfcp_fc_wka_port* %51, %struct.zfcp_fc_wka_port** %53, align 8
  %54 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %2, align 8
  %55 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  %62 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %63 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %5, align 8
  %65 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %66 = load i32, i32* @ZFCP_FSF_REQUEST_TIMEOUT, align 4
  %67 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %65, i32 %66)
  %68 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %69 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %38
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %74 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %73)
  br label %75

75:                                               ; preds = %72, %38
  br label %76

76:                                               ; preds = %75, %35, %20
  %77 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %78 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_irq(i32* %78)
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %2, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @zfcp_dbf_rec_run_wka(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fc_wka_port* %83, i64 %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req*, i32) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @zfcp_dbf_rec_run_wka(i8*, %struct.zfcp_fc_wka_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
