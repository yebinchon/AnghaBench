; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_tm_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_tm_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.csio_scsim = type { i32 }

@n_tm_active = common dso_local global i32 0, align 4
@csio_scsis_uninit = common dso_local global i32 0, align 4
@SCSI_ABORT = common dso_local global i32 0, align 4
@csio_scsis_aborting = common dso_local global i32 0, align 4
@SCSI_CLOSE = common dso_local global i32 0, align 4
@csio_scsis_closing = common dso_local global i32 0, align 4
@FW_HOSTERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unhandled event:%d sent to req:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, i32)* @csio_scsis_tm_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsis_tm_active(%struct.csio_ioreq* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_ioreq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca %struct.csio_scsim*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %8 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %7, i32 0, i32 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.csio_hw*, %struct.csio_hw** %10, align 8
  store %struct.csio_hw* %11, %struct.csio_hw** %5, align 8
  %12 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %13 = call %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw* %12)
  store %struct.csio_scsim* %13, %struct.csio_scsim** %6, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %76 [
    i32 129, label %15
    i32 131, label %27
    i32 130, label %46
    i32 128, label %65
  ]

15:                                               ; preds = %2
  %16 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %17 = load i32, i32* @n_tm_active, align 4
  %18 = call i32 @CSIO_DEC_STATS(%struct.csio_scsim* %16, i32 %17)
  %19 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %20 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @list_del_init(i32* %21)
  %23 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %24 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %23, i32 0, i32 0
  %25 = load i32, i32* @csio_scsis_uninit, align 4
  %26 = call i32 @csio_set_state(%struct.TYPE_4__* %24, i32 %25)
  br label %82

27:                                               ; preds = %2
  %28 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %29 = load i32, i32* @SCSI_ABORT, align 4
  %30 = call i32 @csio_scsi_abrt_cls(%struct.csio_ioreq* %28, i32 %29)
  %31 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %32 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %37 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %38 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @csio_wr_issue(%struct.csio_hw* %36, i32 %39, i32 0)
  %41 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %42 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %41, i32 0, i32 0
  %43 = load i32, i32* @csio_scsis_aborting, align 4
  %44 = call i32 @csio_set_state(%struct.TYPE_4__* %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %27
  br label %82

46:                                               ; preds = %2
  %47 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %48 = load i32, i32* @SCSI_CLOSE, align 4
  %49 = call i32 @csio_scsi_abrt_cls(%struct.csio_ioreq* %47, i32 %48)
  %50 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %51 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %56 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %57 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @csio_wr_issue(%struct.csio_hw* %55, i32 %58, i32 0)
  %60 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %61 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %60, i32 0, i32 0
  %62 = load i32, i32* @csio_scsis_closing, align 4
  %63 = call i32 @csio_set_state(%struct.TYPE_4__* %61, i32 %62)
  br label %64

64:                                               ; preds = %54, %46
  br label %82

65:                                               ; preds = %2
  %66 = load i32, i32* @FW_HOSTERROR, align 4
  %67 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %68 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %70 = load i32, i32* @n_tm_active, align 4
  %71 = call i32 @CSIO_DEC_STATS(%struct.csio_scsim* %69, i32 %70)
  %72 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %73 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %72, i32 0, i32 0
  %74 = load i32, i32* @csio_scsis_uninit, align 4
  %75 = call i32 @csio_set_state(%struct.TYPE_4__* %73, i32 %74)
  br label %82

76:                                               ; preds = %2
  %77 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %80 = call i32 @csio_dbg(%struct.csio_hw* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %78, %struct.csio_ioreq* %79)
  %81 = call i32 @CSIO_DB_ASSERT(i32 0)
  br label %82

82:                                               ; preds = %76, %65, %64, %45, %15
  ret void
}

declare dso_local %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i32 @CSIO_DEC_STATS(%struct.csio_scsim*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @csio_set_state(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @csio_scsi_abrt_cls(%struct.csio_ioreq*, i32) #1

declare dso_local i32 @csio_wr_issue(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i32, %struct.csio_ioreq*) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
