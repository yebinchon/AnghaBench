; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_requeue_io_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_requeue_io_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { i32, i32, i32*, %struct.qedf_rport* }
%struct.qedf_rport = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"fcport is NULL.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"sc_cmd is NULL for xid=0x%x.\0A\00", align 1
@QEDF_SCSI_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not allocate new io_req.\0A\00", align 1
@qedf_release_cmd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unable to post io_req\0A\00", align 1
@QEDF_LOG_ELS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"Reissued SCSI command from  orig_xid=0x%x on new_xid=0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ioreq*)* @qedf_requeue_io_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_requeue_io_req(%struct.qedf_ioreq* %0) #0 {
  %2 = alloca %struct.qedf_ioreq*, align 8
  %3 = alloca %struct.qedf_rport*, align 8
  %4 = alloca %struct.qedf_ioreq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %2, align 8
  %8 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %7, i32 0, i32 3
  %9 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  store %struct.qedf_rport* %9, %struct.qedf_rport** %3, align 8
  %10 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %11 = icmp ne %struct.qedf_rport* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %93

14:                                               ; preds = %1
  %15 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %2, align 8
  %16 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %21 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %2, align 8
  %25 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %93

28:                                               ; preds = %14
  %29 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %30 = load i32, i32* @QEDF_SCSI_CMD, align 4
  %31 = call %struct.qedf_ioreq* @qedf_alloc_cmd(%struct.qedf_rport* %29, i32 %30)
  store %struct.qedf_ioreq* %31, %struct.qedf_ioreq** %4, align 8
  %32 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %33 = icmp ne %struct.qedf_ioreq* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %36 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %93

40:                                               ; preds = %28
  %41 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %2, align 8
  %42 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %45 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %2, align 8
  %47 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %2, align 8
  %49 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %48, i32 0, i32 1
  %50 = load i32, i32* @qedf_release_cmd, align 4
  %51 = call i32 @kref_put(i32* %49, i32 %50)
  %52 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %53 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %52, i32 0, i32 0
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %57 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %58 = call i64 @qedf_post_io_req(%struct.qedf_rport* %56, %struct.qedf_ioreq* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %40
  %61 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %62 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %67 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %66, i32 0, i32 2
  %68 = call i32 @atomic_inc(i32* %67)
  br label %88

69:                                               ; preds = %40
  %70 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %71 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* @QEDF_LOG_ELS, align 4
  %75 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %2, align 8
  %76 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %79 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @QEDF_INFO(i32* %73, i32 %74, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %83 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %82, i32 0, i32 0
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %2, align 8
  %87 = call i32 @qedf_initiate_abts(%struct.qedf_ioreq* %86, i32 0)
  br label %93

88:                                               ; preds = %60
  %89 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %90 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %89, i32 0, i32 0
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %88, %69, %34, %19, %12
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local %struct.qedf_ioreq* @qedf_alloc_cmd(%struct.qedf_rport*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qedf_post_io_req(%struct.qedf_rport*, %struct.qedf_ioreq*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qedf_initiate_abts(%struct.qedf_ioreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
