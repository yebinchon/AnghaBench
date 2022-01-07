; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_adapter_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32, %struct.NvRamType, i64 }
%struct.NvRamType = type { i32, i32 }

@TRM_S1040_DMA_INTEN = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_INTEN = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_RSTMODULE = common dso_local global i32 0, align 4
@TRM_S1040_DMA_CONTROL = common dso_local global i32 0, align 4
@DMARESETMODULE = common dso_local global i32 0, align 4
@HCC_AUTOTERM = common dso_local global i32 0, align 4
@HCC_PARITY = common dso_local global i32 0, align 4
@TRM_S1040_GEN_STATUS = common dso_local global i32 0, align 4
@WIDESCSI = common dso_local global i32 0, align 4
@HCC_WIDE_CARD = common dso_local global i32 0, align 4
@NAC_POWERON_SCSI_RESET = common dso_local global i32 0, align 4
@HCC_SCSI_RESET = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Performing initial SCSI bus reset\0A\00", align 1
@DO_RSTSCSI = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*)* @adapter_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_init_chip(%struct.AdapterCtlBlk* %0) #0 {
  %2 = alloca %struct.AdapterCtlBlk*, align 8
  %3 = alloca %struct.NvRamType*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %2, align 8
  %4 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %5 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %4, i32 0, i32 1
  store %struct.NvRamType* %5, %struct.NvRamType** %3, align 8
  %6 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %7 = load i32, i32* @TRM_S1040_DMA_INTEN, align 4
  %8 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %6, i32 %7, i32 0)
  %9 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %10 = load i32, i32* @TRM_S1040_SCSI_INTEN, align 4
  %11 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %9, i32 %10, i32 0)
  %12 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %13 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %14 = load i32, i32* @DO_RSTMODULE, align 4
  %15 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %12, i32 %13, i32 %14)
  %16 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %17 = load i32, i32* @TRM_S1040_DMA_CONTROL, align 4
  %18 = load i32, i32* @DMARESETMODULE, align 4
  %19 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %16, i32 %17, i32 %18)
  %20 = call i32 @udelay(i32 20)
  %21 = load i32, i32* @HCC_AUTOTERM, align 4
  %22 = load i32, i32* @HCC_PARITY, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %25 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %27 = load i32, i32* @TRM_S1040_GEN_STATUS, align 4
  %28 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %26, i32 %27)
  %29 = load i32, i32* @WIDESCSI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load i32, i32* @HCC_WIDE_CARD, align 4
  %34 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %35 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %1
  %39 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %40 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NAC_POWERON_SCSI_RESET, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* @HCC_SCSI_RESET, align 4
  %47 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %48 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %38
  %52 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %53 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @HCC_SCSI_RESET, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %51
  %59 = load i32, i32* @KERN_INFO, align 4
  %60 = call i32 @dprintkl(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %62 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %63 = load i32, i32* @DO_RSTSCSI, align 4
  %64 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %61, i32 %62, i32 %63)
  %65 = call i32 @udelay(i32 500)
  %66 = load i64, i64* @jiffies, align 8
  %67 = load i32, i32* @HZ, align 4
  %68 = sdiv i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %66, %69
  %71 = load i32, i32* @HZ, align 4
  %72 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %73 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %71, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %70, %77
  %79 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %80 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %58, %51
  ret void
}

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DC395x_read8(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i32 @dprintkl(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
