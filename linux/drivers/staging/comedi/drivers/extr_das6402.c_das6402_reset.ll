; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das6402.c_das6402_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das6402.c_das6402_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.das6402_private* }
%struct.das6402_private = type { i32 }

@DAS6402_MODE_ENHANCED = common dso_local global i32 0, align 4
@DAS6402_MODE_REG = common dso_local global i64 0, align 8
@DAS6402_STATUS_W_10MHZ = common dso_local global i32 0, align 4
@DAS6402_CTRL_SOFT_TRIG = common dso_local global i32 0, align 4
@DAS6402_CTRL_REG = common dso_local global i64 0, align 8
@DAS6402_MODE_POLLED = common dso_local global i32 0, align 4
@DAS6402_MODE_SE = common dso_local global i32 0, align 4
@DAS6402_MODE_UNI = common dso_local global i32 0, align 4
@DAS6402_AI_MUX_REG = common dso_local global i64 0, align 8
@DAS6402_TRIG_REG = common dso_local global i64 0, align 8
@DAS6402_DI_DO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @das6402_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das6402_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.das6402_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 1
  %6 = load %struct.das6402_private*, %struct.das6402_private** %5, align 8
  store %struct.das6402_private* %6, %struct.das6402_private** %3, align 8
  %7 = load i32, i32* @DAS6402_MODE_ENHANCED, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DAS6402_MODE_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outb(i32 %7, i64 %12)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = load i32, i32* @DAS6402_STATUS_W_10MHZ, align 4
  %16 = call i32 @das6402_set_extended(%struct.comedi_device* %14, i32 %15)
  %17 = load i32, i32* @DAS6402_CTRL_SOFT_TRIG, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DAS6402_CTRL_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i32 %17, i64 %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %25 = call i32 @DAS6402_MODE_RANGE(i32 0)
  %26 = load i32, i32* @DAS6402_MODE_POLLED, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DAS6402_MODE_SE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @DAS6402_MODE_UNI, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @das6402_set_mode(%struct.comedi_device* %24, i32 %31)
  %33 = call i32 @DAS6402_AI_MUX_HI(i32 0)
  %34 = call i32 @DAS6402_AI_MUX_LO(i32 0)
  %35 = or i32 %33, %34
  %36 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DAS6402_AI_MUX_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outw(i32 %35, i64 %40)
  %42 = call i32 @DAS6402_AO_RANGE(i32 0, i32 2)
  %43 = call i32 @DAS6402_AO_RANGE(i32 1, i32 2)
  %44 = or i32 %42, %43
  %45 = load %struct.das6402_private*, %struct.das6402_private** %3, align 8
  %46 = getelementptr inbounds %struct.das6402_private, %struct.das6402_private* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.das6402_private*, %struct.das6402_private** %3, align 8
  %48 = getelementptr inbounds %struct.das6402_private, %struct.das6402_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DAS6402_TRIG_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 %49, i64 %54)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @DAS6402_AO_DATA_REG(i32 0)
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outw(i32 0, i64 %60)
  %62 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @DAS6402_AO_DATA_REG(i32 0)
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outw(i32 0, i64 %66)
  %68 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @DAS6402_AO_LSB_REG(i32 0)
  %72 = add nsw i64 %70, %71
  %73 = call i32 @inw(i64 %72)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DAS6402_DI_DO_REG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outb(i32 0, i64 %78)
  %80 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %81 = call i32 @das6402_clear_all_interrupts(%struct.comedi_device* %80)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @das6402_set_extended(%struct.comedi_device*, i32) #1

declare dso_local i32 @das6402_set_mode(%struct.comedi_device*, i32) #1

declare dso_local i32 @DAS6402_MODE_RANGE(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @DAS6402_AI_MUX_HI(i32) #1

declare dso_local i32 @DAS6402_AI_MUX_LO(i32) #1

declare dso_local i32 @DAS6402_AO_RANGE(i32, i32) #1

declare dso_local i64 @DAS6402_AO_DATA_REG(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i64 @DAS6402_AO_LSB_REG(i32) #1

declare dso_local i32 @das6402_clear_all_interrupts(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
