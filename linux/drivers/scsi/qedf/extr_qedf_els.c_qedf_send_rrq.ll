; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_send_rrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_send_rrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { i32, i32, %struct.TYPE_6__*, %struct.qedf_rport* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qedf_rport = type { i32, %struct.qedf_ctx*, i32 }
%struct.qedf_ctx = type { i32, %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.fc_els_rrq = type { i8*, i8*, i32, i32 }
%struct.qedf_els_cb_arg = type { %struct.qedf_ioreq* }

@.str = private unnamed_addr constant [23 x i8] c"abort_io_req is NULL.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"RRQ work was queued prior to a flush xid=0x%x, refcount=%d.\0A\00", align 1
@qedf_release_cmd = common dso_local global i32 0, align 4
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"fcport is no longer offloaded.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"fcport->qedf is NULL.\0A\00", align 1
@QEDF_LOG_ELS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"refcount for xid=%x io_req=%p refcount=%d is not 1.\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Sending RRQ orig io = %p, orig_xid = 0x%x\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Unable to allocate cb_arg for RRQ\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ELS_RRQ = common dso_local global i32 0, align 4
@qedf_rrq_compl = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"RRQ failed - release orig io req 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedf_send_rrq(%struct.qedf_ioreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ioreq*, align 8
  %4 = alloca %struct.fc_els_rrq, align 8
  %5 = alloca %struct.qedf_rport*, align 8
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.qedf_els_cb_arg*, align 8
  %8 = alloca %struct.qedf_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %3, align 8
  store %struct.qedf_els_cb_arg* null, %struct.qedf_els_cb_arg** %7, align 8
  %13 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %14 = icmp ne %struct.qedf_ioreq* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %161

19:                                               ; preds = %1
  %20 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %21 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %20, i32 0, i32 3
  %22 = load %struct.qedf_rport*, %struct.qedf_rport** %21, align 8
  store %struct.qedf_rport* %22, %struct.qedf_rport** %5, align 8
  %23 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %24 = icmp ne %struct.qedf_rport* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %27 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %26, i32 0, i32 0
  %28 = call i32 @kref_read(i32* %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %30 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %35 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %34, i32 0, i32 0
  %36 = load i32, i32* @qedf_release_cmd, align 4
  %37 = call i32 @kref_put(i32* %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %161

40:                                               ; preds = %19
  %41 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %42 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %43 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %42, i32 0, i32 2
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %161

50:                                               ; preds = %40
  %51 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %52 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %51, i32 0, i32 1
  %53 = load %struct.qedf_ctx*, %struct.qedf_ctx** %52, align 8
  %54 = icmp ne %struct.qedf_ctx* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %161

59:                                               ; preds = %50
  %60 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %61 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %60, i32 0, i32 1
  %62 = load %struct.qedf_ctx*, %struct.qedf_ctx** %61, align 8
  store %struct.qedf_ctx* %62, %struct.qedf_ctx** %8, align 8
  %63 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %64 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %63, i32 0, i32 0
  %65 = call i32 @kref_read(i32* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %82

68:                                               ; preds = %59
  %69 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* @QEDF_LOG_ELS, align 4
  %72 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %73 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to %struct.qedf_ioreq*
  %77 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 (i32*, i32, i8*, %struct.qedf_ioreq*, %struct.qedf_ioreq*, ...) @QEDF_INFO(i32* %70, i32 %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), %struct.qedf_ioreq* %76, %struct.qedf_ioreq* %77, i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %161

82:                                               ; preds = %59
  %83 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %83, i32 0, i32 1
  %85 = load %struct.fc_lport*, %struct.fc_lport** %84, align 8
  store %struct.fc_lport* %85, %struct.fc_lport** %6, align 8
  %86 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %87 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %9, align 4
  %89 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %90 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  %92 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %93 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %92, i32 0, i32 0
  %94 = load i32, i32* @QEDF_LOG_ELS, align 4
  %95 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %96 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %97 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to %struct.qedf_ioreq*
  %101 = call i32 (i32*, i32, i8*, %struct.qedf_ioreq*, %struct.qedf_ioreq*, ...) @QEDF_INFO(i32* %93, i32 %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), %struct.qedf_ioreq* %95, %struct.qedf_ioreq* %100)
  %102 = call i32 @memset(%struct.fc_els_rrq* %4, i32 0, i32 24)
  %103 = load i32, i32* @GFP_NOIO, align 4
  %104 = call %struct.qedf_els_cb_arg* @kzalloc(i32 8, i32 %103)
  store %struct.qedf_els_cb_arg* %104, %struct.qedf_els_cb_arg** %7, align 8
  %105 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %7, align 8
  %106 = icmp ne %struct.qedf_els_cb_arg* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %82
  %108 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %109 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %108, i32 0, i32 0
  %110 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %11, align 4
  br label %143

113:                                              ; preds = %82
  %114 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %115 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %7, align 8
  %116 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %115, i32 0, i32 0
  store %struct.qedf_ioreq* %114, %struct.qedf_ioreq** %116, align 8
  %117 = load i32, i32* @ELS_RRQ, align 4
  %118 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %4, i32 0, i32 3
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %4, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @hton24(i32 %120, i32 %121)
  %123 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %124 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @htons(i32 %125)
  %127 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %4, i32 0, i32 1
  store i8* %126, i8** %127, align 8
  %128 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %129 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %128, i32 0, i32 2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @htons(i32 %134)
  %136 = getelementptr inbounds %struct.fc_els_rrq, %struct.fc_els_rrq* %4, i32 0, i32 0
  store i8* %135, i8** %136, align 8
  %137 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %138 = load i32, i32* @ELS_RRQ, align 4
  %139 = load i32, i32* @qedf_rrq_compl, align 4
  %140 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %7, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @qedf_initiate_els(%struct.qedf_rport* %137, i32 %138, %struct.fc_els_rrq* %4, i32 24, i32 %139, %struct.qedf_els_cb_arg* %140, i32 %141)
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %113, %107
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %148 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %147, i32 0, i32 0
  %149 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %150 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %148, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %151)
  %153 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %7, align 8
  %154 = call i32 @kfree(%struct.qedf_els_cb_arg* %153)
  %155 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %156 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %155, i32 0, i32 0
  %157 = load i32, i32* @qedf_release_cmd, align 4
  %158 = call i32 @kref_put(i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %146, %143
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %159, %68, %55, %46, %25, %15
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, %struct.qedf_ioreq*, %struct.qedf_ioreq*, ...) #1

declare dso_local i32 @memset(%struct.fc_els_rrq*, i32, i32) #1

declare dso_local %struct.qedf_els_cb_arg* @kzalloc(i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @qedf_initiate_els(%struct.qedf_rport*, i32, %struct.fc_els_rrq*, i32, i32, %struct.qedf_els_cb_arg*, i32) #1

declare dso_local i32 @kfree(%struct.qedf_els_cb_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
