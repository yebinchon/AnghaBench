; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_prime_channelgain_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_prime_channelgain_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@NISTC_AI_CMD1_CONVERT_PULSE = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_REG = common dso_local global i32 0, align 4
@NI_TIMEOUT = common dso_local global i32 0, align 4
@NISTC_AI_STATUS1_REG = common dso_local global i32 0, align 4
@NISTC_AI_STATUS1_FIFO_E = common dso_local global i32 0, align 4
@NISTC_ADC_FIFO_CLR_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"timeout loading channel/gain list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @ni_prime_channelgain_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_prime_channelgain_list(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = load i32, i32* @NISTC_AI_CMD1_CONVERT_PULSE, align 4
  %6 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %7 = call i32 @ni_stc_writew(%struct.comedi_device* %4, i32 %5, i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NI_TIMEOUT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = load i32, i32* @NISTC_AI_STATUS1_REG, align 4
  %15 = call i32 @ni_stc_readw(%struct.comedi_device* %13, i32 %14)
  %16 = load i32, i32* @NISTC_AI_STATUS1_FIFO_E, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = load i32, i32* @NISTC_ADC_FIFO_CLR_REG, align 4
  %22 = call i32 @ni_stc_writew(%struct.comedi_device* %20, i32 1, i32 %21)
  br label %33

23:                                               ; preds = %12
  %24 = call i32 @udelay(i32 1)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %19
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_stc_readw(%struct.comedi_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
