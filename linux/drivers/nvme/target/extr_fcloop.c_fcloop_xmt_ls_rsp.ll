; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_xmt_ls_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_xmt_ls_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_target_port = type { i32 }
%struct.nvmefc_tgt_ls_req = type { i64, i32 (%struct.nvmefc_tgt_ls_req*)*, i32 }
%struct.fcloop_lsreq = type { i32, %struct.nvmefc_ls_req* }
%struct.nvmefc_ls_req = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_fc_target_port*, %struct.nvmefc_tgt_ls_req*)* @fcloop_xmt_ls_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcloop_xmt_ls_rsp(%struct.nvmet_fc_target_port* %0, %struct.nvmefc_tgt_ls_req* %1) #0 {
  %3 = alloca %struct.nvmet_fc_target_port*, align 8
  %4 = alloca %struct.nvmefc_tgt_ls_req*, align 8
  %5 = alloca %struct.fcloop_lsreq*, align 8
  %6 = alloca %struct.nvmefc_ls_req*, align 8
  store %struct.nvmet_fc_target_port* %0, %struct.nvmet_fc_target_port** %3, align 8
  store %struct.nvmefc_tgt_ls_req* %1, %struct.nvmefc_tgt_ls_req** %4, align 8
  %7 = load %struct.nvmefc_tgt_ls_req*, %struct.nvmefc_tgt_ls_req** %4, align 8
  %8 = call %struct.fcloop_lsreq* @tgt_ls_req_to_lsreq(%struct.nvmefc_tgt_ls_req* %7)
  store %struct.fcloop_lsreq* %8, %struct.fcloop_lsreq** %5, align 8
  %9 = load %struct.fcloop_lsreq*, %struct.fcloop_lsreq** %5, align 8
  %10 = getelementptr inbounds %struct.fcloop_lsreq, %struct.fcloop_lsreq* %9, i32 0, i32 1
  %11 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  store %struct.nvmefc_ls_req* %11, %struct.nvmefc_ls_req** %6, align 8
  %12 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %13 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.nvmefc_tgt_ls_req*, %struct.nvmefc_tgt_ls_req** %4, align 8
  %16 = getelementptr inbounds %struct.nvmefc_tgt_ls_req, %struct.nvmefc_tgt_ls_req* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %19 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.nvmefc_tgt_ls_req*, %struct.nvmefc_tgt_ls_req** %4, align 8
  %22 = getelementptr inbounds %struct.nvmefc_tgt_ls_req, %struct.nvmefc_tgt_ls_req* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %27 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.nvmefc_tgt_ls_req*, %struct.nvmefc_tgt_ls_req** %4, align 8
  %31 = getelementptr inbounds %struct.nvmefc_tgt_ls_req, %struct.nvmefc_tgt_ls_req* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i64 [ %28, %25 ], [ %32, %29 ]
  %35 = call i32 @memcpy(i32 %14, i32 %17, i64 %34)
  %36 = load %struct.nvmefc_tgt_ls_req*, %struct.nvmefc_tgt_ls_req** %4, align 8
  %37 = getelementptr inbounds %struct.nvmefc_tgt_ls_req, %struct.nvmefc_tgt_ls_req* %36, i32 0, i32 1
  %38 = load i32 (%struct.nvmefc_tgt_ls_req*)*, i32 (%struct.nvmefc_tgt_ls_req*)** %37, align 8
  %39 = load %struct.nvmefc_tgt_ls_req*, %struct.nvmefc_tgt_ls_req** %4, align 8
  %40 = call i32 %38(%struct.nvmefc_tgt_ls_req* %39)
  %41 = load %struct.fcloop_lsreq*, %struct.fcloop_lsreq** %5, align 8
  %42 = getelementptr inbounds %struct.fcloop_lsreq, %struct.fcloop_lsreq* %41, i32 0, i32 0
  %43 = call i32 @schedule_work(i32* %42)
  ret i32 0
}

declare dso_local %struct.fcloop_lsreq* @tgt_ls_req_to_lsreq(%struct.nvmefc_tgt_ls_req*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
