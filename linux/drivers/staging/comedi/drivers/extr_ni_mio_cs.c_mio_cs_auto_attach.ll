; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_cs.c_mio_cs_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_cs.c_mio_cs_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_board_struct = type { i32 }
%struct.comedi_device = type { i32, i32, i32, %struct.ni_board_struct* }
%struct.pcmcia_device = type { i32, i32, %struct.comedi_device*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@mio_cs_auto_attach.board = internal global %struct.ni_board_struct* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@mio_pcmcia_config_loop = common dso_local global i32 0, align 4
@ni_E_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @mio_cs_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mio_cs_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = call %struct.pcmcia_device* @comedi_to_pcmcia_dev(%struct.comedi_device* %8)
  store %struct.pcmcia_device* %9, %struct.pcmcia_device** %6, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %12 = call %struct.ni_board_struct* @ni_getboardtype(%struct.comedi_device* %10, %struct.pcmcia_device* %11)
  store %struct.ni_board_struct* %12, %struct.ni_board_struct** @mio_cs_auto_attach.board, align 8
  %13 = load %struct.ni_board_struct*, %struct.ni_board_struct** @mio_cs_auto_attach.board, align 8
  %14 = icmp ne %struct.ni_board_struct* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.ni_board_struct*, %struct.ni_board_struct** @mio_cs_auto_attach.board, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 3
  store %struct.ni_board_struct* %19, %struct.ni_board_struct** %21, align 8
  %22 = load %struct.ni_board_struct*, %struct.ni_board_struct** @mio_cs_auto_attach.board, align 8
  %23 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %28 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = load i32, i32* @mio_pcmcia_config_loop, align 4
  %36 = call i32 @comedi_pcmcia_enable(%struct.comedi_device* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %18
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %18
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %43 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %52, i32 0, i32 2
  store %struct.comedi_device* %51, %struct.comedi_device** %53, align 8
  %54 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %55 = load i32, i32* @ni_E_interrupt, align 4
  %56 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %41
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %76

61:                                               ; preds = %41
  %62 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %63 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %68 = call i32 @ni_alloc_private(%struct.comedi_device* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %76

73:                                               ; preds = %61
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = call i32 @ni_E_init(%struct.comedi_device* %74, i32 0, i32 1)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %71, %59, %39, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.pcmcia_device* @comedi_to_pcmcia_dev(%struct.comedi_device*) #1

declare dso_local %struct.ni_board_struct* @ni_getboardtype(%struct.comedi_device*, %struct.pcmcia_device*) #1

declare dso_local i32 @comedi_pcmcia_enable(%struct.comedi_device*, i32) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @ni_alloc_private(%struct.comedi_device*) #1

declare dso_local i32 @ni_E_init(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
