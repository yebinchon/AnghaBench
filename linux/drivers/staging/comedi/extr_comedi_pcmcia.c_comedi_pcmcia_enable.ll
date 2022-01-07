; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_pcmcia.c_comedi_pcmcia_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_pcmcia.c_comedi_pcmcia_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.pcmcia_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_pcmcia_enable(%struct.comedi_device* %0, i32 (%struct.pcmcia_device*, i8*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32 (%struct.pcmcia_device*, i8*)*, align 8
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 (%struct.pcmcia_device*, i8*)* %1, i32 (%struct.pcmcia_device*, i8*)** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = call %struct.pcmcia_device* @comedi_to_pcmcia_dev(%struct.comedi_device* %8)
  store %struct.pcmcia_device* %9, %struct.pcmcia_device** %6, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %11 = icmp ne %struct.pcmcia_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load i32 (%struct.pcmcia_device*, i8*)*, i32 (%struct.pcmcia_device*, i8*)** %5, align 8
  %17 = icmp ne i32 (%struct.pcmcia_device*, i8*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 (%struct.pcmcia_device*, i8*)* @comedi_pcmcia_conf_check, i32 (%struct.pcmcia_device*, i8*)** %5, align 8
  br label %19

19:                                               ; preds = %18, %15
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %21 = load i32 (%struct.pcmcia_device*, i8*)*, i32 (%struct.pcmcia_device*, i8*)** %5, align 8
  %22 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %20, i32 (%struct.pcmcia_device*, i8*)* %21, i32* null)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %19
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %29 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %25, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.pcmcia_device* @comedi_to_pcmcia_dev(%struct.comedi_device*) #1

declare dso_local i32 @comedi_pcmcia_conf_check(%struct.pcmcia_device*, i8*) #1

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32 (%struct.pcmcia_device*, i8*)*, i32*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
