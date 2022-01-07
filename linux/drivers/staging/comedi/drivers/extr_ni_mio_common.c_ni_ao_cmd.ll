; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.ni_private* }
%struct.ni_private = type { i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"cannot run command without an irq\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.ni_private*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 2
  %10 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  store %struct.ni_private* %10, %struct.ni_private** %6, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %2
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %29 = call i32 @ni_ao_cmd_personalize(%struct.comedi_device* %27, %struct.comedi_cmd* %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %32 = call i32 @ni_ao_cmd_set_trigger(%struct.comedi_device* %30, %struct.comedi_cmd* %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %35 = call i32 @ni_ao_cmd_set_counters(%struct.comedi_device* %33, %struct.comedi_cmd* %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %38 = call i32 @ni_ao_cmd_set_update(%struct.comedi_device* %36, %struct.comedi_cmd* %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %41 = call i32 @ni_ao_cmd_set_channels(%struct.comedi_device* %39, %struct.comedi_subdevice* %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %44 = call i32 @ni_ao_cmd_set_stop_conditions(%struct.comedi_device* %42, %struct.comedi_cmd* %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = call i32 @ni_ao_cmd_set_fifo_mode(%struct.comedi_device* %45)
  %47 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %48 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %52 = call i32 @ni_cmd_set_mite_transfer(i32 %49, %struct.comedi_subdevice* %50, %struct.comedi_cmd* %51, i32 16777215)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %55 = call i32 @ni_ao_cmd_set_interrupts(%struct.comedi_device* %53, %struct.comedi_subdevice* %54)
  %56 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %57 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %26, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ni_ao_cmd_personalize(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @ni_ao_cmd_set_trigger(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @ni_ao_cmd_set_counters(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @ni_ao_cmd_set_update(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @ni_ao_cmd_set_channels(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @ni_ao_cmd_set_stop_conditions(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @ni_ao_cmd_set_fifo_mode(%struct.comedi_device*) #1

declare dso_local i32 @ni_cmd_set_mite_transfer(i32, %struct.comedi_subdevice*, %struct.comedi_cmd*, i32) #1

declare dso_local i32 @ni_ao_cmd_set_interrupts(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
