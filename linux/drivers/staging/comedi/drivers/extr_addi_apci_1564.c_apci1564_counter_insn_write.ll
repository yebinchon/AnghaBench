; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1564.c_apci1564_counter_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1564.c_apci1564_counter_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.apci1564_private* }
%struct.apci1564_private = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@ADDI_TCW_RELOAD_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_counter_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1564_counter_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.apci1564_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.apci1564_private*, %struct.apci1564_private** %14, align 8
  store %struct.apci1564_private* %15, %struct.apci1564_private** %9, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.apci1564_private*, %struct.apci1564_private** %9, align 8
  %21 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @APCI1564_COUNTER(i32 %23)
  %25 = add i64 %22, %24
  store i64 %25, i64* %11, align 8
  %26 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %4
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @ADDI_TCW_RELOAD_REG, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @outl(i32 %39, i64 %42)
  br label %44

44:                                               ; preds = %30, %4
  %45 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  ret i32 %47
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @APCI1564_COUNTER(i32) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
