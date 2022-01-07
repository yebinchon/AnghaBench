; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_ls_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_ls_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { i32 }
%struct.nvme_fc_remote_port = type { i32 }
%struct.nvmefc_ls_req = type { %struct.nvme_private* }
%struct.nvme_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@qla_nvme_abort_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_local_port*, %struct.nvme_fc_remote_port*, %struct.nvmefc_ls_req*)* @qla_nvme_ls_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla_nvme_ls_abort(%struct.nvme_fc_local_port* %0, %struct.nvme_fc_remote_port* %1, %struct.nvmefc_ls_req* %2) #0 {
  %4 = alloca %struct.nvme_fc_local_port*, align 8
  %5 = alloca %struct.nvme_fc_remote_port*, align 8
  %6 = alloca %struct.nvmefc_ls_req*, align 8
  %7 = alloca %struct.nvme_private*, align 8
  %8 = alloca i64, align 8
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %4, align 8
  store %struct.nvme_fc_remote_port* %1, %struct.nvme_fc_remote_port** %5, align 8
  store %struct.nvmefc_ls_req* %2, %struct.nvmefc_ls_req** %6, align 8
  %9 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %10 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %9, i32 0, i32 0
  %11 = load %struct.nvme_private*, %struct.nvme_private** %10, align 8
  store %struct.nvme_private* %11, %struct.nvme_private** %7, align 8
  %12 = load %struct.nvme_private*, %struct.nvme_private** %7, align 8
  %13 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %12, i32 0, i32 1
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.nvme_private*, %struct.nvme_private** %7, align 8
  %17 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.nvme_private*, %struct.nvme_private** %7, align 8
  %22 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %21, i32 0, i32 1
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  br label %49

25:                                               ; preds = %3
  %26 = load %struct.nvme_private*, %struct.nvme_private** %7, align 8
  %27 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @kref_get_unless_zero(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.nvme_private*, %struct.nvme_private** %7, align 8
  %34 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %33, i32 0, i32 1
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %49

37:                                               ; preds = %25
  %38 = load %struct.nvme_private*, %struct.nvme_private** %7, align 8
  %39 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %38, i32 0, i32 1
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.nvme_private*, %struct.nvme_private** %7, align 8
  %43 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %42, i32 0, i32 0
  %44 = load i32, i32* @qla_nvme_abort_work, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.nvme_private*, %struct.nvme_private** %7, align 8
  %47 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %46, i32 0, i32 0
  %48 = call i32 @schedule_work(i32* %47)
  br label %49

49:                                               ; preds = %37, %32, %20
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
