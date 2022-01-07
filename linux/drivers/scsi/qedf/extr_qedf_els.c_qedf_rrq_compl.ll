; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_rrq_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_rrq_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_els_cb_arg = type { %struct.qedf_ioreq*, %struct.qedf_ioreq* }
%struct.qedf_ioreq = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qedf_ctx* }
%struct.qedf_ctx = type { i32 }

@QEDF_LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Entered.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Original io_req is NULL, rrq_req = %p.\0A\00", align 1
@QEDF_IOREQ_EV_ELS_TMO = common dso_local global i64 0, align 8
@QEDF_IOREQ_EV_ELS_ERR_DETECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"rrq_compl: orig io = %p, orig xid = 0x%x, rrq_xid = 0x%x, refcount=%d\0A\00", align 1
@qedf_release_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_els_cb_arg*)* @qedf_rrq_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_rrq_compl(%struct.qedf_els_cb_arg* %0) #0 {
  %2 = alloca %struct.qedf_els_cb_arg*, align 8
  %3 = alloca %struct.qedf_ioreq*, align 8
  %4 = alloca %struct.qedf_ioreq*, align 8
  %5 = alloca %struct.qedf_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.qedf_els_cb_arg* %0, %struct.qedf_els_cb_arg** %2, align 8
  %7 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %2, align 8
  %8 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %7, i32 0, i32 1
  %9 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  store %struct.qedf_ioreq* %9, %struct.qedf_ioreq** %4, align 8
  %10 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %11 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %13, align 8
  store %struct.qedf_ctx* %14, %struct.qedf_ctx** %5, align 8
  %15 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* @QEDF_LOG_ELS, align 4
  %18 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %16, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %2, align 8
  %20 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %19, i32 0, i32 0
  %21 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %20, align 8
  store %struct.qedf_ioreq* %21, %struct.qedf_ioreq** %3, align 8
  %22 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %23 = icmp ne %struct.qedf_ioreq* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %25, i32 0, i32 0
  %27 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %28 = call i32 @QEDF_ERR(i32* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.qedf_ioreq* %27)
  br label %72

29:                                               ; preds = %1
  %30 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %31 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QEDF_IOREQ_EV_ELS_TMO, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %37 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QEDF_IOREQ_EV_ELS_ERR_DETECT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %43 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %42, i32 0, i32 3
  %44 = call i32 @cancel_delayed_work_sync(i32* %43)
  br label %45

45:                                               ; preds = %41, %35, %29
  %46 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %47 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %46, i32 0, i32 1
  %48 = call i32 @kref_read(i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* @QEDF_LOG_ELS, align 4
  %52 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %53 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %54 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %57 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %50, i32 %51, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), %struct.qedf_ioreq* %52, i32 %55, i32 %58, i32 %59)
  %61 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %62 = icmp ne %struct.qedf_ioreq* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %45
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %68 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %67, i32 0, i32 1
  %69 = load i32, i32* @qedf_release_cmd, align 4
  %70 = call i32 @kref_put(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %63, %45
  br label %72

72:                                               ; preds = %71, %24
  %73 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %74 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @QEDF_IOREQ_EV_ELS_TMO, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %80 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %79, i32 0, i32 1
  %81 = load i32, i32* @qedf_release_cmd, align 4
  %82 = call i32 @kref_put(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %72
  %84 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %2, align 8
  %85 = call i32 @kfree(%struct.qedf_els_cb_arg* %84)
  ret void
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, ...) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, %struct.qedf_ioreq*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kfree(%struct.qedf_els_cb_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
