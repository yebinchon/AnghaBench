; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das08_cs.c_das08_cs_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das08_cs.c_das08_cs_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32* }
%struct.pcmcia_device = type { %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.das08_private_struct = type { i32 }

@das08_cs_boards = common dso_local global i32* null, align 8
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @das08_cs_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das08_cs_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca %struct.das08_private_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = call %struct.pcmcia_device* @comedi_to_pcmcia_dev(%struct.comedi_device* %10)
  store %struct.pcmcia_device* %11, %struct.pcmcia_device** %6, align 8
  %12 = load i32*, i32** @das08_cs_boards, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = call i32 @comedi_pcmcia_enable(%struct.comedi_device* %21, i32* null)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %2
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %29 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = call %struct.das08_private_struct* @comedi_alloc_devpriv(%struct.comedi_device* %35, i32 4)
  store %struct.das08_private_struct* %36, %struct.das08_private_struct** %7, align 8
  %37 = load %struct.das08_private_struct*, %struct.das08_private_struct** %7, align 8
  %38 = icmp ne %struct.das08_private_struct* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %27
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @das08_common_attach(%struct.comedi_device* %43, i64 %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %39, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.pcmcia_device* @comedi_to_pcmcia_dev(%struct.comedi_device*) #1

declare dso_local i32 @comedi_pcmcia_enable(%struct.comedi_device*, i32*) #1

declare dso_local %struct.das08_private_struct* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @das08_common_attach(%struct.comedi_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
