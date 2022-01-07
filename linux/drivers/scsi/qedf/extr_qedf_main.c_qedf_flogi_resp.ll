; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_flogi_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_flogi_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_exch = type { %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.qedf_ctx = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"qedf is NULL.\0A\00", align 1
@QEDF_LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"fp has IS_ERR() set.\0A\00", align 1
@ELS_LS_RJT = common dso_local global i64 0, align 8
@ELS_LS_ACC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @qedf_flogi_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_flogi_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_exch*, align 8
  %8 = alloca %struct.fc_lport*, align 8
  %9 = alloca %struct.qedf_ctx*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %11 = call %struct.fc_exch* @fc_seq_exch(%struct.fc_seq* %10)
  store %struct.fc_exch* %11, %struct.fc_exch** %7, align 8
  %12 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %13 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %12, i32 0, i32 0
  %14 = load %struct.fc_lport*, %struct.fc_lport** %13, align 8
  store %struct.fc_lport* %14, %struct.fc_lport** %8, align 8
  %15 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %16 = call %struct.qedf_ctx* @lport_priv(%struct.fc_lport* %15)
  store %struct.qedf_ctx* %16, %struct.qedf_ctx** %9, align 8
  %17 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %18 = icmp ne %struct.qedf_ctx* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i32 @QEDF_ERR(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %23 = call i64 @IS_ERR(%struct.fc_frame* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %26, i32 0, i32 2
  %28 = load i32, i32* @QEDF_LOG_ELS, align 4
  %29 = call i32 @QEDF_INFO(i32* %27, i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %54

30:                                               ; preds = %21
  %31 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %32 = call i64 @fc_frame_payload_op(%struct.fc_frame* %31)
  %33 = load i64, i64* @ELS_LS_RJT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %50

40:                                               ; preds = %30
  %41 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %42 = call i64 @fc_frame_payload_op(%struct.fc_frame* %41)
  %43 = load i64, i64* @ELS_LS_ACC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %47 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %48 = call i32 @qedf_set_data_src_addr(%struct.qedf_ctx* %46, %struct.fc_frame* %47)
  br label %49

49:                                               ; preds = %45, %40
  br label %50

50:                                               ; preds = %49, %35
  %51 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %52 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %51, i32 0, i32 0
  %53 = call i32 @complete(i32* %52)
  br label %54

54:                                               ; preds = %50, %25
  %55 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %56 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %57 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %58 = call i32 @fc_lport_flogi_resp(%struct.fc_seq* %55, %struct.fc_frame* %56, %struct.fc_lport* %57)
  br label %59

59:                                               ; preds = %54, %19
  ret void
}

declare dso_local %struct.fc_exch* @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local %struct.qedf_ctx* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i32 @qedf_set_data_src_addr(%struct.qedf_ctx*, %struct.fc_frame*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @fc_lport_flogi_resp(%struct.fc_seq*, %struct.fc_frame*, %struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
