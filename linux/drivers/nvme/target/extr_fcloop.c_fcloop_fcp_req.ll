; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_fcp_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_fcp_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { i32 }
%struct.nvme_fc_remote_port = type { %struct.fcloop_rport* }
%struct.fcloop_rport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nvmefc_fcp_req = type { %struct.fcloop_ini_fcpreq* }
%struct.fcloop_ini_fcpreq = type { i32, %struct.fcloop_fcpreq*, %struct.nvmefc_fcp_req* }
%struct.fcloop_fcpreq = type { i32, i32, i32, i32, i32, i32, i32, %struct.nvmefc_fcp_req* }

@ECONNREFUSED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INI_IO_START = common dso_local global i32 0, align 4
@fcloop_fcp_recv_work = common dso_local global i32 0, align 4
@fcloop_fcp_abort_recv_work = common dso_local global i32 0, align 4
@fcloop_tgt_fcprqst_done_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_local_port*, %struct.nvme_fc_remote_port*, i8*, %struct.nvmefc_fcp_req*)* @fcloop_fcp_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcloop_fcp_req(%struct.nvme_fc_local_port* %0, %struct.nvme_fc_remote_port* %1, i8* %2, %struct.nvmefc_fcp_req* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_fc_local_port*, align 8
  %7 = alloca %struct.nvme_fc_remote_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nvmefc_fcp_req*, align 8
  %10 = alloca %struct.fcloop_rport*, align 8
  %11 = alloca %struct.fcloop_ini_fcpreq*, align 8
  %12 = alloca %struct.fcloop_fcpreq*, align 8
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %6, align 8
  store %struct.nvme_fc_remote_port* %1, %struct.nvme_fc_remote_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.nvmefc_fcp_req* %3, %struct.nvmefc_fcp_req** %9, align 8
  %13 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %7, align 8
  %14 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %13, i32 0, i32 0
  %15 = load %struct.fcloop_rport*, %struct.fcloop_rport** %14, align 8
  store %struct.fcloop_rport* %15, %struct.fcloop_rport** %10, align 8
  %16 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %17 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %16, i32 0, i32 0
  %18 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %17, align 8
  store %struct.fcloop_ini_fcpreq* %18, %struct.fcloop_ini_fcpreq** %11, align 8
  %19 = load %struct.fcloop_rport*, %struct.fcloop_rport** %10, align 8
  %20 = getelementptr inbounds %struct.fcloop_rport, %struct.fcloop_rport* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ECONNREFUSED, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %78

26:                                               ; preds = %4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.fcloop_fcpreq* @kzalloc(i32 40, i32 %27)
  store %struct.fcloop_fcpreq* %28, %struct.fcloop_fcpreq** %12, align 8
  %29 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %12, align 8
  %30 = icmp ne %struct.fcloop_fcpreq* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %78

34:                                               ; preds = %26
  %35 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %36 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %11, align 8
  %37 = getelementptr inbounds %struct.fcloop_ini_fcpreq, %struct.fcloop_ini_fcpreq* %36, i32 0, i32 2
  store %struct.nvmefc_fcp_req* %35, %struct.nvmefc_fcp_req** %37, align 8
  %38 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %12, align 8
  %39 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %11, align 8
  %40 = getelementptr inbounds %struct.fcloop_ini_fcpreq, %struct.fcloop_ini_fcpreq* %39, i32 0, i32 1
  store %struct.fcloop_fcpreq* %38, %struct.fcloop_fcpreq** %40, align 8
  %41 = load %struct.fcloop_ini_fcpreq*, %struct.fcloop_ini_fcpreq** %11, align 8
  %42 = getelementptr inbounds %struct.fcloop_ini_fcpreq, %struct.fcloop_ini_fcpreq* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %45 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %12, align 8
  %46 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %45, i32 0, i32 7
  store %struct.nvmefc_fcp_req* %44, %struct.nvmefc_fcp_req** %46, align 8
  %47 = load %struct.fcloop_rport*, %struct.fcloop_rport** %10, align 8
  %48 = getelementptr inbounds %struct.fcloop_rport, %struct.fcloop_rport* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %12, align 8
  %53 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @INI_IO_START, align 4
  %55 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %12, align 8
  %56 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %12, align 8
  %58 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %57, i32 0, i32 4
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %12, align 8
  %61 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %60, i32 0, i32 0
  %62 = load i32, i32* @fcloop_fcp_recv_work, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %12, align 8
  %65 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %64, i32 0, i32 3
  %66 = load i32, i32* @fcloop_fcp_abort_recv_work, align 4
  %67 = call i32 @INIT_WORK(i32* %65, i32 %66)
  %68 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %12, align 8
  %69 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %68, i32 0, i32 2
  %70 = load i32, i32* @fcloop_tgt_fcprqst_done_work, align 4
  %71 = call i32 @INIT_WORK(i32* %69, i32 %70)
  %72 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %12, align 8
  %73 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %72, i32 0, i32 1
  %74 = call i32 @kref_init(i32* %73)
  %75 = load %struct.fcloop_fcpreq*, %struct.fcloop_fcpreq** %12, align 8
  %76 = getelementptr inbounds %struct.fcloop_fcpreq, %struct.fcloop_fcpreq* %75, i32 0, i32 0
  %77 = call i32 @schedule_work(i32* %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %34, %31, %23
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.fcloop_fcpreq* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
