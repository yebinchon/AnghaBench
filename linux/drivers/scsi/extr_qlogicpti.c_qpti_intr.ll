; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicpti = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qpti_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpti_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qlogicpti*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.qlogicpti*
  store %struct.qlogicpti* %10, %struct.qlogicpti** %5, align 8
  %11 = load %struct.qlogicpti*, %struct.qlogicpti** %5, align 8
  %12 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.qlogicpti*, %struct.qlogicpti** %5, align 8
  %19 = call %struct.scsi_cmnd* @qlogicpti_intr_handler(%struct.qlogicpti* %18)
  store %struct.scsi_cmnd* %19, %struct.scsi_cmnd** %7, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %21 = icmp ne %struct.scsi_cmnd* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %34, %22
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %27, %struct.scsi_cmnd** %8, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %29, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %32 = call i32 %30(%struct.scsi_cmnd* %31)
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %33, %struct.scsi_cmnd** %7, align 8
  br label %34

34:                                               ; preds = %23
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %36 = icmp ne %struct.scsi_cmnd* %35, null
  br i1 %36, label %23, label %37

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.qlogicpti*, %struct.qlogicpti** %5, align 8
  %40 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32 %43, i64 %44)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.scsi_cmnd* @qlogicpti_intr_handler(%struct.qlogicpti*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
