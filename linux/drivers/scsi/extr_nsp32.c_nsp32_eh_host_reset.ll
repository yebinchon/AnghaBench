; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_eh_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_eh_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Host Reset\00", align 1
@NSP32_DEBUG_BUSRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"SCpnt=0x%x\00", align 1
@IRQ_CONTROL = common dso_local global i32 0, align 4
@IRQ_CONTROL_ALL_IRQ_MASK = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @nsp32_eh_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_eh_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %3, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = call i32 @nsp32_msg(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @NSP32_DEBUG_BUSRESET, align 4
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %26 = call i32 @nsp32_dbg(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %25)
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %30, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @spin_lock_irq(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @nsp32hw_init(i32* %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @IRQ_CONTROL, align 4
  %39 = load i32, i32* @IRQ_CONTROL_ALL_IRQ_MASK, align 4
  %40 = call i32 @nsp32_write2(i32 %37, i32 %38, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @nsp32_do_bus_reset(i32* %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @IRQ_CONTROL, align 4
  %45 = call i32 @nsp32_write2(i32 %43, i32 %44, i32 0)
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %49, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @spin_unlock_irq(i32 %52)
  %54 = load i32, i32* @SUCCESS, align 4
  ret i32 %54
}

declare dso_local i32 @nsp32_msg(i32, i8*) #1

declare dso_local i32 @nsp32_dbg(i32, i8*, %struct.scsi_cmnd*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @nsp32hw_init(i32*) #1

declare dso_local i32 @nsp32_write2(i32, i32, i32) #1

declare dso_local i32 @nsp32_do_bus_reset(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
