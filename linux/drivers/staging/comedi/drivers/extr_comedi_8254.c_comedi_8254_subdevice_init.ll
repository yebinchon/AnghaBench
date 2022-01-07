; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_subdevice_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_subdevice_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32, i32, i32, %struct.comedi_8254*, i32, i32, i32, i32*, i32 }
%struct.comedi_8254 = type { i32 }

@COMEDI_SUBD_COUNTER = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_unknown = common dso_local global i32 0, align 4
@comedi_8254_insn_read = common dso_local global i32 0, align 4
@comedi_8254_insn_write = common dso_local global i32 0, align 4
@comedi_8254_insn_config = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_8254_subdevice_init(%struct.comedi_subdevice* %0, %struct.comedi_8254* %1) #0 {
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca %struct.comedi_8254*, align 8
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %3, align 8
  store %struct.comedi_8254* %1, %struct.comedi_8254** %4, align 8
  %5 = load i32, i32* @COMEDI_SUBD_COUNTER, align 4
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 8
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @SDF_READABLE, align 4
  %9 = load i32, i32* @SDF_WRITABLE, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 1
  store i32 3, i32* %14, align 4
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 2
  store i32 65535, i32* %16, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 7
  store i32* @range_unknown, i32** %18, align 8
  %19 = load i32, i32* @comedi_8254_insn_read, align 4
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @comedi_8254_insn_write, align 4
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @comedi_8254_insn_config, align 4
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.comedi_8254*, %struct.comedi_8254** %4, align 8
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 3
  store %struct.comedi_8254* %28, %struct.comedi_8254** %30, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
