; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_xpad_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_xpad_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, i64, %struct.target_control*, %struct.scsi_ctrl_blk* }
%struct.target_control = type { i32 }
%struct.scsi_ctrl_blk = type { i32, i32 }

@SCF_DIR = common dso_local global i32 0, align 4
@SCF_NO_DCHK = common dso_local global i32 0, align 4
@HOST_DO_DU = common dso_local global i32 0, align 4
@TSC_WIDE_SCSI = common dso_local global i32 0, align 4
@TUL_SCnt0 = common dso_local global i64 0, align 8
@TUL_SFifo = common dso_local global i64 0, align 8
@TSC_XF_FIFO_OUT = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@DATA_OUT = common dso_local global i64 0, align 8
@TSC_HW_RESELECT = common dso_local global i32 0, align 4
@TUL_SCtrl1 = common dso_local global i64 0, align 8
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initio_xpad_out(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca %struct.target_control*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %6 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %7 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %6, i32 0, i32 3
  %8 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  store %struct.scsi_ctrl_blk* %8, %struct.scsi_ctrl_blk** %4, align 8
  %9 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %10 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %9, i32 0, i32 2
  %11 = load %struct.target_control*, %struct.target_control** %10, align 8
  store %struct.target_control* %11, %struct.target_control** %5, align 8
  %12 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SCF_DIR, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @SCF_NO_DCHK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @HOST_DO_DU, align 4
  %21 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %1
  br label %24

24:                                               ; preds = %84, %23
  %25 = load %struct.target_control*, %struct.target_control** %5, align 8
  %26 = getelementptr inbounds %struct.target_control, %struct.target_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TSC_WIDE_SCSI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %33 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TUL_SCnt0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outl(i32 2, i64 %36)
  br label %45

38:                                               ; preds = %24
  %39 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %40 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TUL_SCnt0, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outl(i32 1, i64 %43)
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %47 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TUL_SFifo, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb(i32 0, i64 %50)
  %52 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %53 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %54 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TUL_SCmd, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outb(i32 %52, i64 %57)
  %59 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %60 = call i32 @wait_tulip(%struct.initio_host* %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %85

63:                                               ; preds = %45
  %64 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %65 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DATA_OUT, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load i32, i32* @TSC_HW_RESELECT, align 4
  %71 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %72 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TUL_SCtrl1, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outb(i32 %70, i64 %75)
  %77 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %78 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %79 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TUL_SCtrl0, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outb(i32 %77, i64 %82)
  store i32 6, i32* %2, align 4
  br label %85

84:                                               ; preds = %63
  br label %24

85:                                               ; preds = %69, %62
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
