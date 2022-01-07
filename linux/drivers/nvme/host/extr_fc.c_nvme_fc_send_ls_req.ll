; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_send_ls_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_send_ls_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_rport = type { i32 }
%struct.nvmefc_ls_req_op = type { i32, i32, %struct.nvmefc_ls_req }
%struct.nvmefc_ls_req = type { %struct.fcnvme_ls_rjt* }
%struct.fcnvme_ls_rjt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@nvme_fc_send_ls_req_done = common dso_local global i32 0, align 4
@FCNVME_LS_RJT = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_rport*, %struct.nvmefc_ls_req_op*)* @nvme_fc_send_ls_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_send_ls_req(%struct.nvme_fc_rport* %0, %struct.nvmefc_ls_req_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_fc_rport*, align 8
  %5 = alloca %struct.nvmefc_ls_req_op*, align 8
  %6 = alloca %struct.nvmefc_ls_req*, align 8
  %7 = alloca %struct.fcnvme_ls_rjt*, align 8
  %8 = alloca i32, align 4
  store %struct.nvme_fc_rport* %0, %struct.nvme_fc_rport** %4, align 8
  store %struct.nvmefc_ls_req_op* %1, %struct.nvmefc_ls_req_op** %5, align 8
  %9 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %10 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %9, i32 0, i32 2
  store %struct.nvmefc_ls_req* %10, %struct.nvmefc_ls_req** %6, align 8
  %11 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %12 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %11, i32 0, i32 0
  %13 = load %struct.fcnvme_ls_rjt*, %struct.fcnvme_ls_rjt** %12, align 8
  store %struct.fcnvme_ls_rjt* %13, %struct.fcnvme_ls_rjt** %7, align 8
  %14 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %4, align 8
  %15 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %16 = load i32, i32* @nvme_fc_send_ls_req_done, align 4
  %17 = call i32 @__nvme_fc_send_ls_req(%struct.nvme_fc_rport* %14, %struct.nvmefc_ls_req_op* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %22 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %21, i32 0, i32 1
  %23 = call i32 @wait_for_completion(i32* %22)
  %24 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %25 = call i32 @__nvme_fc_finish_ls_req(%struct.nvmefc_ls_req_op* %24)
  %26 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %27 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %20, %2
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %29
  %35 = load %struct.fcnvme_ls_rjt*, %struct.fcnvme_ls_rjt** %7, align 8
  %36 = getelementptr inbounds %struct.fcnvme_ls_rjt, %struct.fcnvme_ls_rjt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FCNVME_LS_RJT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41, %32
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @__nvme_fc_send_ls_req(%struct.nvme_fc_rport*, %struct.nvmefc_ls_req_op*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @__nvme_fc_finish_ls_req(%struct.nvmefc_ls_req_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
