; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_handle_ls_rqst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_handle_ls_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { i32 }
%struct.nvmet_fc_ls_iod = type { i32, %struct.TYPE_2__*, i32*, i32, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, %struct.nvmet_fc_ls_iod* }
%struct.fcnvme_ls_rqst_w0 = type { i32 }

@nvmet_fc_xmt_ls_rsp_done = common dso_local global i32 0, align 4
@NVME_FC_MAX_LS_BUFFER_SIZE = common dso_local global i32 0, align 4
@FCNVME_RJT_RC_INVAL = common dso_local global i32 0, align 4
@FCNVME_RJT_EXP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_ls_iod*)* @nvmet_fc_handle_ls_rqst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_handle_ls_rqst(%struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_ls_iod* %1) #0 {
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  %4 = alloca %struct.nvmet_fc_ls_iod*, align 8
  %5 = alloca %struct.fcnvme_ls_rqst_w0*, align 8
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %3, align 8
  store %struct.nvmet_fc_ls_iod* %1, %struct.nvmet_fc_ls_iod** %4, align 8
  %6 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %7 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.fcnvme_ls_rqst_w0*
  store %struct.fcnvme_ls_rqst_w0* %9, %struct.fcnvme_ls_rqst_w0** %5, align 8
  %10 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %11 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %12 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store %struct.nvmet_fc_ls_iod* %10, %struct.nvmet_fc_ls_iod** %14, align 8
  %15 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %16 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %19 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32 %17, i32* %21, align 8
  %22 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %23 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %26 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @nvmet_fc_xmt_ls_rsp_done, align 4
  %30 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %31 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 8
  %34 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %35 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %39 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.fcnvme_ls_rqst_w0*, %struct.fcnvme_ls_rqst_w0** %5, align 8
  %41 = getelementptr inbounds %struct.fcnvme_ls_rqst_w0, %struct.fcnvme_ls_rqst_w0* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %55 [
    i32 130, label %43
    i32 129, label %47
    i32 128, label %51
  ]

43:                                               ; preds = %2
  %44 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %45 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %46 = call i32 @nvmet_fc_ls_create_association(%struct.nvmet_fc_tgtport* %44, %struct.nvmet_fc_ls_iod* %45)
  br label %70

47:                                               ; preds = %2
  %48 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %49 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %50 = call i32 @nvmet_fc_ls_create_connection(%struct.nvmet_fc_tgtport* %48, %struct.nvmet_fc_ls_iod* %49)
  br label %70

51:                                               ; preds = %2
  %52 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %53 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %54 = call i32 @nvmet_fc_ls_disconnect(%struct.nvmet_fc_tgtport* %52, %struct.nvmet_fc_ls_iod* %53)
  br label %70

55:                                               ; preds = %2
  %56 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %57 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NVME_FC_MAX_LS_BUFFER_SIZE, align 4
  %60 = load %struct.fcnvme_ls_rqst_w0*, %struct.fcnvme_ls_rqst_w0** %5, align 8
  %61 = getelementptr inbounds %struct.fcnvme_ls_rqst_w0, %struct.fcnvme_ls_rqst_w0* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FCNVME_RJT_RC_INVAL, align 4
  %64 = load i32, i32* @FCNVME_RJT_EXP_NONE, align 4
  %65 = call i64 @nvmet_fc_format_rjt(i32 %58, i32 %59, i32 %62, i32 %63, i32 %64, i32 0)
  %66 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %67 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %65, i64* %69, align 8
  br label %70

70:                                               ; preds = %55, %51, %47, %43
  %71 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %72 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %73 = call i32 @nvmet_fc_xmt_ls_rsp(%struct.nvmet_fc_tgtport* %71, %struct.nvmet_fc_ls_iod* %72)
  ret void
}

declare dso_local i32 @nvmet_fc_ls_create_association(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_ls_iod*) #1

declare dso_local i32 @nvmet_fc_ls_create_connection(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_ls_iod*) #1

declare dso_local i32 @nvmet_fc_ls_disconnect(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_ls_iod*) #1

declare dso_local i64 @nvmet_fc_format_rjt(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nvmet_fc_xmt_ls_rsp(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_ls_iod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
