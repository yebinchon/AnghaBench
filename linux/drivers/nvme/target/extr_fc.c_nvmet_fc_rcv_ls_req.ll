; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_rcv_ls_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_rcv_ls_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_target_port = type { i32 }
%struct.nvmefc_tgt_ls_req = type { i32 }
%struct.nvmet_fc_tgtport = type { i32 }
%struct.nvmet_fc_ls_iod = type { i32, i32, i32, i32*, %struct.nvmefc_tgt_ls_req* }

@NVME_FC_MAX_LS_BUFFER_SIZE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmet_fc_rcv_ls_req(%struct.nvmet_fc_target_port* %0, %struct.nvmefc_tgt_ls_req* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvmet_fc_target_port*, align 8
  %7 = alloca %struct.nvmefc_tgt_ls_req*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvmet_fc_tgtport*, align 8
  %11 = alloca %struct.nvmet_fc_ls_iod*, align 8
  store %struct.nvmet_fc_target_port* %0, %struct.nvmet_fc_target_port** %6, align 8
  store %struct.nvmefc_tgt_ls_req* %1, %struct.nvmefc_tgt_ls_req** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nvmet_fc_target_port*, %struct.nvmet_fc_target_port** %6, align 8
  %13 = call %struct.nvmet_fc_tgtport* @targetport_to_tgtport(%struct.nvmet_fc_target_port* %12)
  store %struct.nvmet_fc_tgtport* %13, %struct.nvmet_fc_tgtport** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @NVME_FC_MAX_LS_BUFFER_SIZE, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @E2BIG, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %55

20:                                               ; preds = %4
  %21 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %22 = call i32 @nvmet_fc_tgtport_get(%struct.nvmet_fc_tgtport* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ESHUTDOWN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %55

27:                                               ; preds = %20
  %28 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %29 = call %struct.nvmet_fc_ls_iod* @nvmet_fc_alloc_ls_iod(%struct.nvmet_fc_tgtport* %28)
  store %struct.nvmet_fc_ls_iod* %29, %struct.nvmet_fc_ls_iod** %11, align 8
  %30 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %11, align 8
  %31 = icmp ne %struct.nvmet_fc_ls_iod* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %10, align 8
  %34 = call i32 @nvmet_fc_tgtport_put(%struct.nvmet_fc_tgtport* %33)
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %55

37:                                               ; preds = %27
  %38 = load %struct.nvmefc_tgt_ls_req*, %struct.nvmefc_tgt_ls_req** %7, align 8
  %39 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %11, align 8
  %40 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %39, i32 0, i32 4
  store %struct.nvmefc_tgt_ls_req* %38, %struct.nvmefc_tgt_ls_req** %40, align 8
  %41 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %11, align 8
  %42 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %41, i32 0, i32 3
  store i32* null, i32** %42, align 8
  %43 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %11, align 8
  %44 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @memcpy(i32 %45, i8* %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %11, align 8
  %51 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %11, align 8
  %53 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %52, i32 0, i32 0
  %54 = call i32 @schedule_work(i32* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %37, %32, %24, %17
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.nvmet_fc_tgtport* @targetport_to_tgtport(%struct.nvmet_fc_target_port*) #1

declare dso_local i32 @nvmet_fc_tgtport_get(%struct.nvmet_fc_tgtport*) #1

declare dso_local %struct.nvmet_fc_ls_iod* @nvmet_fc_alloc_ls_iod(%struct.nvmet_fc_tgtport*) #1

declare dso_local i32 @nvmet_fc_tgtport_put(%struct.nvmet_fc_tgtport*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
