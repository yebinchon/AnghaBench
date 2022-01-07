; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_multiq3.c_multiq3_encoder_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_multiq3.c_multiq3_encoder_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@MULTIQ3_CTRL_EN = common dso_local global i32 0, align 4
@MULTIQ3_EFLAG_RESET = common dso_local global i32 0, align 4
@MULTIQ3_ENC_CTRL_REG = common dso_local global i64 0, align 8
@MULTIQ3_BP_RESET = common dso_local global i32 0, align 4
@MULTIQ3_CLOCK_DATA = common dso_local global i32 0, align 4
@MULTIQ3_ENC_DATA_REG = common dso_local global i64 0, align 8
@MULTIQ3_CLOCK_SETUP = common dso_local global i32 0, align 4
@MULTIQ3_INPUT_SETUP = common dso_local global i32 0, align 4
@MULTIQ3_QUAD_X4 = common dso_local global i32 0, align 4
@MULTIQ3_CNTR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @multiq3_encoder_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiq3_encoder_reset(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %6 = load i32, i32* @MULTIQ3_CTRL_EN, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @MULTIQ3_CTRL_E_CHAN(i32 %7)
  %9 = or i32 %6, %8
  %10 = call i32 @multiq3_set_ctrl(%struct.comedi_device* %5, i32 %9)
  %11 = load i32, i32* @MULTIQ3_EFLAG_RESET, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MULTIQ3_ENC_CTRL_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outb(i32 %11, i64 %16)
  %18 = load i32, i32* @MULTIQ3_BP_RESET, align 4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MULTIQ3_ENC_CTRL_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 %18, i64 %23)
  %25 = load i32, i32* @MULTIQ3_CLOCK_DATA, align 4
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MULTIQ3_ENC_DATA_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i32 %25, i64 %30)
  %32 = load i32, i32* @MULTIQ3_CLOCK_SETUP, align 4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MULTIQ3_ENC_CTRL_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 %32, i64 %37)
  %39 = load i32, i32* @MULTIQ3_INPUT_SETUP, align 4
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MULTIQ3_ENC_CTRL_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 %39, i64 %44)
  %46 = load i32, i32* @MULTIQ3_QUAD_X4, align 4
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MULTIQ3_ENC_CTRL_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 %46, i64 %51)
  %53 = load i32, i32* @MULTIQ3_CNTR_RESET, align 4
  %54 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MULTIQ3_ENC_CTRL_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 %53, i64 %58)
  ret void
}

declare dso_local i32 @multiq3_set_ctrl(%struct.comedi_device*, i32) #1

declare dso_local i32 @MULTIQ3_CTRL_E_CHAN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
