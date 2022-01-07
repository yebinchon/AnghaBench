; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_aborting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_aborting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.csio_scsim = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"ioreq %p recvd cmpltd (wr_status:%d) in aborting st\0A\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@n_abrt_dups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"abort of %p return status:0x%x drv_status:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Abort completed before original I/O, req:%p\0A\00", align 1
@FW_SUCCESS = common dso_local global i32 0, align 4
@FW_EINVAL = common dso_local global i32 0, align 4
@FW_SCSI_ABORT_REQUESTED = common dso_local global i32 0, align 4
@n_active = common dso_local global i32 0, align 4
@csio_scsis_uninit = common dso_local global i32 0, align 4
@FW_HOSTERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Unhandled event:%d sent to req:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, i32)* @csio_scsis_aborting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsis_aborting(%struct.csio_ioreq* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_ioreq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca %struct.csio_scsim*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %8 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.csio_hw*, %struct.csio_hw** %10, align 8
  store %struct.csio_hw* %11, %struct.csio_hw** %5, align 8
  %12 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %13 = call %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw* %12)
  store %struct.csio_scsim* %13, %struct.csio_scsim** %6, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %97 [
    i32 129, label %15
    i32 132, label %26
    i32 131, label %30
    i32 128, label %85
    i32 130, label %96
  ]

15:                                               ; preds = %2
  %16 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %17 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %18 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %19 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (%struct.csio_hw*, i8*, ...) @csio_dbg(%struct.csio_hw* %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.csio_ioreq* %17, i32 %20)
  %22 = load i32, i32* @ECANCELED, align 4
  %23 = sub nsw i32 0, %22
  %24 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %25 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  br label %103

26:                                               ; preds = %2
  %27 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %28 = load i32, i32* @n_abrt_dups, align 4
  %29 = call i32 @CSIO_INC_STATS(%struct.csio_scsim* %27, i32 %28)
  br label %103

30:                                               ; preds = %2
  %31 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %32 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %33 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %34 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %37 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (%struct.csio_hw*, i8*, ...) @csio_dbg(%struct.csio_hw* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.csio_ioreq* %32, i32 %35, i32 %38)
  %40 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %41 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ECANCELED, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %30
  %47 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %48 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %49 = call i32 @csio_warn(%struct.csio_hw* %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), %struct.csio_ioreq* %48)
  %50 = call i32 @CSIO_DB_ASSERT(i32 0)
  br label %51

51:                                               ; preds = %46, %30
  %52 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %53 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FW_SUCCESS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %59 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FW_EINVAL, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %65 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @csio_scsi_itnexus_loss_error(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63, %57, %51
  %70 = load i32, i32* @FW_SCSI_ABORT_REQUESTED, align 4
  %71 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %72 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %75 = load i32, i32* @n_active, align 4
  %76 = call i32 @CSIO_DEC_STATS(%struct.csio_scsim* %74, i32 %75)
  %77 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %78 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @list_del_init(i32* %79)
  %81 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %82 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %81, i32 0, i32 0
  %83 = load i32, i32* @csio_scsis_uninit, align 4
  %84 = call i32 @csio_set_state(%struct.TYPE_4__* %82, i32 %83)
  br label %103

85:                                               ; preds = %2
  %86 = load i32, i32* @FW_HOSTERROR, align 4
  %87 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %88 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %90 = load i32, i32* @n_active, align 4
  %91 = call i32 @CSIO_DEC_STATS(%struct.csio_scsim* %89, i32 %90)
  %92 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %93 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %92, i32 0, i32 0
  %94 = load i32, i32* @csio_scsis_uninit, align 4
  %95 = call i32 @csio_set_state(%struct.TYPE_4__* %93, i32 %94)
  br label %103

96:                                               ; preds = %2
  br label %103

97:                                               ; preds = %2
  %98 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %101 = call i32 (%struct.csio_hw*, i8*, ...) @csio_dbg(%struct.csio_hw* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %99, %struct.csio_ioreq* %100)
  %102 = call i32 @CSIO_DB_ASSERT(i32 0)
  br label %103

103:                                              ; preds = %97, %96, %85, %73, %26, %15
  ret void
}

declare dso_local %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, ...) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_scsim*, i32) #1

declare dso_local i32 @csio_warn(%struct.csio_hw*, i8*, %struct.csio_ioreq*) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

declare dso_local i32 @csio_scsi_itnexus_loss_error(i32) #1

declare dso_local i32 @CSIO_DEC_STATS(%struct.csio_scsim*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @csio_set_state(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
