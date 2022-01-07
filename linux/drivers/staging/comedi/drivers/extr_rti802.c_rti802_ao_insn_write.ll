; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rti802.c_rti802_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rti802.c_rti802_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.rti802_private* }
%struct.rti802_private = type { i64* }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@RTI802_SELECT = common dso_local global i64 0, align 8
@dac_2comp = common dso_local global i64 0, align 8
@RTI802_DATALOW = common dso_local global i64 0, align 8
@RTI802_DATAHIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rti802_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rti802_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rti802_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.rti802_private*, %struct.rti802_private** %14, align 8
  store %struct.rti802_private* %15, %struct.rti802_private** %9, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RTI802_SELECT, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 %20, i64 %25)
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %77, %4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %30 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load %struct.rti802_private*, %struct.rti802_private** %9, align 8
  %47 = getelementptr inbounds %struct.rti802_private, %struct.rti802_private* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @dac_2comp, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %33
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %55, %33
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %60, 255
  %62 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RTI802_DATALOW, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outb(i32 %61, i64 %66)
  %68 = load i32, i32* %12, align 4
  %69 = lshr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RTI802_DATAHIGH, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outb(i32 %70, i64 %75)
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %27

80:                                               ; preds = %27
  %81 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  ret i32 %83
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
