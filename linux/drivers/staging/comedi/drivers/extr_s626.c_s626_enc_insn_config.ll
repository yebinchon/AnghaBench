; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_enc_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_enc_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@S626_LOADSRC_INDX = common dso_local global i32 0, align 4
@S626_INDXSRC_SOFT = common dso_local global i32 0, align 4
@S626_ENCMODE_COUNTER = common dso_local global i32 0, align 4
@S626_CLKPOL_POS = common dso_local global i32 0, align 4
@S626_CLKMULT_1X = common dso_local global i32 0, align 4
@S626_CLKENAB_INDEX = common dso_local global i32 0, align 4
@S626_LATCHSRC_AB_READ = common dso_local global i64 0, align 8
@S626_CLKENAB_ALWAYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s626_enc_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_enc_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @S626_LOADSRC_INDX, align 4
  %18 = call i64 @S626_SET_STD_LOADSRC(i32 %17)
  %19 = load i32, i32* @S626_INDXSRC_SOFT, align 4
  %20 = call i64 @S626_SET_STD_INDXSRC(i32 %19)
  %21 = or i64 %18, %20
  %22 = load i32, i32* @S626_ENCMODE_COUNTER, align 4
  %23 = call i64 @S626_SET_STD_ENCMODE(i32 %22)
  %24 = or i64 %21, %23
  %25 = load i32, i32* @S626_CLKPOL_POS, align 4
  %26 = call i64 @S626_SET_STD_CLKPOL(i32 %25)
  %27 = or i64 %24, %26
  %28 = load i32, i32* @S626_CLKMULT_1X, align 4
  %29 = call i64 @S626_SET_STD_CLKMULT(i32 %28)
  %30 = or i64 %27, %29
  %31 = load i32, i32* @S626_CLKENAB_INDEX, align 4
  %32 = call i64 @S626_SET_STD_CLKENAB(i32 %31)
  %33 = or i64 %30, %32
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* @S626_LATCHSRC_AB_READ, align 8
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* @S626_CLKENAB_ALWAYS, align 8
  store i64 %35, i64* %12, align 8
  %36 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @s626_set_mode(%struct.comedi_device* %36, i32 %37, i64 %38, i32 1)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @s626_preload(%struct.comedi_device* %40, i32 %41, i32 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @s626_pulse_index(%struct.comedi_device* %46, i32 %47)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @s626_set_latch_source(%struct.comedi_device* %49, i32 %50, i64 %51)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @s626_set_enable(%struct.comedi_device* %53, i32 %54, i32 %57)
  %59 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  ret i32 %61
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @S626_SET_STD_LOADSRC(i32) #1

declare dso_local i64 @S626_SET_STD_INDXSRC(i32) #1

declare dso_local i64 @S626_SET_STD_ENCMODE(i32) #1

declare dso_local i64 @S626_SET_STD_CLKPOL(i32) #1

declare dso_local i64 @S626_SET_STD_CLKMULT(i32) #1

declare dso_local i64 @S626_SET_STD_CLKENAB(i32) #1

declare dso_local i32 @s626_set_mode(%struct.comedi_device*, i32, i64, i32) #1

declare dso_local i32 @s626_preload(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @s626_pulse_index(%struct.comedi_device*, i32) #1

declare dso_local i32 @s626_set_latch_source(%struct.comedi_device*, i32, i64) #1

declare dso_local i32 @s626_set_enable(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
