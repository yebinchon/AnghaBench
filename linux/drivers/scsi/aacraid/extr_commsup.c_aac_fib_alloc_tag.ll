; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_fib_alloc_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_fib_alloc_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i32*, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.aac_dev = type { %struct.fib* }
%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@FSAFS_NTC_FIB_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fib* @aac_fib_alloc_tag(%struct.aac_dev* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.fib*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %7 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %6, i32 0, i32 0
  %8 = load %struct.fib*, %struct.fib** %7, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.fib, %struct.fib* %8, i64 %13
  store %struct.fib* %14, %struct.fib** %5, align 8
  %15 = load %struct.fib*, %struct.fib** %5, align 8
  %16 = getelementptr inbounds %struct.fib, %struct.fib* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @FSAFS_NTC_FIB_CONTEXT, align 4
  %21 = load %struct.fib*, %struct.fib** %5, align 8
  %22 = getelementptr inbounds %struct.fib, %struct.fib* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.fib*, %struct.fib** %5, align 8
  %24 = getelementptr inbounds %struct.fib, %struct.fib* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.fib*, %struct.fib** %5, align 8
  %26 = getelementptr inbounds %struct.fib, %struct.fib* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.fib*, %struct.fib** %5, align 8
  ret %struct.fib* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
