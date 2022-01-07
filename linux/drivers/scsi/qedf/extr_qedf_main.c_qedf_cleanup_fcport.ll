; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_cleanup_fcport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_cleanup_fcport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32 }
%struct.qedf_rport = type { i32*, %struct.fc_rport_priv*, i32 }
%struct.fc_rport_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QEDF_LOG_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cleaning up portid=%06x.\0A\00", align 1
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*, %struct.qedf_rport*)* @qedf_cleanup_fcport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_cleanup_fcport(%struct.qedf_ctx* %0, %struct.qedf_rport* %1) #0 {
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.qedf_rport*, align 8
  %5 = alloca %struct.fc_rport_priv*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store %struct.qedf_rport* %1, %struct.qedf_rport** %4, align 8
  %6 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %7 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %6, i32 0, i32 1
  %8 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  store %struct.fc_rport_priv* %8, %struct.fc_rport_priv** %5, align 8
  %9 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* @QEDF_LOG_CONN, align 4
  %12 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %13 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %12, i32 0, i32 1
  %14 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %13, align 8
  %15 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @QEDF_INFO(i32* %10, i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %20 = call i32 @qedf_flush_active_ios(%struct.qedf_rport* %19, i32 -1)
  %21 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %22 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %23 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %22, i32 0, i32 2
  %24 = call i64 @test_and_clear_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %28 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %29 = call i32 @qedf_upload_connection(%struct.qedf_ctx* %27, %struct.qedf_rport* %28)
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %32 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %33 = call i32 @qedf_free_sq(%struct.qedf_ctx* %31, %struct.qedf_rport* %32)
  %34 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %35 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %34, i32 0, i32 1
  store %struct.fc_rport_priv* null, %struct.fc_rport_priv** %35, align 8
  %36 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %37 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %39 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %38, i32 0, i32 0
  %40 = load i32, i32* @fc_rport_destroy, align 4
  %41 = call i32 @kref_put(i32* %39, i32 %40)
  ret void
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32) #1

declare dso_local i32 @qedf_flush_active_ios(%struct.qedf_rport*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @qedf_upload_connection(%struct.qedf_ctx*, %struct.qedf_rport*) #1

declare dso_local i32 @qedf_free_sq(%struct.qedf_ctx*, %struct.qedf_rport*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
