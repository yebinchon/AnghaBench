; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_xmt_fcp_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_xmt_fcp_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, %struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.nvmet_fc_fcp_iod = type { %struct.TYPE_4__* }

@NVMET_FCOP_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*)* @nvmet_fc_xmt_fcp_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_xmt_fcp_rsp(%struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_fcp_iod* %1) #0 {
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  %4 = alloca %struct.nvmet_fc_fcp_iod*, align 8
  %5 = alloca i32, align 4
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %3, align 8
  store %struct.nvmet_fc_fcp_iod* %1, %struct.nvmet_fc_fcp_iod** %4, align 8
  %6 = load i32, i32* @NVMET_FCOP_RSP, align 4
  %7 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %8 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %6, i32* %10, align 8
  %11 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %12 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %16 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %17 = call i32 @nvmet_fc_prep_fcp_rsp(%struct.nvmet_fc_tgtport* %15, %struct.nvmet_fc_fcp_iod* %16)
  %18 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %19 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (i32*, %struct.TYPE_4__*)*, i32 (i32*, %struct.TYPE_4__*)** %21, align 8
  %23 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %24 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %23, i32 0, i32 0
  %25 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %26 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 %22(i32* %24, %struct.TYPE_4__* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %33 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %34 = call i32 @nvmet_fc_abort_op(%struct.nvmet_fc_tgtport* %32, %struct.nvmet_fc_fcp_iod* %33)
  br label %35

35:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @nvmet_fc_prep_fcp_rsp(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*) #1

declare dso_local i32 @nvmet_fc_abort_op(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
