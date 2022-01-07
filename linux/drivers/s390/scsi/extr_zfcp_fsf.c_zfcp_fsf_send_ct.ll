; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_ct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fc_wka_port = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32 }
%struct.zfcp_fsf_ct_els = type { i32, i32, i32 }
%struct.zfcp_fsf_req = type { %struct.zfcp_fsf_ct_els*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_SEND_GENERIC = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_WRITE_READ = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@zfcp_fsf_send_ct_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fssct_1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_send_ct(%struct.zfcp_fc_wka_port* %0, %struct.zfcp_fsf_ct_els* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.zfcp_fc_wka_port*, align 8
  %6 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zfcp_qdio*, align 8
  %10 = alloca %struct.zfcp_fsf_req*, align 8
  %11 = alloca i32, align 4
  store %struct.zfcp_fc_wka_port* %0, %struct.zfcp_fc_wka_port** %5, align 8
  store %struct.zfcp_fsf_ct_els* %1, %struct.zfcp_fsf_ct_els** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %5, align 8
  %13 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %15, align 8
  store %struct.zfcp_qdio* %16, %struct.zfcp_qdio** %9, align 8
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %20 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %23 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %90

26:                                               ; preds = %4
  %27 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %28 = load i32, i32* @FSF_QTCB_SEND_GENERIC, align 4
  %29 = load i32, i32* @SBAL_SFLAGS0_TYPE_WRITE_READ, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %27, i32 %28, i32 %29, i32* %30)
  store %struct.zfcp_fsf_req* %31, %struct.zfcp_fsf_req** %10, align 8
  %32 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %33 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %37 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %36)
  store i32 %37, i32* %11, align 4
  br label %90

38:                                               ; preds = %26
  %39 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %40 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %41 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %45 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %49 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @zfcp_fsf_setup_ct_els(%struct.zfcp_fsf_req* %44, i32 %47, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %87

56:                                               ; preds = %38
  %57 = load i32, i32* @zfcp_fsf_send_ct_handler, align 4
  %58 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %59 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %5, align 8
  %61 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  %68 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %5, align 8
  %69 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %72 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %6, align 8
  %74 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %75 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %74, i32 0, i32 0
  store %struct.zfcp_fsf_ct_els* %73, %struct.zfcp_fsf_ct_els** %75, align 8
  %76 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %77 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %5, align 8
  %78 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @zfcp_dbf_san_req(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fsf_req* %76, i32 %79)
  %81 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %82 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %56
  br label %87

86:                                               ; preds = %56
  br label %90

87:                                               ; preds = %85, %55
  %88 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %89 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %88)
  br label %90

90:                                               ; preds = %87, %86, %35, %25
  %91 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %92 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock_irq(i32* %92)
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_setup_ct_els(%struct.zfcp_fsf_req*, i32, i32, i32) #1

declare dso_local i32 @zfcp_dbf_san_req(i8*, %struct.zfcp_fsf_req*, i32) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
