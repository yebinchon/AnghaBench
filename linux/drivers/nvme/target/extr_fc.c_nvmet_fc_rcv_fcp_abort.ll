; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_rcv_fcp_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_rcv_fcp_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_target_port = type { i32 }
%struct.nvmefc_tgt_fcp_req = type { %struct.nvmet_fc_fcp_iod* }
%struct.nvmet_fc_fcp_iod = type { i32, i32, i32, i64, %struct.nvmet_fc_tgt_queue*, %struct.nvmefc_tgt_fcp_req* }
%struct.nvmet_fc_tgt_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvmet_fc_rcv_fcp_abort(%struct.nvmet_fc_target_port* %0, %struct.nvmefc_tgt_fcp_req* %1) #0 {
  %3 = alloca %struct.nvmet_fc_target_port*, align 8
  %4 = alloca %struct.nvmefc_tgt_fcp_req*, align 8
  %5 = alloca %struct.nvmet_fc_fcp_iod*, align 8
  %6 = alloca %struct.nvmet_fc_tgt_queue*, align 8
  %7 = alloca i64, align 8
  store %struct.nvmet_fc_target_port* %0, %struct.nvmet_fc_target_port** %3, align 8
  store %struct.nvmefc_tgt_fcp_req* %1, %struct.nvmefc_tgt_fcp_req** %4, align 8
  %8 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %4, align 8
  %9 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, %struct.nvmefc_tgt_fcp_req* %8, i32 0, i32 0
  %10 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %9, align 8
  store %struct.nvmet_fc_fcp_iod* %10, %struct.nvmet_fc_fcp_iod** %5, align 8
  %11 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %12 = icmp ne %struct.nvmet_fc_fcp_iod* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %15 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %14, i32 0, i32 5
  %16 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %15, align 8
  %17 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %4, align 8
  %18 = icmp ne %struct.nvmefc_tgt_fcp_req* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  br label %48

20:                                               ; preds = %13
  %21 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %22 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %21, i32 0, i32 4
  %23 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %22, align 8
  store %struct.nvmet_fc_tgt_queue* %23, %struct.nvmet_fc_tgt_queue** %6, align 8
  %24 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %6, align 8
  %25 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %29 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %20
  %33 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %34 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %33, i32 0, i32 2
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %37 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %39 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %41 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %40, i32 0, i32 2
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %32, %20
  %44 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %6, align 8
  %45 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %44, i32 0, i32 0
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %43, %19
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
