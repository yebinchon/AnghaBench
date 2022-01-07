; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_process_els_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_process_els_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32 }
%struct.fcoe_cqe = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fcoe_cqe_midpath_info }
%struct.fcoe_cqe_midpath_info = type { i32 }
%struct.qedf_ioreq = type { i32, i32*, i32 (i32*)*, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@QEDF_LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Entered with xid = 0x%x cmd_type = %d.\0A\00", align 1
@QEDF_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@qedf_release_cmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_process_els_compl(%struct.qedf_ctx* %0, %struct.fcoe_cqe* %1, %struct.qedf_ioreq* %2) #0 {
  %4 = alloca %struct.qedf_ctx*, align 8
  %5 = alloca %struct.fcoe_cqe*, align 8
  %6 = alloca %struct.qedf_ioreq*, align 8
  %7 = alloca %struct.fcoe_cqe_midpath_info*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %4, align 8
  store %struct.fcoe_cqe* %1, %struct.fcoe_cqe** %5, align 8
  store %struct.qedf_ioreq* %2, %struct.qedf_ioreq** %6, align 8
  %8 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* @QEDF_LOG_ELS, align 4
  %11 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %12 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %15 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @QEDF_INFO(i32* %9, i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %19 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %20 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %19, i32 0, i32 5
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  %22 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %23 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %22, i32 0, i32 4
  %24 = call i32 @cancel_delayed_work(i32* %23)
  %25 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %26 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.fcoe_cqe_midpath_info* %27, %struct.fcoe_cqe_midpath_info** %7, align 8
  %28 = load %struct.fcoe_cqe_midpath_info*, %struct.fcoe_cqe_midpath_info** %7, align 8
  %29 = getelementptr inbounds %struct.fcoe_cqe_midpath_info, %struct.fcoe_cqe_midpath_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %32 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %35 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %34, i32 0, i32 2
  %36 = load i32 (i32*)*, i32 (i32*)** %35, align 8
  %37 = icmp ne i32 (i32*)* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %3
  %39 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %40 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %45 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %44, i32 0, i32 2
  %46 = load i32 (i32*)*, i32 (i32*)** %45, align 8
  %47 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %48 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 %46(i32* %49)
  %51 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %52 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %43, %38, %3
  %54 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %55 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %54, i32 0, i32 0
  %56 = load i32, i32* @qedf_release_cmd, align 4
  %57 = call i32 @kref_put(i32* %55, i32 %56)
  ret void
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
