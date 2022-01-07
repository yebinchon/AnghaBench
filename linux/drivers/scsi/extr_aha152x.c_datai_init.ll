; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_datai_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_datai_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@DMACNTRL0 = common dso_local global i32 0, align 4
@RSTFIFO = common dso_local global i32 0, align 4
@ENDMA = common dso_local global i32 0, align 4
@SXFRCTL0 = common dso_local global i32 0, align 4
@CH1 = common dso_local global i32 0, align 4
@CLRSTCNT = common dso_local global i32 0, align 4
@SCSIEN = common dso_local global i32 0, align 4
@DMAEN = common dso_local global i32 0, align 4
@SIMODE0 = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@ENSCSIPERR = common dso_local global i32 0, align 4
@ENSCSIRST = common dso_local global i32 0, align 4
@ENPHASEMIS = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i32 0, align 4
@DATA_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @datai_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datai_init(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %3 = load i32, i32* @DMACNTRL0, align 4
  %4 = load i32, i32* @RSTFIFO, align 4
  %5 = call i32 @SETPORT(i32 %3, i32 %4)
  %6 = load i32, i32* @DMACNTRL0, align 4
  %7 = load i32, i32* @RSTFIFO, align 4
  %8 = load i32, i32* @ENDMA, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @SETPORT(i32 %6, i32 %9)
  %11 = load i32, i32* @SXFRCTL0, align 4
  %12 = load i32, i32* @CH1, align 4
  %13 = load i32, i32* @CLRSTCNT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @SETPORT(i32 %11, i32 %14)
  %16 = load i32, i32* @SXFRCTL0, align 4
  %17 = load i32, i32* @CH1, align 4
  %18 = load i32, i32* @SCSIEN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @DMAEN, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @SETPORT(i32 %16, i32 %21)
  %23 = load i32, i32* @SIMODE0, align 4
  %24 = call i32 @SETPORT(i32 %23, i32 0)
  %25 = load i32, i32* @SIMODE1, align 4
  %26 = load i32, i32* @ENSCSIPERR, align 4
  %27 = load i32, i32* @ENSCSIRST, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ENPHASEMIS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ENBUSFREE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @SETPORT(i32 %25, i32 %32)
  store i64 0, i64* @DATA_LEN, align 8
  ret void
}

declare dso_local i32 @SETPORT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
