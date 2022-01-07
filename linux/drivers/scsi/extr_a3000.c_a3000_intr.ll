; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_a3000.c_a3000_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_a3000.c_a3000_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.a3000_hostdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ISTR_INT_P = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ISTR_INTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Non-serviced A3000 SCSI-interrupt? ISTR = %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @a3000_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a3000_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.a3000_hostdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %6, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %13 = call %struct.a3000_hostdata* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.a3000_hostdata* %13, %struct.a3000_hostdata** %7, align 8
  %14 = load %struct.a3000_hostdata*, %struct.a3000_hostdata** %7, align 8
  %15 = getelementptr inbounds %struct.a3000_hostdata, %struct.a3000_hostdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ISTR_INT_P, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ISTR_INTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_lock_irqsave(i32 %33, i64 %34)
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %37 = call i32 @wd33c93_intr(%struct.Scsi_Host* %36)
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32 %40, i64 %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %48

44:                                               ; preds = %25
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @pr_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @IRQ_NONE, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %30, %23
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.a3000_hostdata* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @wd33c93_intr(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
