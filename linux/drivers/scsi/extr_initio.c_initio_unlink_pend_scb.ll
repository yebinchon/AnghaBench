; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_unlink_pend_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_unlink_pend_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk* }
%struct.scsi_ctrl_blk = type { %struct.scsi_ctrl_blk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.initio_host*, %struct.scsi_ctrl_blk*)* @initio_unlink_pend_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initio_unlink_pend_scb(%struct.initio_host* %0, %struct.scsi_ctrl_blk* %1) #0 {
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca %struct.scsi_ctrl_blk*, align 8
  %6 = alloca %struct.scsi_ctrl_blk*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  store %struct.scsi_ctrl_blk* %1, %struct.scsi_ctrl_blk** %4, align 8
  %7 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %8 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %7, i32 0, i32 1
  %9 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %8, align 8
  store %struct.scsi_ctrl_blk* %9, %struct.scsi_ctrl_blk** %5, align 8
  store %struct.scsi_ctrl_blk* %9, %struct.scsi_ctrl_blk** %6, align 8
  br label %10

10:                                               ; preds = %53, %2
  %11 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %12 = icmp ne %struct.scsi_ctrl_blk* %11, null
  br i1 %12, label %13, label %58

13:                                               ; preds = %10
  %14 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %15 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %16 = icmp eq %struct.scsi_ctrl_blk* %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %19 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %20 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %19, i32 0, i32 1
  %21 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %20, align 8
  %22 = icmp eq %struct.scsi_ctrl_blk* %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %25 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %24, i32 0, i32 0
  %26 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %25, align 8
  %27 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %28 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %27, i32 0, i32 1
  store %struct.scsi_ctrl_blk* %26, %struct.scsi_ctrl_blk** %28, align 8
  %29 = icmp eq %struct.scsi_ctrl_blk* %26, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %32 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %31, i32 0, i32 0
  store %struct.scsi_ctrl_blk* null, %struct.scsi_ctrl_blk** %32, align 8
  br label %33

33:                                               ; preds = %30, %23
  br label %50

34:                                               ; preds = %17
  %35 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %35, i32 0, i32 0
  %37 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %36, align 8
  %38 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  %39 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %38, i32 0, i32 0
  store %struct.scsi_ctrl_blk* %37, %struct.scsi_ctrl_blk** %39, align 8
  %40 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %41 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %42 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %41, i32 0, i32 0
  %43 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %42, align 8
  %44 = icmp eq %struct.scsi_ctrl_blk* %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  %47 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %48 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %47, i32 0, i32 0
  store %struct.scsi_ctrl_blk* %46, %struct.scsi_ctrl_blk** %48, align 8
  br label %49

49:                                               ; preds = %45, %34
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %51, i32 0, i32 0
  store %struct.scsi_ctrl_blk* null, %struct.scsi_ctrl_blk** %52, align 8
  br label %58

53:                                               ; preds = %13
  %54 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  store %struct.scsi_ctrl_blk* %54, %struct.scsi_ctrl_blk** %6, align 8
  %55 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %56 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %55, i32 0, i32 0
  %57 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %56, align 8
  store %struct.scsi_ctrl_blk* %57, %struct.scsi_ctrl_blk** %5, align 8
  br label %10

58:                                               ; preds = %50, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
