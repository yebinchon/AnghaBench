; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mbm_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mbm_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_mbm = type { i32, i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mbm_exit(%struct.csio_mbm* %0) #0 {
  %2 = alloca %struct.csio_mbm*, align 8
  store %struct.csio_mbm* %0, %struct.csio_mbm** %2, align 8
  %3 = load %struct.csio_mbm*, %struct.csio_mbm** %2, align 8
  %4 = getelementptr inbounds %struct.csio_mbm, %struct.csio_mbm* %3, i32 0, i32 3
  %5 = call i32 @del_timer_sync(i32* %4)
  %6 = load %struct.csio_mbm*, %struct.csio_mbm** %2, align 8
  %7 = getelementptr inbounds %struct.csio_mbm, %struct.csio_mbm* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @CSIO_DB_ASSERT(i32 %10)
  %12 = load %struct.csio_mbm*, %struct.csio_mbm** %2, align 8
  %13 = getelementptr inbounds %struct.csio_mbm, %struct.csio_mbm* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = call i32 @CSIO_DB_ASSERT(i32 %14)
  %16 = load %struct.csio_mbm*, %struct.csio_mbm** %2, align 8
  %17 = getelementptr inbounds %struct.csio_mbm, %struct.csio_mbm* %16, i32 0, i32 0
  %18 = call i32 @list_empty(i32* %17)
  %19 = call i32 @CSIO_DB_ASSERT(i32 %18)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
