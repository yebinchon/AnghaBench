; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.comedi_devconfig = type { i32 }

@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@dnp_dio_insn_bits = common dso_local global i32 0, align 4
@dnp_dio_insn_config = common dso_local global i32 0, align 4
@PAMR = common dso_local global i32 0, align 4
@CSCIR = common dso_local global i32 0, align 4
@CSCDR = common dso_local global i32 0, align 4
@PBMR = common dso_local global i32 0, align 4
@PCMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @dnp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnp_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %8, i32 1)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %16, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i64 0
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %6, align 8
  %19 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @SDF_READABLE, align 4
  %23 = load i32, i32* @SDF_WRITABLE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 1
  store i32 20, i32* %28, align 4
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 2
  store i32 1, i32* %30, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 5
  store i32* @range_digital, i32** %32, align 8
  %33 = load i32, i32* @dnp_dio_insn_bits, align 4
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @dnp_dio_insn_config, align 4
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @PAMR, align 4
  %40 = load i32, i32* @CSCIR, align 4
  %41 = call i32 @outb(i32 %39, i32 %40)
  %42 = load i32, i32* @CSCDR, align 4
  %43 = call i32 @outb(i32 0, i32 %42)
  %44 = load i32, i32* @PBMR, align 4
  %45 = load i32, i32* @CSCIR, align 4
  %46 = call i32 @outb(i32 %44, i32 %45)
  %47 = load i32, i32* @CSCDR, align 4
  %48 = call i32 @outb(i32 0, i32 %47)
  %49 = load i32, i32* @PCMR, align 4
  %50 = load i32, i32* @CSCIR, align 4
  %51 = call i32 @outb(i32 %49, i32 %50)
  %52 = load i32, i32* @CSCDR, align 4
  %53 = call i32 @inb(i32 %52)
  %54 = and i32 %53, 170
  %55 = load i32, i32* @CSCDR, align 4
  %56 = call i32 @outb(i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %14, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
