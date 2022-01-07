; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_daq_700.c_daq700_ai_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_daq_700.c_daq700_ai_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }

@CMD_R1 = common dso_local global i64 0, align 8
@CMD_R2 = common dso_local global i64 0, align 8
@CMD_R3 = common dso_local global i64 0, align 8
@CMO_R = common dso_local global i64 0, align 8
@TIC_R = common dso_local global i64 0, align 8
@ADCLEAR_R = common dso_local global i64 0, align 8
@ADFIFO_R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @daq700_ai_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @daq700_ai_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @CMD_R1, align 8
  %11 = add i64 %9, %10
  %12 = call i32 @outb(i32 128, i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @CMD_R2, align 8
  %15 = add i64 %13, %14
  %16 = call i32 @outb(i32 0, i64 %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @CMD_R3, align 8
  %19 = add i64 %17, %18
  %20 = call i32 @outb(i32 0, i64 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @CMO_R, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @outb(i32 50, i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @TIC_R, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @outb(i32 0, i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @ADCLEAR_R, align 8
  %31 = add i64 %29, %30
  %32 = call i32 @outb(i32 0, i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @ADFIFO_R, align 8
  %35 = add i64 %33, %34
  %36 = call i32 @inw(i64 %35)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
