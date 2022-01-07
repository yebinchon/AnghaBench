; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i64, %struct.target_control*, %struct.scsi_ctrl_blk* }
%struct.target_control = type { i32 }
%struct.scsi_ctrl_blk = type { i32 }

@TUL_SConfig = common dso_local global i64 0, align 8
@TSS_CMD_PH_CMP = common dso_local global i32 0, align 4
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@TUL_SSignal = common dso_local global i64 0, align 8
@TSC_SET_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_state_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_state_2(%struct.initio_host* %0) #0 {
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
  %12 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %13 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %14 = call i32 @initio_unlink_pend_scb(%struct.initio_host* %12, %struct.scsi_ctrl_blk* %13)
  %15 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %16 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %17 = call i32 @initio_append_busy_scb(%struct.initio_host* %15, %struct.scsi_ctrl_blk* %16)
  %18 = load %struct.target_control*, %struct.target_control** %5, align 8
  %19 = getelementptr inbounds %struct.target_control, %struct.target_control* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %22 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TUL_SConfig, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 %20, i64 %25)
  %27 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %28 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TSS_CMD_PH_CMP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %57

34:                                               ; preds = %1
  %35 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %36 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %37 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TUL_SCtrl0, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i32 %35, i64 %40)
  %42 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %43 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TUL_SSignal, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @inb(i64 %46)
  %48 = load i32, i32* @TSC_SET_ACK, align 4
  %49 = or i32 %48, 7
  %50 = and i32 %47, %49
  %51 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %52 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TUL_SSignal, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @outb(i32 %50, i64 %55)
  store i32 3, i32* %2, align 4
  br label %57

57:                                               ; preds = %34, %33
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @initio_unlink_pend_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @initio_append_busy_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
