; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_finish_ls_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_finish_ls_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmefc_ls_req_op = type { i32, i32, %struct.nvmefc_ls_req, %struct.nvme_fc_rport* }
%struct.nvmefc_ls_req = type { i64, i64, i32 }
%struct.nvme_fc_rport = type { i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmefc_ls_req_op*)* @__nvme_fc_finish_ls_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nvme_fc_finish_ls_req(%struct.nvmefc_ls_req_op* %0) #0 {
  %2 = alloca %struct.nvmefc_ls_req_op*, align 8
  %3 = alloca %struct.nvme_fc_rport*, align 8
  %4 = alloca %struct.nvmefc_ls_req*, align 8
  %5 = alloca i64, align 8
  store %struct.nvmefc_ls_req_op* %0, %struct.nvmefc_ls_req_op** %2, align 8
  %6 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %2, align 8
  %7 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %6, i32 0, i32 3
  %8 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %7, align 8
  store %struct.nvme_fc_rport* %8, %struct.nvme_fc_rport** %3, align 8
  %9 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %2, align 8
  %10 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %9, i32 0, i32 2
  store %struct.nvmefc_ls_req* %10, %struct.nvmefc_ls_req** %4, align 8
  %11 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %2, align 8
  %16 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  br label %51

24:                                               ; preds = %1
  %25 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %2, align 8
  %26 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %25, i32 0, i32 1
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %2, align 8
  %29 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %30, i32 0, i32 1
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %4, align 8
  %38 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %4, align 8
  %41 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %4, align 8
  %44 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %48 = call i32 @fc_dma_unmap_single(i32 %36, i32 %39, i64 %46, i32 %47)
  %49 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %50 = call i32 @nvme_fc_rport_put(%struct.nvme_fc_rport* %49)
  br label %51

51:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @fc_dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @nvme_fc_rport_put(%struct.nvme_fc_rport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
