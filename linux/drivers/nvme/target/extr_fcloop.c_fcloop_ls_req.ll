; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_ls_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_ls_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { i32 }
%struct.nvme_fc_remote_port = type { %struct.fcloop_rport* }
%struct.fcloop_rport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.nvmefc_ls_req = type { i32, i32, %struct.fcloop_lsreq* }
%struct.fcloop_lsreq = type { i32, i32*, i32, i32, %struct.nvmefc_ls_req* }

@fcloop_tgt_lsrqst_done_work = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_local_port*, %struct.nvme_fc_remote_port*, %struct.nvmefc_ls_req*)* @fcloop_ls_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcloop_ls_req(%struct.nvme_fc_local_port* %0, %struct.nvme_fc_remote_port* %1, %struct.nvmefc_ls_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_fc_local_port*, align 8
  %6 = alloca %struct.nvme_fc_remote_port*, align 8
  %7 = alloca %struct.nvmefc_ls_req*, align 8
  %8 = alloca %struct.fcloop_lsreq*, align 8
  %9 = alloca %struct.fcloop_rport*, align 8
  %10 = alloca i32, align 4
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %5, align 8
  store %struct.nvme_fc_remote_port* %1, %struct.nvme_fc_remote_port** %6, align 8
  store %struct.nvmefc_ls_req* %2, %struct.nvmefc_ls_req** %7, align 8
  %11 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %12 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %11, i32 0, i32 2
  %13 = load %struct.fcloop_lsreq*, %struct.fcloop_lsreq** %12, align 8
  store %struct.fcloop_lsreq* %13, %struct.fcloop_lsreq** %8, align 8
  %14 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %6, align 8
  %15 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %14, i32 0, i32 0
  %16 = load %struct.fcloop_rport*, %struct.fcloop_rport** %15, align 8
  store %struct.fcloop_rport* %16, %struct.fcloop_rport** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %18 = load %struct.fcloop_lsreq*, %struct.fcloop_lsreq** %8, align 8
  %19 = getelementptr inbounds %struct.fcloop_lsreq, %struct.fcloop_lsreq* %18, i32 0, i32 4
  store %struct.nvmefc_ls_req* %17, %struct.nvmefc_ls_req** %19, align 8
  %20 = load %struct.fcloop_lsreq*, %struct.fcloop_lsreq** %8, align 8
  %21 = getelementptr inbounds %struct.fcloop_lsreq, %struct.fcloop_lsreq* %20, i32 0, i32 3
  %22 = load i32, i32* @fcloop_tgt_lsrqst_done_work, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load %struct.fcloop_rport*, %struct.fcloop_rport** %9, align 8
  %25 = getelementptr inbounds %struct.fcloop_rport, %struct.fcloop_rport* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ECONNREFUSED, align 4
  %30 = sub nsw i32 0, %29
  %31 = load %struct.fcloop_lsreq*, %struct.fcloop_lsreq** %8, align 8
  %32 = getelementptr inbounds %struct.fcloop_lsreq, %struct.fcloop_lsreq* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.fcloop_lsreq*, %struct.fcloop_lsreq** %8, align 8
  %34 = getelementptr inbounds %struct.fcloop_lsreq, %struct.fcloop_lsreq* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.fcloop_lsreq*, %struct.fcloop_lsreq** %8, align 8
  %36 = getelementptr inbounds %struct.fcloop_lsreq, %struct.fcloop_lsreq* %35, i32 0, i32 3
  %37 = call i32 @schedule_work(i32* %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %62

39:                                               ; preds = %3
  %40 = load %struct.fcloop_lsreq*, %struct.fcloop_lsreq** %8, align 8
  %41 = getelementptr inbounds %struct.fcloop_lsreq, %struct.fcloop_lsreq* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load %struct.fcloop_rport*, %struct.fcloop_rport** %9, align 8
  %43 = getelementptr inbounds %struct.fcloop_rport, %struct.fcloop_rport* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.fcloop_lsreq*, %struct.fcloop_lsreq** %8, align 8
  %48 = getelementptr inbounds %struct.fcloop_lsreq, %struct.fcloop_lsreq* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.fcloop_rport*, %struct.fcloop_rport** %9, align 8
  %50 = getelementptr inbounds %struct.fcloop_rport, %struct.fcloop_rport* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.fcloop_lsreq*, %struct.fcloop_lsreq** %8, align 8
  %53 = getelementptr inbounds %struct.fcloop_lsreq, %struct.fcloop_lsreq* %52, i32 0, i32 0
  %54 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %55 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %7, align 8
  %58 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @nvmet_fc_rcv_ls_req(%struct.TYPE_2__* %51, i32* %53, i32 %56, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %39, %28
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @nvmet_fc_rcv_ls_req(%struct.TYPE_2__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
