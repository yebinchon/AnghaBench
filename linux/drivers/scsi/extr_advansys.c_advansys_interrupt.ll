; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32 }
%struct.asc_board = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"boardp 0x%p\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"before AscISR()\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"before AdvISR()\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @advansys_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.asc_board*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %5, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %12 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.asc_board* %12, %struct.asc_board** %6, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %15 = call i32 (i32, i8*, ...) @ASC_DBG(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.asc_board* %14)
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  %21 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %22 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @AscIsIntPending(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %33 = load i32, i32* @interrupt, align 4
  %34 = call i32 @ASC_STATS(%struct.Scsi_Host* %32, i32 %33)
  %35 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %37 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @AscISR(i32* %38)
  br label %40

40:                                               ; preds = %30, %24
  br label %54

41:                                               ; preds = %2
  %42 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %44 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i64 @AdvISR(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %51 = load i32, i32* @interrupt, align 4
  %52 = call i32 @ASC_STATS(%struct.Scsi_Host* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %41
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32 %57, i64 %58)
  %60 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @ASC_DBG(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @ASC_NARROW_BOARD(%struct.asc_board*) #1

declare dso_local i64 @AscIsIntPending(i32) #1

declare dso_local i32 @ASC_STATS(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @AscISR(i32*) #1

declare dso_local i64 @AdvISR(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
