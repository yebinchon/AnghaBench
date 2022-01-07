; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_exec_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_exec_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i32, i64 }
%struct.scsi_ctrl_blk = type { i32, i32, i64, i64 }

@TUL_Mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.initio_host*, %struct.scsi_ctrl_blk*)* @initio_exec_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initio_exec_scb(%struct.initio_host* %0, %struct.scsi_ctrl_blk* %1) #0 {
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca i64, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  store %struct.scsi_ctrl_blk* %1, %struct.scsi_ctrl_blk** %4, align 8
  %6 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %7 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %16 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %20 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %21 = call i32 @initio_append_pend_scb(%struct.initio_host* %19, %struct.scsi_ctrl_blk* %20)
  %22 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %23 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %53

26:                                               ; preds = %2
  %27 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %28 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TUL_Mask, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 31, i64 %31)
  %33 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %34 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %36 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %35, i32 0, i32 1
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %40 = call i32 @tulip_main(%struct.initio_host* %39)
  %41 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %42 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %41, i32 0, i32 1
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %46 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %48 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TUL_Mask, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 15, i64 %51)
  br label %53

53:                                               ; preds = %26, %2
  %54 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %55 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %54, i32 0, i32 1
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @initio_append_pend_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tulip_main(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
