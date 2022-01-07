; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i32, i64, %struct.scsi_ctrl_blk* }
%struct.scsi_ctrl_blk = type { i32, i64, i32, i8* }

@SCF_DIR = common dso_local global i32 0, align 4
@SCF_NO_XF = common dso_local global i32 0, align 4
@HOST_DO_DU = common dso_local global i8* null, align 8
@TSS_PAR_ERROR = common dso_local global i32 0, align 4
@MSG_NOP = common dso_local global i32 0, align 4
@TUL_SFifo = common dso_local global i64 0, align 8
@TSC_XF_FIFO_OUT = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_state_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_state_4(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %5 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %6 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %5, i32 0, i32 3
  %7 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  store %struct.scsi_ctrl_blk* %7, %struct.scsi_ctrl_blk** %4, align 8
  %8 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SCF_DIR, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @SCF_NO_XF, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %101

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %100, %16
  %18 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 6, i32* %2, align 4
  br label %101

23:                                               ; preds = %17
  %24 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %25 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %97 [
    i32 128, label %27
    i32 130, label %44
    i32 129, label %52
    i32 132, label %91
    i32 131, label %94
  ]

27:                                               ; preds = %23
  %28 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SCF_DIR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i8*, i8** @HOST_DO_DU, align 8
  %36 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %40 = call i32 @initio_status_msg(%struct.initio_host* %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %101

43:                                               ; preds = %38
  br label %100

44:                                               ; preds = %23
  %45 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %46 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %45, i32 0, i32 2
  store i32 4, i32* %46, align 8
  %47 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %48 = call i32 @initio_msgin(%struct.initio_host* %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 -1, i32* %2, align 4
  br label %101

51:                                               ; preds = %44
  br label %100

52:                                               ; preds = %23
  %53 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %54 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TSS_PAR_ERROR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load i8*, i8** @HOST_DO_DU, align 8
  %63 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %66 = call i32 @initio_msgout_ide(%struct.initio_host* %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i32 -1, i32* %2, align 4
  br label %101

69:                                               ; preds = %59
  store i32 6, i32* %2, align 4
  br label %101

70:                                               ; preds = %52
  %71 = load i32, i32* @MSG_NOP, align 4
  %72 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %73 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TUL_SFifo, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outb(i32 %71, i64 %76)
  %78 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %79 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %80 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TUL_SCmd, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @outb(i32 %78, i64 %83)
  %85 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %86 = call i32 @wait_tulip(%struct.initio_host* %85)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %70
  store i32 -1, i32* %2, align 4
  br label %101

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89
  br label %100

91:                                               ; preds = %23
  %92 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %93 = call i32 @initio_xfer_data_in(%struct.initio_host* %92)
  store i32 %93, i32* %2, align 4
  br label %101

94:                                               ; preds = %23
  %95 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %96 = call i32 @initio_xfer_data_out(%struct.initio_host* %95)
  store i32 %96, i32* %2, align 4
  br label %101

97:                                               ; preds = %23
  %98 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %99 = call i32 @initio_bad_seq(%struct.initio_host* %98)
  store i32 %99, i32* %2, align 4
  br label %101

100:                                              ; preds = %90, %51, %43
  br label %17

101:                                              ; preds = %97, %94, %91, %88, %69, %68, %50, %42, %22, %15
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @initio_status_msg(%struct.initio_host*) #1

declare dso_local i32 @initio_msgin(%struct.initio_host*) #1

declare dso_local i32 @initio_msgout_ide(%struct.initio_host*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

declare dso_local i32 @initio_xfer_data_in(%struct.initio_host*) #1

declare dso_local i32 @initio_xfer_data_out(%struct.initio_host*) #1

declare dso_local i32 @initio_bad_seq(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
