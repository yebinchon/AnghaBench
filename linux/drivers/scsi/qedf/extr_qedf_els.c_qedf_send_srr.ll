; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_send_srr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_send_srr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { i32, i32, i32, i32, %struct.qedf_rport* }
%struct.qedf_rport = type { %struct.qedf_ctx*, i32 }
%struct.qedf_ctx = type { i32, %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.fcp_srr = type { i32, i32, i8*, i8*, i32 }
%struct.qedf_els_cb_arg = type { %struct.qedf_ioreq* }

@.str = private unnamed_addr constant [22 x i8] c"orig_io_req is NULL.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"fcport is no longer offloaded.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"fcport->qedf is NULL.\0A\00", align 1
@QEDF_LOG_ELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Sending SRR orig_io=%p, orig_xid=0x%x\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Unable to allocate cb_arg for SRR\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ELS_SRR = common dso_local global i32 0, align 4
@qedf_srr_compl = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"SRR failed - release orig_io_req=0x%x\0A\00", align 1
@qedf_release_cmd = common dso_local global i32 0, align 4
@QEDF_CMD_SRR_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ioreq*, i32, i32)* @qedf_send_srr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_send_srr(%struct.qedf_ioreq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedf_ioreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fcp_srr, align 8
  %9 = alloca %struct.qedf_ctx*, align 8
  %10 = alloca %struct.qedf_rport*, align 8
  %11 = alloca %struct.fc_lport*, align 8
  %12 = alloca %struct.qedf_els_cb_arg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.qedf_els_cb_arg* null, %struct.qedf_els_cb_arg** %12, align 8
  %15 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %16 = icmp ne %struct.qedf_ioreq* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %127

21:                                               ; preds = %3
  %22 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %23 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %22, i32 0, i32 4
  %24 = load %struct.qedf_rport*, %struct.qedf_rport** %23, align 8
  store %struct.qedf_rport* %24, %struct.qedf_rport** %10, align 8
  %25 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %26 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %27 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %26, i32 0, i32 1
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %127

34:                                               ; preds = %21
  %35 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %36 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %35, i32 0, i32 0
  %37 = load %struct.qedf_ctx*, %struct.qedf_ctx** %36, align 8
  %38 = icmp ne %struct.qedf_ctx* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %127

43:                                               ; preds = %34
  %44 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %45 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %44, i32 0, i32 1
  %46 = call i32 @kref_get(i32* %45)
  %47 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %48 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %47, i32 0, i32 0
  %49 = load %struct.qedf_ctx*, %struct.qedf_ctx** %48, align 8
  store %struct.qedf_ctx* %49, %struct.qedf_ctx** %9, align 8
  %50 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %51 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %50, i32 0, i32 1
  %52 = load %struct.fc_lport*, %struct.fc_lport** %51, align 8
  store %struct.fc_lport* %52, %struct.fc_lport** %11, align 8
  %53 = load %struct.fc_lport*, %struct.fc_lport** %11, align 8
  %54 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %57 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* @QEDF_LOG_ELS, align 4
  %59 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %60 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %61 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @QEDF_INFO(i32* %57, i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), %struct.qedf_ioreq* %59, i32 %62)
  %64 = call i32 @memset(%struct.fcp_srr* %8, i32 0, i32 32)
  %65 = load i32, i32* @GFP_NOIO, align 4
  %66 = call %struct.qedf_els_cb_arg* @kzalloc(i32 8, i32 %65)
  store %struct.qedf_els_cb_arg* %66, %struct.qedf_els_cb_arg** %12, align 8
  %67 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %12, align 8
  %68 = icmp ne %struct.qedf_els_cb_arg* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %43
  %70 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %14, align 4
  br label %102

75:                                               ; preds = %43
  %76 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %77 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %12, align 8
  %78 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %77, i32 0, i32 0
  store %struct.qedf_ioreq* %76, %struct.qedf_ioreq** %78, align 8
  %79 = load i32, i32* @ELS_SRR, align 4
  %80 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %8, i32 0, i32 4
  store i32 %79, i32* %80, align 8
  %81 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %82 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @htons(i32 %83)
  %85 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %8, i32 0, i32 3
  store i8* %84, i8** %85, align 8
  %86 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %87 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @htons(i32 %88)
  %90 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %8, i32 0, i32 2
  store i8* %89, i8** %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @htonl(i32 %91)
  %93 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %8, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %7, align 4
  %95 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %8, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %97 = load i32, i32* @ELS_SRR, align 4
  %98 = load i32, i32* @qedf_srr_compl, align 4
  %99 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %12, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @qedf_initiate_els(%struct.qedf_rport* %96, i32 %97, %struct.fcp_srr* %8, i32 32, i32 %98, %struct.qedf_els_cb_arg* %99, i32 %100)
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %75, %69
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  %107 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %106, i32 0, i32 0
  %108 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %109 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %12, align 8
  %113 = call i32 @kfree(%struct.qedf_els_cb_arg* %112)
  %114 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %115 = call i32 @qedf_initiate_abts(%struct.qedf_ioreq* %114, i32 1)
  %116 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %117 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %116, i32 0, i32 1
  %118 = load i32, i32* @qedf_release_cmd, align 4
  %119 = call i32 @kref_put(i32* %117, i32 %118)
  br label %125

120:                                              ; preds = %102
  %121 = load i32, i32* @QEDF_CMD_SRR_SENT, align 4
  %122 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %123 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %122, i32 0, i32 0
  %124 = call i32 @set_bit(i32 %121, i32* %123)
  br label %125

125:                                              ; preds = %120, %105
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %39, %30, %17
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, %struct.qedf_ioreq*, i32) #1

declare dso_local i32 @memset(%struct.fcp_srr*, i32, i32) #1

declare dso_local %struct.qedf_els_cb_arg* @kzalloc(i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @qedf_initiate_els(%struct.qedf_rport*, i32, %struct.fcp_srr*, i32, i32, %struct.qedf_els_cb_arg*, i32) #1

declare dso_local i32 @kfree(%struct.qedf_els_cb_arg*) #1

declare dso_local i32 @qedf_initiate_abts(%struct.qedf_ioreq*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
