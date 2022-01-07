; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das6402.c_das6402_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das6402.c_das6402_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.das6402_private* }
%struct.das6402_private = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32* }

@DAS6402_MODE_FIFONEPTY = common dso_local global i32 0, align 4
@DAS6402_AI_MUX_REG = common dso_local global i64 0, align 8
@DAS6402_CTRL_INTE = common dso_local global i32 0, align 4
@DAS6402_CTRL_PACER_TRIG = common dso_local global i32 0, align 4
@DAS6402_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @das6402_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das6402_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.das6402_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 2
  %11 = load %struct.das6402_private*, %struct.das6402_private** %10, align 8
  store %struct.das6402_private* %11, %struct.das6402_private** %5, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.comedi_cmd* %15, %struct.comedi_cmd** %6, align 8
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CR_CHAN(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CR_CHAN(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DAS6402_MODE_FIFONEPTY, align 4
  %41 = call i32 @das6402_ai_set_mode(%struct.comedi_device* %33, %struct.comedi_subdevice* %34, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @DAS6402_AI_MUX_HI(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @DAS6402_AI_MUX_LO(i32 %44)
  %46 = or i32 %43, %45
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DAS6402_AI_MUX_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outw(i32 %46, i64 %51)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @comedi_8254_update_divisors(i32 %55)
  %57 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @comedi_8254_pacer_enable(i32 %59, i32 1, i32 2, i32 1)
  %61 = load i32, i32* @DAS6402_CTRL_INTE, align 4
  %62 = load %struct.das6402_private*, %struct.das6402_private** %5, align 8
  %63 = getelementptr inbounds %struct.das6402_private, %struct.das6402_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DAS6402_CTRL_IRQ(i32 %64)
  %66 = or i32 %61, %65
  %67 = load i32, i32* @DAS6402_CTRL_PACER_TRIG, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DAS6402_CTRL_REG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outb(i32 %68, i64 %73)
  ret i32 0
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @das6402_ai_set_mode(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @DAS6402_AI_MUX_HI(i32) #1

declare dso_local i32 @DAS6402_AI_MUX_LO(i32) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @DAS6402_CTRL_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
