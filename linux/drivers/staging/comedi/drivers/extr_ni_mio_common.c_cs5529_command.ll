; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_cs5529_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_cs5529_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@cs5529_command.timeout = internal constant i32 100, align 4
@NI67XX_CAL_CMD_REG = common dso_local global i32 0, align 4
@NI67XX_CAL_STATUS_REG = common dso_local global i32 0, align 4
@NI67XX_CAL_STATUS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"possible problem - never saw adc go busy?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i16)* @cs5529_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5529_command(%struct.comedi_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = load i16, i16* %4, align 2
  %8 = load i32, i32* @NI67XX_CAL_CMD_REG, align 4
  %9 = call i32 @ni_ao_win_outw(%struct.comedi_device* %6, i16 zeroext %7, i32 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %23, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = load i32, i32* @NI67XX_CAL_STATUS_REG, align 4
  %16 = call i32 @ni_ao_win_inw(%struct.comedi_device* %14, i32 %15)
  %17 = load i32, i32* @NI67XX_CAL_STATUS_BUSY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %26

21:                                               ; preds = %13
  %22 = call i32 @udelay(i32 1)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %10

26:                                               ; preds = %20, %10
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 100
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @ni_ao_win_outw(%struct.comedi_device*, i16 zeroext, i32) #1

declare dso_local i32 @ni_ao_win_inw(%struct.comedi_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
