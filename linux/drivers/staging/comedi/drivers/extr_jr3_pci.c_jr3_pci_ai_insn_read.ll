; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.jr3_pci_subdev_private* }
%struct.jr3_pci_subdev_private = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@state_jr3_done = common dso_local global i64 0, align 8
@watch_dog = common dso_local global i32 0, align 4
@watch_dog2 = common dso_local global i32 0, align 4
@sensor_change = common dso_local global i32 0, align 4
@state_jr3_poll = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @jr3_pci_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jr3_pci_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.jr3_pci_subdev_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %15, align 8
  store %struct.jr3_pci_subdev_private* %16, %struct.jr3_pci_subdev_private** %10, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %22 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @get_u16(i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %27 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @state_jr3_done, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @watch_dog, align 4
  %34 = load i32, i32* @watch_dog2, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @sensor_change, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %32, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %31, %4
  %41 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %42 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @state_jr3_done, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* @state_jr3_poll, align 8
  %48 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %49 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %76

53:                                               ; preds = %31
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %57 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @jr3_pci_ai_read_chan(%struct.comedi_device* %61, %struct.comedi_subdevice* %62, i32 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %54

72:                                               ; preds = %54
  %73 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %74 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %50
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @get_u16(i32*) #1

declare dso_local i32 @jr3_pci_ai_read_chan(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
