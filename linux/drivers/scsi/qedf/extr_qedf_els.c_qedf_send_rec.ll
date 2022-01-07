; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_send_rec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_send_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { i32, i32, %struct.TYPE_6__*, %struct.qedf_rport* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qedf_rport = type { i32, %struct.qedf_ctx*, i32 }
%struct.qedf_ctx = type { i32, %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.fc_els_rec = type { i8*, i8*, i32, i32 }
%struct.qedf_els_cb_arg = type { %struct.qedf_ioreq* }

@.str = private unnamed_addr constant [22 x i8] c"orig_io_req is NULL.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"fcport is no longer offloaded.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"fcport->qedf is NULL.\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Unable to allocate cb_arg for REC\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ELS_REC = common dso_local global i32 0, align 4
@QEDF_LOG_ELS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Sending REC orig_io=%p, orig_xid=0x%x rx_id=0x%x\0A\00", align 1
@qedf_rec_compl = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"REC failed - release orig_io_req=0x%x\0A\00", align 1
@qedf_release_cmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedf_send_rec(%struct.qedf_ioreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ioreq*, align 8
  %4 = alloca %struct.fc_els_rec, align 8
  %5 = alloca %struct.qedf_rport*, align 8
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.qedf_els_cb_arg*, align 8
  %8 = alloca %struct.qedf_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %3, align 8
  store %struct.qedf_els_cb_arg* null, %struct.qedf_els_cb_arg** %7, align 8
  %12 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %13 = icmp ne %struct.qedf_ioreq* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %125

18:                                               ; preds = %1
  %19 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %20 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %19, i32 0, i32 3
  %21 = load %struct.qedf_rport*, %struct.qedf_rport** %20, align 8
  store %struct.qedf_rport* %21, %struct.qedf_rport** %5, align 8
  %22 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %23 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %24 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %23, i32 0, i32 2
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %125

31:                                               ; preds = %18
  %32 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %33 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %32, i32 0, i32 1
  %34 = load %struct.qedf_ctx*, %struct.qedf_ctx** %33, align 8
  %35 = icmp ne %struct.qedf_ctx* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %125

40:                                               ; preds = %31
  %41 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %42 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %41, i32 0, i32 0
  %43 = call i32 @kref_get(i32* %42)
  %44 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %45 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %44, i32 0, i32 1
  %46 = load %struct.qedf_ctx*, %struct.qedf_ctx** %45, align 8
  store %struct.qedf_ctx* %46, %struct.qedf_ctx** %8, align 8
  %47 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %47, i32 0, i32 1
  %49 = load %struct.fc_lport*, %struct.fc_lport** %48, align 8
  store %struct.fc_lport* %49, %struct.fc_lport** %6, align 8
  %50 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %51 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %9, align 4
  %53 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %54 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = call i32 @memset(%struct.fc_els_rec* %4, i32 0, i32 24)
  %57 = load i32, i32* @GFP_NOIO, align 4
  %58 = call %struct.qedf_els_cb_arg* @kzalloc(i32 8, i32 %57)
  store %struct.qedf_els_cb_arg* %58, %struct.qedf_els_cb_arg** %7, align 8
  %59 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %7, align 8
  %60 = icmp ne %struct.qedf_els_cb_arg* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %40
  %62 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %107

67:                                               ; preds = %40
  %68 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %69 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %7, align 8
  %70 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %69, i32 0, i32 0
  store %struct.qedf_ioreq* %68, %struct.qedf_ioreq** %70, align 8
  %71 = load i32, i32* @ELS_REC, align 4
  %72 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %4, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %4, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @hton24(i32 %74, i32 %75)
  %77 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %78 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @htons(i32 %79)
  %81 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %4, i32 0, i32 1
  store i8* %80, i8** %81, align 8
  %82 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %83 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @htons(i32 %88)
  %90 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %4, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  %91 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %92 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %91, i32 0, i32 0
  %93 = load i32, i32* @QEDF_LOG_ELS, align 4
  %94 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %95 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %96 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %4, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @QEDF_INFO(i32* %92, i32 %93, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), %struct.qedf_ioreq* %94, i32 %97, i8* %99)
  %101 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %102 = load i32, i32* @ELS_REC, align 4
  %103 = load i32, i32* @qedf_rec_compl, align 4
  %104 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %7, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @qedf_initiate_els(%struct.qedf_rport* %101, i32 %102, %struct.fc_els_rec* %4, i32 24, i32 %103, %struct.qedf_els_cb_arg* %104, i32 %105)
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %67, %61
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %112 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %111, i32 0, i32 0
  %113 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %114 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %7, align 8
  %118 = call i32 @kfree(%struct.qedf_els_cb_arg* %117)
  %119 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %120 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %119, i32 0, i32 0
  %121 = load i32, i32* @qedf_release_cmd, align 4
  %122 = call i32 @kref_put(i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %110, %107
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %36, %27, %14
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @memset(%struct.fc_els_rec*, i32, i32) #1

declare dso_local %struct.qedf_els_cb_arg* @kzalloc(i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, %struct.qedf_ioreq*, i32, i8*) #1

declare dso_local i32 @qedf_initiate_els(%struct.qedf_rport*, i32, %struct.fc_els_rec*, i32, i32, %struct.qedf_els_cb_arg*, i32) #1

declare dso_local i32 @kfree(%struct.qedf_els_cb_arg*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
