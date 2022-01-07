; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_shost_cmpl_await.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsis_shost_cmpl_await.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@csio_scsis_uninit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unhandled event:%d sent to req:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, i32)* @csio_scsis_shost_cmpl_await to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsis_shost_cmpl_await(%struct.csio_ioreq* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_ioreq*, align 8
  %4 = alloca i32, align 4
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %14 [
    i32 130, label %6
    i32 129, label %6
    i32 128, label %9
  ]

6:                                                ; preds = %2, %2
  %7 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %8 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %7, i32 0, i32 2
  store i32 0, i32* %8, align 4
  br label %24

9:                                                ; preds = %2
  %10 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %11 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %10, i32 0, i32 1
  %12 = load i32, i32* @csio_scsis_uninit, align 4
  %13 = call i32 @csio_set_state(i32* %11, i32 %12)
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %16 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %22 = call i32 @csio_dbg(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.csio_ioreq* %21)
  %23 = call i32 @CSIO_DB_ASSERT(i32 0)
  br label %24

24:                                               ; preds = %14, %9, %6
  ret void
}

declare dso_local i32 @csio_set_state(i32*, i32) #1

declare dso_local i32 @csio_dbg(i32, i8*, i32, %struct.csio_ioreq*) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
