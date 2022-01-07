; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64 }
%struct.fdomain = type { i64, %struct.scsi_cmnd* }

@in_arbitration = common dso_local global i32 0, align 4
@REG_ICTL = common dso_local global i64 0, align 8
@REG_BCTL = common dso_local global i64 0, align 8
@REG_SCSI_DATA_NOACK = common dso_local global i64 0, align 8
@ICTL_ARB = common dso_local global i32 0, align 4
@ACTL_ARB = common dso_local global i32 0, align 4
@ACTL_IRQEN = common dso_local global i32 0, align 4
@PARITY_MASK = common dso_local global i32 0, align 4
@REG_ACTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @fdomain_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdomain_queue(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.fdomain*, align 8
  %6 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = call %struct.fdomain* @shost_priv(%struct.TYPE_6__* %11)
  store %struct.fdomain* %12, %struct.fdomain** %5, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @in_arbitration, align 4
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %30)
  %32 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %29, i32 %31)
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_lock_irqsave(i32 %35, i64 %36)
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %39 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %40 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %39, i32 0, i32 1
  store %struct.scsi_cmnd* %38, %struct.scsi_cmnd** %40, align 8
  %41 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %42 = call i32 @fdomain_make_bus_idle(%struct.fdomain* %41)
  %43 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %44 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @REG_ICTL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 0, i64 %47)
  %49 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %50 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @REG_BCTL, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outb(i32 0, i64 %53)
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %64 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @REG_SCSI_DATA_NOACK, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outb(i32 %62, i64 %67)
  %69 = load i32, i32* @ICTL_ARB, align 4
  %70 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %71 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @REG_ICTL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outb(i32 %69, i64 %74)
  %76 = load i32, i32* @ACTL_ARB, align 4
  %77 = load i32, i32* @ACTL_IRQEN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @PARITY_MASK, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.fdomain*, %struct.fdomain** %5, align 8
  %82 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @REG_ACTL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outb(i32 %80, i64 %85)
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32 %89, i64 %90)
  ret i32 0
}

declare dso_local %struct.fdomain* @shost_priv(%struct.TYPE_6__*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @fdomain_make_bus_idle(%struct.fdomain*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
