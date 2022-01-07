; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_reset_scsi_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_reset_scsi_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }

@DBG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"reset_scsi_bus: acb=%p\0A\00", align 1
@RESET_DEV = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_RSTSCSI = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_INTSTATUS = common dso_local global i32 0, align 4
@INT_SCSIRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*)* @reset_scsi_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_scsi_bus(%struct.AdapterCtlBlk* %0) #0 {
  %2 = alloca %struct.AdapterCtlBlk*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %2, align 8
  %3 = load i32, i32* @DBG_0, align 4
  %4 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %5 = call i32 @dprintkdbg(i32 %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.AdapterCtlBlk* %4)
  %6 = load i32, i32* @RESET_DEV, align 4
  %7 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %8 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %12 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %13 = load i32, i32* @DO_RSTSCSI, align 4
  %14 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %23, %1
  %16 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %17 = load i32, i32* @TRM_S1040_SCSI_INTSTATUS, align 4
  %18 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %16, i32 %17)
  %19 = load i32, i32* @INT_SCSIRESET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %15

24:                                               ; preds = %15
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, %struct.AdapterCtlBlk*) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @DC395x_read8(%struct.AdapterCtlBlk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
