; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_dac08_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_dac08_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcidas_private* }
%struct.cb_pcidas_private = type { i64, i32 }

@PCIDAS_CALIB_EN = common dso_local global i32 0, align 4
@PCIDAS_CALIB_REG = common dso_local global i64 0, align 8
@PCIDAS_CALIB_DAC08_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @cb_pcidas_dac08_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_pcidas_dac08_write(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cb_pcidas_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %7, align 8
  store %struct.cb_pcidas_private* %8, %struct.cb_pcidas_private** %5, align 8
  %9 = load i32, i32* @PCIDAS_CALIB_EN, align 4
  %10 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %5, align 8
  %11 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @PCIDAS_CALIB_SRC(i32 %12)
  %14 = or i32 %9, %13
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %5, align 8
  %19 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCIDAS_CALIB_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outw(i32 %17, i64 %22)
  %24 = call i32 @udelay(i32 1)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PCIDAS_CALIB_DAC08_SEL, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %5, align 8
  %29 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCIDAS_CALIB_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outw(i32 %27, i64 %32)
  %34 = call i32 @udelay(i32 1)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %5, align 8
  %37 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCIDAS_CALIB_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outw(i32 %35, i64 %40)
  %42 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local i32 @PCIDAS_CALIB_SRC(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
