; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_closing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_closing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.csio_scsim = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"ioreq %p recvd cmpltd (wr_status:%d) in closing st\0A\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Close completed before original I/O, req:%p\0A\00", align 1
@FW_SUCCESS = common dso_local global i32 0, align 4
@FW_EINVAL = common dso_local global i32 0, align 4
@FW_SCSI_CLOSE_REQUESTED = common dso_local global i32 0, align 4
@n_active = common dso_local global i32 0, align 4
@csio_scsis_uninit = common dso_local global i32 0, align 4
@FW_HOSTERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unhandled event:%d sent to req:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, i32)* @csio_scsis_closing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsis_closing(%struct.csio_ioreq* %0, i32 %1) #0 {
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
  switch i32 %14, label %80 [
    i32 129, label %15
    i32 130, label %26
    i32 131, label %68
    i32 128, label %69
  ]

15:                                               ; preds = %2
  %16 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %17 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %18 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %19 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (%struct.csio_hw*, i8*, ...) @csio_dbg(%struct.csio_hw* %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.csio_ioreq* %17, i32 %20)
  %22 = load i32, i32* @ECANCELED, align 4
  %23 = sub nsw i32 0, %22
  %24 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %25 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  br label %86

26:                                               ; preds = %2
  %27 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %28 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ECANCELED, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %35 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %36 = call i32 @csio_fatal(%struct.csio_hw* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.csio_ioreq* %35)
  %37 = call i32 @CSIO_DB_ASSERT(i32 0)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %40 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FW_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %46 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FW_EINVAL, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i1 [ true, %38 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @CSIO_DB_ASSERT(i32 %52)
  %54 = load i32, i32* @FW_SCSI_CLOSE_REQUESTED, align 4
  %55 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %56 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %58 = load i32, i32* @n_active, align 4
  %59 = call i32 @CSIO_DEC_STATS(%struct.csio_scsim* %57, i32 %58)
  %60 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %61 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @list_del_init(i32* %62)
  %64 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %65 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %64, i32 0, i32 0
  %66 = load i32, i32* @csio_scsis_uninit, align 4
  %67 = call i32 @csio_set_state(%struct.TYPE_4__* %65, i32 %66)
  br label %86

68:                                               ; preds = %2
  br label %86

69:                                               ; preds = %2
  %70 = load i32, i32* @FW_HOSTERROR, align 4
  %71 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %72 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %74 = load i32, i32* @n_active, align 4
  %75 = call i32 @CSIO_DEC_STATS(%struct.csio_scsim* %73, i32 %74)
  %76 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %77 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %76, i32 0, i32 0
  %78 = load i32, i32* @csio_scsis_uninit, align 4
  %79 = call i32 @csio_set_state(%struct.TYPE_4__* %77, i32 %78)
  br label %86

80:                                               ; preds = %2
  %81 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %84 = call i32 (%struct.csio_hw*, i8*, ...) @csio_dbg(%struct.csio_hw* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %82, %struct.csio_ioreq* %83)
  %85 = call i32 @CSIO_DB_ASSERT(i32 0)
  br label %86

86:                                               ; preds = %80, %69, %68, %50, %15
  ret void
}

declare dso_local %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, ...) #1

declare dso_local i32 @csio_fatal(%struct.csio_hw*, i8*, %struct.csio_ioreq*) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

declare dso_local i32 @CSIO_DEC_STATS(%struct.csio_scsim*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @csio_set_state(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
