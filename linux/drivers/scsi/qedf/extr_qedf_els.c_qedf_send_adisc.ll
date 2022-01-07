; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_send_adisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_send_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_rport = type { %struct.qedf_ctx* }
%struct.qedf_ctx = type { i32, %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_els_adisc = type { i32 }
%struct.fc_frame_header = type { i32 }
%struct.qedf_els_cb_arg = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate cb_arg for ADISC\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QEDF_LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Sending ADISC ox_id=0x%x.\0A\00", align 1
@ELS_ADISC = common dso_local global i32 0, align 4
@qedf_l2_els_compl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ADISC failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedf_send_adisc(%struct.qedf_rport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.qedf_rport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_els_adisc*, align 8
  %6 = alloca %struct.fc_frame_header*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca %struct.qedf_els_cb_arg*, align 8
  %9 = alloca %struct.qedf_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qedf_rport* %0, %struct.qedf_rport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %12 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %13 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %12, i32 0, i32 0
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %13, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 1
  %16 = load %struct.fc_lport*, %struct.fc_lport** %15, align 8
  store %struct.fc_lport* %16, %struct.fc_lport** %7, align 8
  store %struct.qedf_els_cb_arg* null, %struct.qedf_els_cb_arg** %8, align 8
  %17 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %18 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %21 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %20, i32 0, i32 0
  %22 = load %struct.qedf_ctx*, %struct.qedf_ctx** %21, align 8
  store %struct.qedf_ctx* %22, %struct.qedf_ctx** %9, align 8
  %23 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %24 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %23)
  store %struct.fc_frame_header* %24, %struct.fc_frame_header** %6, align 8
  %25 = load i32, i32* @GFP_NOIO, align 4
  %26 = call %struct.qedf_els_cb_arg* @kzalloc(i32 4, i32 %25)
  store %struct.qedf_els_cb_arg* %26, %struct.qedf_els_cb_arg** %8, align 8
  %27 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %8, align 8
  %28 = icmp ne %struct.qedf_els_cb_arg* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %30, i32 0, i32 0
  %32 = call i32 @QEDF_ERR(i32* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %58

35:                                               ; preds = %2
  %36 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %37 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntohs(i32 %38)
  %40 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %8, align 8
  %41 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* @QEDF_LOG_ELS, align 4
  %45 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %8, align 8
  %46 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @QEDF_INFO(i32* %43, i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %50 = call %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame* %49, i32 4)
  store %struct.fc_els_adisc* %50, %struct.fc_els_adisc** %5, align 8
  %51 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %52 = load i32, i32* @ELS_ADISC, align 4
  %53 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %5, align 8
  %54 = load i32, i32* @qedf_l2_els_compl, align 4
  %55 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @qedf_initiate_els(%struct.qedf_rport* %51, i32 %52, %struct.fc_els_adisc* %53, i32 4, i32 %54, %struct.qedf_els_cb_arg* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %35, %29
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %63 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %62, i32 0, i32 0
  %64 = call i32 @QEDF_ERR(i32* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %8, align 8
  %66 = call i32 @kfree(%struct.qedf_els_cb_arg* %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local %struct.qedf_els_cb_arg* @kzalloc(i32, i32) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32) #1

declare dso_local %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @qedf_initiate_els(%struct.qedf_rport*, i32, %struct.fc_els_adisc*, i32, i32, %struct.qedf_els_cb_arg*, i32) #1

declare dso_local i32 @kfree(%struct.qedf_els_cb_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
