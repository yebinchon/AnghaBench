; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_timer_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_timer_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@S626_LOADSRC_INDX = common dso_local global i32 0, align 4
@S626_INDXSRC_SOFT = common dso_local global i32 0, align 4
@S626_ENCMODE_TIMER = common dso_local global i32 0, align 4
@S626_CNTDIR_DOWN = common dso_local global i32 0, align 4
@S626_CLKMULT_1X = common dso_local global i32 0, align 4
@S626_CLKENAB_INDEX = common dso_local global i32 0, align 4
@S626_LATCHSRC_A_INDXA = common dso_local global i32 0, align 4
@S626_INTSRC_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @s626_timer_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_timer_load(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @S626_LOADSRC_INDX, align 4
  %10 = call i32 @S626_SET_STD_LOADSRC(i32 %9)
  %11 = load i32, i32* @S626_INDXSRC_SOFT, align 4
  %12 = call i32 @S626_SET_STD_INDXSRC(i32 %11)
  %13 = or i32 %10, %12
  %14 = load i32, i32* @S626_ENCMODE_TIMER, align 4
  %15 = call i32 @S626_SET_STD_ENCMODE(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* @S626_CNTDIR_DOWN, align 4
  %18 = call i32 @S626_SET_STD_CLKPOL(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* @S626_CLKMULT_1X, align 4
  %21 = call i32 @S626_SET_STD_CLKMULT(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* @S626_CLKENAB_INDEX, align 4
  %24 = call i32 @S626_SET_STD_CLKENAB(i32 %23)
  %25 = or i32 %22, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @S626_LATCHSRC_A_INDXA, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @s626_set_mode(%struct.comedi_device* %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @s626_preload(%struct.comedi_device* %31, i32 %32, i32 %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @s626_set_load_trig(%struct.comedi_device* %35, i32 %36, i32 0)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @s626_pulse_index(%struct.comedi_device* %38, i32 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @s626_set_load_trig(%struct.comedi_device* %41, i32 %42, i32 1)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @S626_INTSRC_OVER, align 4
  %47 = call i32 @s626_set_int_src(%struct.comedi_device* %44, i32 %45, i32 %46)
  %48 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @s626_set_latch_source(%struct.comedi_device* %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @S626_SET_STD_LOADSRC(i32) #1

declare dso_local i32 @S626_SET_STD_INDXSRC(i32) #1

declare dso_local i32 @S626_SET_STD_ENCMODE(i32) #1

declare dso_local i32 @S626_SET_STD_CLKPOL(i32) #1

declare dso_local i32 @S626_SET_STD_CLKMULT(i32) #1

declare dso_local i32 @S626_SET_STD_CLKENAB(i32) #1

declare dso_local i32 @s626_set_mode(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @s626_preload(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @s626_set_load_trig(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @s626_pulse_index(%struct.comedi_device*, i32) #1

declare dso_local i32 @s626_set_int_src(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @s626_set_latch_source(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
