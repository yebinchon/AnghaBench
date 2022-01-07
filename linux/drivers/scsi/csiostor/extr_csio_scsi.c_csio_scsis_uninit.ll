; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.csio_scsim = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@csio_scsis_io_active = common dso_local global i32 0, align 4
@n_active = common dso_local global i32 0, align 4
@csio_scsis_tm_active = common dso_local global i32 0, align 4
@n_tm_active = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Trying to abort/close completed IO:%p!\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Unhandled event:%d sent to req:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, i32)* @csio_scsis_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsis_uninit(%struct.csio_ioreq* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_ioreq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca %struct.csio_scsim*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %8 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %7, i32 0, i32 6
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.csio_hw*, %struct.csio_hw** %10, align 8
  store %struct.csio_hw* %11, %struct.csio_hw** %5, align 8
  %12 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %13 = call %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw* %12)
  store %struct.csio_scsim* %13, %struct.csio_scsim** %6, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %102 [
    i32 129, label %15
    i32 128, label %67
    i32 131, label %94
    i32 130, label %94
  ]

15:                                               ; preds = %2
  %16 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %17 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %22 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %28 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %30 = call i32 @csio_scsi_write(%struct.csio_ioreq* %29)
  br label %35

31:                                               ; preds = %20
  %32 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %33 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %34 = call i32 @csio_setup_ddp(%struct.csio_scsim* %32, %struct.csio_ioreq* %33)
  br label %35

35:                                               ; preds = %31, %26
  br label %39

36:                                               ; preds = %15
  %37 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %38 = call i32 @csio_scsi_cmd(%struct.csio_ioreq* %37)
  br label %39

39:                                               ; preds = %36, %35
  %40 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %41 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @likely(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %39
  %48 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %49 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %48, i32 0, i32 2
  %50 = load i32, i32* @csio_scsis_io_active, align 4
  %51 = call i32 @csio_set_state(%struct.TYPE_4__* %49, i32 %50)
  %52 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %53 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %56 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %55, i32 0, i32 0
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  %58 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %59 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %60 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @csio_wr_issue(%struct.csio_hw* %58, i32 %61, i32 0)
  %63 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %64 = load i32, i32* @n_active, align 4
  %65 = call i32 @CSIO_INC_STATS(%struct.csio_scsim* %63, i32 %64)
  br label %108

66:                                               ; preds = %39
  br label %108

67:                                               ; preds = %2
  %68 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %69 = call i32 @csio_scsi_cmd(%struct.csio_ioreq* %68)
  %70 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %71 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %67
  %75 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %76 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %75, i32 0, i32 2
  %77 = load i32, i32* @csio_scsis_tm_active, align 4
  %78 = call i32 @csio_set_state(%struct.TYPE_4__* %76, i32 %77)
  %79 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %80 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %83 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %82, i32 0, i32 0
  %84 = call i32 @list_add_tail(i32* %81, i32* %83)
  %85 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %86 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %87 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @csio_wr_issue(%struct.csio_hw* %85, i32 %88, i32 0)
  %90 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %91 = load i32, i32* @n_tm_active, align 4
  %92 = call i32 @CSIO_INC_STATS(%struct.csio_scsim* %90, i32 %91)
  br label %93

93:                                               ; preds = %74, %67
  br label %108

94:                                               ; preds = %2, %2
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  %97 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %98 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %100 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %101 = call i32 @csio_warn(%struct.csio_hw* %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.csio_ioreq* %100)
  br label %108

102:                                              ; preds = %2
  %103 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %106 = call i32 @csio_dbg(%struct.csio_hw* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %104, %struct.csio_ioreq* %105)
  %107 = call i32 @CSIO_DB_ASSERT(i32 0)
  br label %108

108:                                              ; preds = %47, %93, %102, %94, %66
  ret void
}

declare dso_local %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local i32 @csio_scsi_write(%struct.csio_ioreq*) #1

declare dso_local i32 @csio_setup_ddp(%struct.csio_scsim*, %struct.csio_ioreq*) #1

declare dso_local i32 @csio_scsi_cmd(%struct.csio_ioreq*) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @csio_set_state(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @csio_wr_issue(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_scsim*, i32) #1

declare dso_local i32 @csio_warn(%struct.csio_hw*, i8*, %struct.csio_ioreq*) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i32, %struct.csio_ioreq*) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
