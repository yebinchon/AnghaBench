; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_fcp_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_fcp_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { i32 }
%struct.nvme_fc_remote_port = type { i32 }
%struct.nvmefc_fcp_req = type { %struct.nvme_private* }
%struct.nvme_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@qla_nvme_abort_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_local_port*, %struct.nvme_fc_remote_port*, i8*, %struct.nvmefc_fcp_req*)* @qla_nvme_fcp_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla_nvme_fcp_abort(%struct.nvme_fc_local_port* %0, %struct.nvme_fc_remote_port* %1, i8* %2, %struct.nvmefc_fcp_req* %3) #0 {
  %5 = alloca %struct.nvme_fc_local_port*, align 8
  %6 = alloca %struct.nvme_fc_remote_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvmefc_fcp_req*, align 8
  %9 = alloca %struct.nvme_private*, align 8
  %10 = alloca i64, align 8
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %5, align 8
  store %struct.nvme_fc_remote_port* %1, %struct.nvme_fc_remote_port** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.nvmefc_fcp_req* %3, %struct.nvmefc_fcp_req** %8, align 8
  %11 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %12 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %11, i32 0, i32 0
  %13 = load %struct.nvme_private*, %struct.nvme_private** %12, align 8
  store %struct.nvme_private* %13, %struct.nvme_private** %9, align 8
  %14 = load %struct.nvme_private*, %struct.nvme_private** %9, align 8
  %15 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %14, i32 0, i32 1
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.nvme_private*, %struct.nvme_private** %9, align 8
  %19 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load %struct.nvme_private*, %struct.nvme_private** %9, align 8
  %24 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %23, i32 0, i32 1
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %51

27:                                               ; preds = %4
  %28 = load %struct.nvme_private*, %struct.nvme_private** %9, align 8
  %29 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @kref_get_unless_zero(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.nvme_private*, %struct.nvme_private** %9, align 8
  %36 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %35, i32 0, i32 1
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %51

39:                                               ; preds = %27
  %40 = load %struct.nvme_private*, %struct.nvme_private** %9, align 8
  %41 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %40, i32 0, i32 1
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.nvme_private*, %struct.nvme_private** %9, align 8
  %45 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %44, i32 0, i32 0
  %46 = load i32, i32* @qla_nvme_abort_work, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.nvme_private*, %struct.nvme_private** %9, align 8
  %49 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %48, i32 0, i32 0
  %50 = call i32 @schedule_work(i32* %49)
  br label %51

51:                                               ; preds = %39, %34, %22
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
