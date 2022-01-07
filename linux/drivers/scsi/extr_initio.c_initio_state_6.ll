; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i64, %struct.scsi_ctrl_blk* }
%struct.scsi_ctrl_blk = type { i32 }

@MSG_NOP = common dso_local global i32 0, align 4
@TUL_SFifo = common dso_local global i64 0, align 8
@TSC_XF_FIFO_OUT = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_state_6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_state_6(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %5 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %6 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %5, i32 0, i32 2
  %7 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  store %struct.scsi_ctrl_blk* %7, %struct.scsi_ctrl_blk** %4, align 8
  br label %8

8:                                                ; preds = %55, %1
  %9 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %10 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %52 [
    i32 128, label %12
    i32 130, label %18
    i32 129, label %26
    i32 132, label %46
    i32 131, label %49
  ]

12:                                               ; preds = %8
  %13 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %14 = call i32 @initio_status_msg(%struct.initio_host* %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %56

17:                                               ; preds = %12
  br label %55

18:                                               ; preds = %8
  %19 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %19, i32 0, i32 0
  store i32 6, i32* %20, align 4
  %21 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %22 = call i32 @initio_msgin(%struct.initio_host* %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %56

25:                                               ; preds = %18
  br label %55

26:                                               ; preds = %8
  %27 = load i32, i32* @MSG_NOP, align 4
  %28 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %29 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TUL_SFifo, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb(i32 %27, i64 %32)
  %34 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %35 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %36 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TUL_SCmd, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i32 %34, i64 %39)
  %41 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %42 = call i32 @wait_tulip(%struct.initio_host* %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %56

45:                                               ; preds = %26
  br label %55

46:                                               ; preds = %8
  %47 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %48 = call i32 @initio_xpad_in(%struct.initio_host* %47)
  store i32 %48, i32* %2, align 4
  br label %56

49:                                               ; preds = %8
  %50 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %51 = call i32 @initio_xpad_out(%struct.initio_host* %50)
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %8
  %53 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %54 = call i32 @initio_bad_seq(%struct.initio_host* %53)
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %45, %25, %17
  br label %8

56:                                               ; preds = %52, %49, %46, %44, %24, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @initio_status_msg(%struct.initio_host*) #1

declare dso_local i32 @initio_msgin(%struct.initio_host*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wait_tulip(%struct.initio_host*) #1

declare dso_local i32 @initio_xpad_in(%struct.initio_host*) #1

declare dso_local i32 @initio_xpad_out(%struct.initio_host*) #1

declare dso_local i32 @initio_bad_seq(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
