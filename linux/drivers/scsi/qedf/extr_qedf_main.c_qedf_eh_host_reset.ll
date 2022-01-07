; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_eh_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_eh_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fc_lport = type { i32 }
%struct.qedf_ctx = type { i32, i32, i32 }

@QEDF_LINK_DOWN = common dso_local global i64 0, align 8
@QEDF_UNLOADING = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"HOST RESET Issued...\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @qedf_eh_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_eh_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.qedf_ctx*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.fc_lport* @shost_priv(i32 %10)
  store %struct.fc_lport* %11, %struct.fc_lport** %4, align 8
  %12 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %13 = call %struct.qedf_ctx* @lport_priv(%struct.fc_lport* %12)
  store %struct.qedf_ctx* %13, %struct.qedf_ctx** %5, align 8
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 2
  %16 = call i64 @atomic_read(i32* %15)
  %17 = load i64, i64* @QEDF_LINK_DOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @QEDF_UNLOADING, align 4
  %21 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %21, i32 0, i32 1
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %1
  %26 = load i32, i32* @FAILED, align 4
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %19
  %28 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %28, i32 0, i32 0
  %30 = call i32 @QEDF_ERR(i32* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %32 = call i32 @qedf_ctx_soft_reset(%struct.fc_lport* %31)
  %33 = load i32, i32* @SUCCESS, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.fc_lport* @shost_priv(i32) #1

declare dso_local %struct.qedf_ctx* @lport_priv(%struct.fc_lport*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @qedf_ctx_soft_reset(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
