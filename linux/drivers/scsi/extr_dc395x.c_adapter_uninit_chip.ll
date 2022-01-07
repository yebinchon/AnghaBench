; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_uninit_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_uninit_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32 }

@TRM_S1040_DMA_INTEN = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_INTEN = common dso_local global i32 0, align 4
@HCC_SCSI_RESET = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_INTSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*)* @adapter_uninit_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_uninit_chip(%struct.AdapterCtlBlk* %0) #0 {
  %2 = alloca %struct.AdapterCtlBlk*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %2, align 8
  %3 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %4 = load i32, i32* @TRM_S1040_DMA_INTEN, align 4
  %5 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %3, i32 %4, i32 0)
  %6 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %7 = load i32, i32* @TRM_S1040_SCSI_INTEN, align 4
  %8 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %6, i32 %7, i32 0)
  %9 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %10 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HCC_SCSI_RESET, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %17 = call i32 @reset_scsi_bus(%struct.AdapterCtlBlk* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %20 = load i32, i32* @TRM_S1040_SCSI_INTSTATUS, align 4
  %21 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %19, i32 %20)
  ret void
}

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @reset_scsi_bus(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @DC395x_read8(%struct.AdapterCtlBlk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
