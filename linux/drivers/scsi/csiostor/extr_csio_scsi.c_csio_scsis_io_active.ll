; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_io_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_io_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { %struct.TYPE_4__, i32, i32, i32, %struct.csio_rnode*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.csio_rnode = type { i32 }
%struct.TYPE_3__ = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.csio_scsim = type { i32 }

@n_active = common dso_local global i32 0, align 4
@csio_scsis_uninit = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4
@csio_scsis_shost_cmpl_await = common dso_local global i32 0, align 4
@SCSI_ABORT = common dso_local global i32 0, align 4
@csio_scsis_aborting = common dso_local global i32 0, align 4
@SCSI_CLOSE = common dso_local global i32 0, align 4
@csio_scsis_closing = common dso_local global i32 0, align 4
@FW_HOSTERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unhandled event:%d sent to req:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, i32)* @csio_scsis_io_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsis_io_active(%struct.csio_ioreq* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_ioreq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca %struct.csio_scsim*, align 8
  %7 = alloca %struct.csio_rnode*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %9 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %8, i32 0, i32 5
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.csio_hw*, %struct.csio_hw** %11, align 8
  store %struct.csio_hw* %12, %struct.csio_hw** %5, align 8
  %13 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %14 = call %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw* %13)
  store %struct.csio_scsim* %14, %struct.csio_scsim** %6, align 8
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %111 [
    i32 129, label %16
    i32 131, label %62
    i32 130, label %81
    i32 128, label %100
  ]

16:                                               ; preds = %2
  %17 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %18 = load i32, i32* @n_active, align 4
  %19 = call i32 @CSIO_DEC_STATS(%struct.csio_scsim* %17, i32 %18)
  %20 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %21 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @list_del_init(i32* %22)
  %24 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %25 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %24, i32 0, i32 0
  %26 = load i32, i32* @csio_scsis_uninit, align 4
  %27 = call i32 @csio_set_state(%struct.TYPE_4__* %25, i32 %26)
  %28 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %29 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FW_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @unlikely(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %16
  %37 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %38 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %37, i32 0, i32 4
  %39 = load %struct.csio_rnode*, %struct.csio_rnode** %38, align 8
  store %struct.csio_rnode* %39, %struct.csio_rnode** %7, align 8
  %40 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %41 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @csio_scsi_itnexus_loss_error(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load %struct.csio_rnode*, %struct.csio_rnode** %7, align 8
  %47 = call i32 @csio_is_rnode_ready(%struct.csio_rnode* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %51 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %50, i32 0, i32 0
  %52 = load i32, i32* @csio_scsis_shost_cmpl_await, align 4
  %53 = call i32 @csio_set_state(%struct.TYPE_4__* %51, i32 %52)
  %54 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %55 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.csio_rnode*, %struct.csio_rnode** %7, align 8
  %58 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %57, i32 0, i32 0
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  br label %60

60:                                               ; preds = %49, %45, %36
  br label %61

61:                                               ; preds = %60, %16
  br label %117

62:                                               ; preds = %2
  %63 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %64 = load i32, i32* @SCSI_ABORT, align 4
  %65 = call i32 @csio_scsi_abrt_cls(%struct.csio_ioreq* %63, i32 %64)
  %66 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %67 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %72 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %73 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @csio_wr_issue(%struct.csio_hw* %71, i32 %74, i32 0)
  %76 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %77 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %76, i32 0, i32 0
  %78 = load i32, i32* @csio_scsis_aborting, align 4
  %79 = call i32 @csio_set_state(%struct.TYPE_4__* %77, i32 %78)
  br label %80

80:                                               ; preds = %70, %62
  br label %117

81:                                               ; preds = %2
  %82 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %83 = load i32, i32* @SCSI_CLOSE, align 4
  %84 = call i32 @csio_scsi_abrt_cls(%struct.csio_ioreq* %82, i32 %83)
  %85 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %86 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %91 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %92 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @csio_wr_issue(%struct.csio_hw* %90, i32 %93, i32 0)
  %95 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %96 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %95, i32 0, i32 0
  %97 = load i32, i32* @csio_scsis_closing, align 4
  %98 = call i32 @csio_set_state(%struct.TYPE_4__* %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %81
  br label %117

100:                                              ; preds = %2
  %101 = load i32, i32* @FW_HOSTERROR, align 4
  %102 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %103 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %105 = load i32, i32* @n_active, align 4
  %106 = call i32 @CSIO_DEC_STATS(%struct.csio_scsim* %104, i32 %105)
  %107 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %108 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %107, i32 0, i32 0
  %109 = load i32, i32* @csio_scsis_uninit, align 4
  %110 = call i32 @csio_set_state(%struct.TYPE_4__* %108, i32 %109)
  br label %117

111:                                              ; preds = %2
  %112 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %115 = call i32 @csio_dbg(%struct.csio_hw* %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %113, %struct.csio_ioreq* %114)
  %116 = call i32 @CSIO_DB_ASSERT(i32 0)
  br label %117

117:                                              ; preds = %111, %100, %99, %80, %61
  ret void
}

declare dso_local %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i32 @CSIO_DEC_STATS(%struct.csio_scsim*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @csio_set_state(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @csio_scsi_itnexus_loss_error(i32) #1

declare dso_local i32 @csio_is_rnode_ready(%struct.csio_rnode*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

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
