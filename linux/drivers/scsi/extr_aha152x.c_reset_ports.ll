; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_reset_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_reset_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@DMACNTRL0 = common dso_local global i32 0, align 4
@RSTFIFO = common dso_local global i32 0, align 4
@SCSISEQ = common dso_local global i32 0, align 4
@SXFRCTL1 = common dso_local global i32 0, align 4
@SCSISIG = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@SSTAT4 = common dso_local global i32 0, align 4
@SYNCERR = common dso_local global i32 0, align 4
@FWERR = common dso_local global i32 0, align 4
@FRERR = common dso_local global i32 0, align 4
@DMACNTRL1 = common dso_local global i32 0, align 4
@BRSTCNTRL = common dso_local global i32 0, align 4
@SXFRCTL0 = common dso_local global i32 0, align 4
@CH1 = common dso_local global i32 0, align 4
@CLRCH1 = common dso_local global i32 0, align 4
@CLRSTCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @reset_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_ports(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load i32, i32* @DMACNTRL0, align 4
  %5 = load i32, i32* @RSTFIFO, align 4
  %6 = call i32 @SETPORT(i32 %4, i32 %5)
  %7 = load i32, i32* @SCSISEQ, align 4
  %8 = call i32 @SETPORT(i32 %7, i32 0)
  %9 = load i32, i32* @SXFRCTL1, align 4
  %10 = call i32 @SETPORT(i32 %9, i32 0)
  %11 = load i32, i32* @SCSISIG, align 4
  %12 = call i32 @SETPORT(i32 %11, i32 0)
  %13 = call i32 @SETRATE(i32 0)
  %14 = load i32, i32* @SSTAT0, align 4
  %15 = call i32 @SETPORT(i32 %14, i32 127)
  %16 = load i32, i32* @SSTAT1, align 4
  %17 = call i32 @SETPORT(i32 %16, i32 239)
  %18 = load i32, i32* @SSTAT4, align 4
  %19 = load i32, i32* @SYNCERR, align 4
  %20 = load i32, i32* @FWERR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FRERR, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @SETPORT(i32 %18, i32 %23)
  %25 = load i32, i32* @DMACNTRL0, align 4
  %26 = call i32 @SETPORT(i32 %25, i32 0)
  %27 = load i32, i32* @DMACNTRL1, align 4
  %28 = call i32 @SETPORT(i32 %27, i32 0)
  %29 = load i32, i32* @BRSTCNTRL, align 4
  %30 = call i32 @SETPORT(i32 %29, i32 241)
  %31 = load i32, i32* @SXFRCTL0, align 4
  %32 = load i32, i32* @CH1, align 4
  %33 = load i32, i32* @CLRCH1, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CLRSTCNT, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @SETPORT(i32 %31, i32 %36)
  %38 = load i32, i32* @SXFRCTL0, align 4
  %39 = load i32, i32* @CH1, align 4
  %40 = call i32 @SETPORT(i32 %38, i32 %39)
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @DO_LOCK(i64 %41)
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %44 = call i32 @setup_expected_interrupts(%struct.Scsi_Host* %43)
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @DO_UNLOCK(i64 %45)
  ret void
}

declare dso_local i32 @SETPORT(i32, i32) #1

declare dso_local i32 @SETRATE(i32) #1

declare dso_local i32 @DO_LOCK(i64) #1

declare dso_local i32 @setup_expected_interrupts(%struct.Scsi_Host*) #1

declare dso_local i32 @DO_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
