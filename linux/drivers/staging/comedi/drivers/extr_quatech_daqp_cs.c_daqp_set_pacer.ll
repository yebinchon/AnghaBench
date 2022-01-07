; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_set_pacer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_set_pacer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@DAQP_PACER_LOW_REG = common dso_local global i64 0, align 8
@DAQP_PACER_MID_REG = common dso_local global i64 0, align 8
@DAQP_PACER_HIGH_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @daqp_set_pacer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @daqp_set_pacer(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DAQP_PACER_LOW_REG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @outb(i32 %6, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DAQP_PACER_MID_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 %15, i64 %20)
  %22 = load i32, i32* %4, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DAQP_PACER_HIGH_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 %24, i64 %29)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
