; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_sdev_evt_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_sdev_evt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_event = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_event* @sdev_evt_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_event*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.scsi_event* @kzalloc(i32 8, i32 %7)
  store %struct.scsi_event* %8, %struct.scsi_event** %6, align 8
  %9 = load %struct.scsi_event*, %struct.scsi_event** %6, align 8
  %10 = icmp ne %struct.scsi_event* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.scsi_event* null, %struct.scsi_event** %3, align 8
  br label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.scsi_event*, %struct.scsi_event** %6, align 8
  %15 = getelementptr inbounds %struct.scsi_event, %struct.scsi_event* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.scsi_event*, %struct.scsi_event** %6, align 8
  %17 = getelementptr inbounds %struct.scsi_event, %struct.scsi_event* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %21 [
    i32 131, label %20
    i32 133, label %20
    i32 134, label %20
    i32 128, label %20
    i32 130, label %20
    i32 132, label %20
    i32 135, label %20
    i32 129, label %20
  ]

20:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12
  br label %21

21:                                               ; preds = %12, %20
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.scsi_event*, %struct.scsi_event** %6, align 8
  store %struct.scsi_event* %23, %struct.scsi_event** %3, align 8
  br label %24

24:                                               ; preds = %22, %11
  %25 = load %struct.scsi_event*, %struct.scsi_event** %3, align 8
  ret %struct.scsi_event* %25
}

declare dso_local %struct.scsi_event* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
