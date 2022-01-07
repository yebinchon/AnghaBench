; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_a2091.c_a2091_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_a2091.c_a2091_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.a2091_hostdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ISTR_INT_F = common dso_local global i32 0, align 4
@ISTR_INT_P = common dso_local global i32 0, align 4
@ISTR_INTS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @a2091_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2091_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.a2091_hostdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %6, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %13 = call %struct.a2091_hostdata* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.a2091_hostdata* %13, %struct.a2091_hostdata** %7, align 8
  %14 = load %struct.a2091_hostdata*, %struct.a2091_hostdata** %7, align 8
  %15 = getelementptr inbounds %struct.a2091_hostdata, %struct.a2091_hostdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ISTR_INT_F, align 4
  %21 = load i32, i32* @ISTR_INT_P, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ISTR_INTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25, %2
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %25
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32 %35, i64 %36)
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %39 = call i32 @wd33c93_intr(%struct.Scsi_Host* %38)
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32 %42, i64 %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %32, %30
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.a2091_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @wd33c93_intr(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
