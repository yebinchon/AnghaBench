; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_counters_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_counters_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@S626_LOADSRC_INDX = common dso_local global i32 0, align 4
@S626_INDXSRC_SOFT = common dso_local global i32 0, align 4
@S626_ENCMODE_COUNTER = common dso_local global i32 0, align 4
@S626_CLKPOL_POS = common dso_local global i32 0, align 4
@S626_CLKMULT_1X = common dso_local global i32 0, align 4
@S626_CLKENAB_INDEX = common dso_local global i32 0, align 4
@S626_ENCODER_CHANNELS = common dso_local global i32 0, align 4
@S626_CLKENAB_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @s626_counters_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_counters_init(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load i32, i32* @S626_LOADSRC_INDX, align 4
  %6 = call i32 @S626_SET_STD_LOADSRC(i32 %5)
  %7 = load i32, i32* @S626_INDXSRC_SOFT, align 4
  %8 = call i32 @S626_SET_STD_INDXSRC(i32 %7)
  %9 = or i32 %6, %8
  %10 = load i32, i32* @S626_ENCMODE_COUNTER, align 4
  %11 = call i32 @S626_SET_STD_ENCMODE(i32 %10)
  %12 = or i32 %9, %11
  %13 = load i32, i32* @S626_CLKPOL_POS, align 4
  %14 = call i32 @S626_SET_STD_CLKPOL(i32 %13)
  %15 = or i32 %12, %14
  %16 = load i32, i32* @S626_CLKMULT_1X, align 4
  %17 = call i32 @S626_SET_STD_CLKMULT(i32 %16)
  %18 = or i32 %15, %17
  %19 = load i32, i32* @S626_CLKENAB_INDEX, align 4
  %20 = call i32 @S626_SET_STD_CLKENAB(i32 %19)
  %21 = or i32 %18, %20
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %41, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @S626_ENCODER_CHANNELS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @s626_set_mode(%struct.comedi_device* %27, i32 %28, i32 %29, i32 1)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @s626_set_int_src(%struct.comedi_device* %31, i32 %32, i32 0)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @s626_reset_cap_flags(%struct.comedi_device* %34, i32 %35)
  %37 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @S626_CLKENAB_ALWAYS, align 4
  %40 = call i32 @s626_set_enable(%struct.comedi_device* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %22

44:                                               ; preds = %22
  ret void
}

declare dso_local i32 @S626_SET_STD_LOADSRC(i32) #1

declare dso_local i32 @S626_SET_STD_INDXSRC(i32) #1

declare dso_local i32 @S626_SET_STD_ENCMODE(i32) #1

declare dso_local i32 @S626_SET_STD_CLKPOL(i32) #1

declare dso_local i32 @S626_SET_STD_CLKMULT(i32) #1

declare dso_local i32 @S626_SET_STD_CLKENAB(i32) #1

declare dso_local i32 @s626_set_mode(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @s626_set_int_src(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @s626_reset_cap_flags(%struct.comedi_device*, i32) #1

declare dso_local i32 @s626_set_enable(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
