; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_send_flogi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_send_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_frame.0 = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"tt.elsct_send not set.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"fc_frame_alloc failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QEDF_LOG_ELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Sending FLOGI to reestablish session with switch.\0A\00", align 1
@FC_FID_FLOGI = common dso_local global i32 0, align 4
@ELS_FLOGI = common dso_local global i32 0, align 4
@qedf_flogi_resp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedf_send_flogi(%struct.qedf_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_frame.0*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  %6 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %6, i32 0, i32 2
  %8 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  store %struct.fc_lport* %8, %struct.fc_lport** %4, align 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport*, i32)*, i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport*, i32)* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %15, i32 0, i32 1
  %17 = call i32 @QEDF_ERR(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %22 = call %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport* %21, i32 4)
  store %struct.fc_frame.0* %22, %struct.fc_frame.0** %5, align 8
  %23 = load %struct.fc_frame.0*, %struct.fc_frame.0** %5, align 8
  %24 = icmp ne %struct.fc_frame.0* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %26, i32 0, i32 1
  %28 = call i32 @QEDF_ERR(i32* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %54

31:                                               ; preds = %20
  %32 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* @QEDF_LOG_ELS, align 4
  %35 = call i32 @QEDF_INFO(i32* %33, i32 %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %37 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport*, i32)*, i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport*, i32)** %38, align 8
  %40 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %41 = load i32, i32* @FC_FID_FLOGI, align 4
  %42 = load %struct.fc_frame.0*, %struct.fc_frame.0** %5, align 8
  %43 = bitcast %struct.fc_frame.0* %42 to %struct.fc_frame*
  %44 = load i32, i32* @ELS_FLOGI, align 4
  %45 = load i32, i32* @qedf_flogi_resp, align 4
  %46 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %47 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %48 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %39(%struct.fc_lport* %40, i32 %41, %struct.fc_frame* %43, i32 %44, i32 %45, %struct.fc_lport* %46, i32 %49)
  %51 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %51, i32 0, i32 0
  %53 = call i32 @init_completion(i32* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %31, %25, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
