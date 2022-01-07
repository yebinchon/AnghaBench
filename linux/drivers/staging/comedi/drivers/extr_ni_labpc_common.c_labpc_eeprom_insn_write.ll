; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_eeprom_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_eeprom_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@labpc_eeprom_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @labpc_eeprom_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_eeprom_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ugt i32 %20, 127
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %64

25:                                               ; preds = %19
  %26 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %27 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %41 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %42 = load i32, i32* @labpc_eeprom_ready, align 4
  %43 = call i32 @comedi_timeout(%struct.comedi_device* %39, %struct.comedi_subdevice* %40, %struct.comedi_insn* %41, i32 %42, i32 0)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %64

48:                                               ; preds = %30
  %49 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @labpc_eeprom_write(%struct.comedi_device* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %48, %25
  %61 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %62 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %46, %22
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @labpc_eeprom_write(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
