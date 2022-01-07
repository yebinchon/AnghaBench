; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_els.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32 }
%struct.zfcp_fsf_ct_els = type { i32, i32, i32 }
%struct.zfcp_fsf_req = type { %struct.zfcp_fsf_ct_els*, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_SEND_ELS = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_WRITE_READ = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@zfcp_fsf_send_els_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fssels1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_send_els(%struct.zfcp_adapter* %0, i32 %1, %struct.zfcp_fsf_ct_els* %2, i32 %3) #0 {
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zfcp_fsf_req*, align 8
  %10 = alloca %struct.zfcp_qdio*, align 8
  %11 = alloca i32, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.zfcp_fsf_ct_els* %2, %struct.zfcp_fsf_ct_els** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %12, i32 0, i32 0
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  store %struct.zfcp_qdio* %14, %struct.zfcp_qdio** %10, align 8
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %10, align 8
  %18 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %10, align 8
  %21 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %93

24:                                               ; preds = %4
  %25 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %10, align 8
  %26 = load i32, i32* @FSF_QTCB_SEND_ELS, align 4
  %27 = load i32, i32* @SBAL_SFLAGS0_TYPE_WRITE_READ, align 4
  %28 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %25, i32 %26, i32 %27, i32* null)
  store %struct.zfcp_fsf_req* %28, %struct.zfcp_fsf_req** %9, align 8
  %29 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %30 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %34 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %33)
  store i32 %34, i32* %11, align 4
  br label %93

35:                                               ; preds = %24
  %36 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %37 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %38 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %42 = call i32 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %10, align 8
  %46 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %47 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %46, i32 0, i32 3
  %48 = call i32 @zfcp_qdio_sbal_limit(%struct.zfcp_qdio* %45, i32* %47, i32 2)
  br label %49

49:                                               ; preds = %44, %35
  %50 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %51 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %52 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %55 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @zfcp_fsf_setup_ct_els(%struct.zfcp_fsf_req* %50, i32 %53, i32 %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %90

62:                                               ; preds = %49
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @hton24(i32 %69, i32 %70)
  %72 = load i32, i32* @zfcp_fsf_send_els_handler, align 4
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %74 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %77 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %80 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %79, i32 0, i32 0
  store %struct.zfcp_fsf_ct_els* %78, %struct.zfcp_fsf_ct_els** %80, align 8
  %81 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @zfcp_dbf_san_req(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fsf_req* %81, i32 %82)
  %84 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %85 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %62
  br label %90

89:                                               ; preds = %62
  br label %93

90:                                               ; preds = %88, %61
  %91 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %92 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %91)
  br label %93

93:                                               ; preds = %90, %89, %32, %23
  %94 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %10, align 8
  %95 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_irq(i32* %95)
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_qdio_sbal_limit(%struct.zfcp_qdio*, i32*, i32) #1

declare dso_local i32 @zfcp_fsf_setup_ct_els(%struct.zfcp_fsf_req*, i32, i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

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
