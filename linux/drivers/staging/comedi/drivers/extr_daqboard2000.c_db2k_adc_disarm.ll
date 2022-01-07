; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_adc_disarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_adc_disarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@DB2K_TRIG_CONTROL_TYPE_ANALOG = common dso_local global i32 0, align 4
@DB2K_TRIG_CONTROL_DISABLE = common dso_local global i32 0, align 4
@DB2K_REG_TRIG_CONTROL = common dso_local global i64 0, align 8
@DB2K_TRIG_CONTROL_TYPE_TTL = common dso_local global i32 0, align 4
@DB2K_ACQ_CONTROL_SEQ_STOP_SCAN_LIST = common dso_local global i32 0, align 4
@DB2K_REG_ACQ_CONTROL = common dso_local global i64 0, align 8
@DB2K_ACQ_CONTROL_ADC_PACER_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @db2k_adc_disarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db2k_adc_disarm(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = call i32 @udelay(i32 2)
  %4 = load i32, i32* @DB2K_TRIG_CONTROL_TYPE_ANALOG, align 4
  %5 = load i32, i32* @DB2K_TRIG_CONTROL_DISABLE, align 4
  %6 = or i32 %4, %5
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DB2K_REG_TRIG_CONTROL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writew(i32 %6, i64 %11)
  %13 = call i32 @udelay(i32 2)
  %14 = load i32, i32* @DB2K_TRIG_CONTROL_TYPE_TTL, align 4
  %15 = load i32, i32* @DB2K_TRIG_CONTROL_DISABLE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DB2K_REG_TRIG_CONTROL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writew(i32 %16, i64 %21)
  %23 = call i32 @udelay(i32 2)
  %24 = load i32, i32* @DB2K_ACQ_CONTROL_SEQ_STOP_SCAN_LIST, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DB2K_REG_ACQ_CONTROL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writew(i32 %24, i64 %29)
  %31 = call i32 @udelay(i32 2)
  %32 = load i32, i32* @DB2K_ACQ_CONTROL_ADC_PACER_DISABLE, align 4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DB2K_REG_ACQ_CONTROL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writew(i32 %32, i64 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %40 = call i32 @db2k_adc_stop_dma_transfer(%struct.comedi_device* %39)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @db2k_adc_stop_dma_transfer(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
