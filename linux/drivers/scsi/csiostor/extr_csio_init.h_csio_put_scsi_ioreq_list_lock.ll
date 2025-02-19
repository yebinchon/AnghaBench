; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.h_csio_put_scsi_ioreq_list_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.h_csio_put_scsi_ioreq_list_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_scsim = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_scsim*, %struct.list_head*, i32)* @csio_put_scsi_ioreq_list_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_put_scsi_ioreq_list_lock(%struct.csio_hw* %0, %struct.csio_scsim* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca %struct.csio_scsim*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store %struct.csio_scsim* %1, %struct.csio_scsim** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %11 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %15 = load %struct.list_head*, %struct.list_head** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @csio_put_scsi_ioreq_list(%struct.csio_scsim* %14, %struct.list_head* %15, i32 %16)
  %18 = load %struct.csio_scsim*, %struct.csio_scsim** %6, align 8
  %19 = getelementptr inbounds %struct.csio_scsim, %struct.csio_scsim* %18, i32 0, i32 0
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @csio_put_scsi_ioreq_list(%struct.csio_scsim*, %struct.list_head*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
