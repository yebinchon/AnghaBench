; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_ctx_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_ctx_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.qed_link_output*)* }
%struct.qed_link_output = type { i32 }
%struct.fc_lport = type { i64 }
%struct.qedf_ctx = type { i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Cannot issue host reset on NPIV port.\0A\00", align 1
@QEDF_LINK_DOWN = common dso_local global i32 0, align 4
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Queuing link down work.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not upload all sessions.\0A\00", align 1
@qed_ops = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Physical link is not up.\0A\00", align 1
@QEDF_LINK_UP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Queue link up work.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_ctx_soft_reset(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.qed_link_output, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %5 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %6 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @QEDF_ERR(i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %78

11:                                               ; preds = %1
  %12 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %13 = call %struct.qedf_ctx* @lport_priv(%struct.fc_lport* %12)
  store %struct.qedf_ctx* %13, %struct.qedf_ctx** %3, align 8
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 4
  %16 = load i32, i32* @QEDF_LINK_DOWN, align 4
  %17 = call i32 @atomic_set(i32* %15, i32 %16)
  %18 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %18, i32 0, i32 2
  %20 = load i32, i32* @QEDF_LOG_DISC, align 4
  %21 = call i32 @QEDF_INFO(i32* %19, i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %25, i32 0, i32 0
  %27 = call i32 @queue_delayed_work(i32 %24, i32* %26, i32 0)
  %28 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %29 = call i32 @qedf_wait_for_upload(%struct.qedf_ctx* %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %11
  %32 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %32, i32 0, i32 2
  %34 = call i32 @QEDF_ERR(i32* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %35, i32 0, i32 6
  %37 = call i32 @atomic_read(i32* %36)
  %38 = call i32 @WARN_ON(i32 %37)
  br label %39

39:                                               ; preds = %31, %11
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qed_ops, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (i32, %struct.qed_link_output*)*, i32 (i32, %struct.qed_link_output*)** %43, align 8
  %45 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %44(i32 %47, %struct.qed_link_output* %4)
  %49 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %39
  %53 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %53, i32 0, i32 2
  %55 = load i32, i32* @QEDF_LOG_DISC, align 4
  %56 = call i32 @QEDF_INFO(i32* %54, i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %78

57:                                               ; preds = %39
  %58 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %58, i32 0, i32 0
  %60 = call i32 @flush_delayed_work(i32* %59)
  %61 = call i32 @msleep(i32 500)
  %62 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %62, i32 0, i32 4
  %64 = load i32, i32* @QEDF_LINK_UP, align 4
  %65 = call i32 @atomic_set(i32* %63, i32 %64)
  %66 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %68, i32 0, i32 2
  %70 = load i32, i32* @QEDF_LOG_DISC, align 4
  %71 = call i32 @QEDF_INFO(i32* %69, i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %75, i32 0, i32 0
  %77 = call i32 @queue_delayed_work(i32 %74, i32* %76, i32 0)
  br label %78

78:                                               ; preds = %57, %52, %9
  ret void
}

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local %struct.qedf_ctx* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @qedf_wait_for_upload(%struct.qedf_ctx*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
