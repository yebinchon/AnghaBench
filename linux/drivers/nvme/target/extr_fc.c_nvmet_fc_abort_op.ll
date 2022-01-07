; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_abort_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_abort_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.nvmefc_tgt_fcp_req*)* }
%struct.nvmefc_tgt_fcp_req = type { i32 }
%struct.nvmet_fc_fcp_iod = type { i32, i32, %struct.nvmefc_tgt_fcp_req* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*)* @nvmet_fc_abort_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_abort_op(%struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_fcp_iod* %1) #0 {
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  %4 = alloca %struct.nvmet_fc_fcp_iod*, align 8
  %5 = alloca %struct.nvmefc_tgt_fcp_req*, align 8
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %3, align 8
  store %struct.nvmet_fc_fcp_iod* %1, %struct.nvmet_fc_fcp_iod** %4, align 8
  %6 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %7 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %6, i32 0, i32 2
  %8 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %7, align 8
  store %struct.nvmefc_tgt_fcp_req* %8, %struct.nvmefc_tgt_fcp_req** %5, align 8
  %9 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %10 = call i32 @nvmet_fc_free_tgt_pgs(%struct.nvmet_fc_fcp_iod* %9)
  %11 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %12 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %17 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*, %struct.nvmefc_tgt_fcp_req*)*, i32 (i32*, %struct.nvmefc_tgt_fcp_req*)** %19, align 8
  %21 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %22 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %21, i32 0, i32 0
  %23 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %5, align 8
  %24 = call i32 %20(i32* %22, %struct.nvmefc_tgt_fcp_req* %23)
  br label %25

25:                                               ; preds = %15, %2
  %26 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %27 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %30 = call i32 @nvmet_fc_free_fcp_iod(i32 %28, %struct.nvmet_fc_fcp_iod* %29)
  ret void
}

declare dso_local i32 @nvmet_fc_free_tgt_pgs(%struct.nvmet_fc_fcp_iod*) #1

declare dso_local i32 @nvmet_fc_free_fcp_iod(i32, %struct.nvmet_fc_fcp_iod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
