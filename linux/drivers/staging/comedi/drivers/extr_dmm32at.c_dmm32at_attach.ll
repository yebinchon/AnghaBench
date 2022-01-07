; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.comedi_subdevice*, i64, i32, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [24 x i8] c"board detection failed\0A\00", align 1
@dmm32at_isr = common dso_local global i32 0, align 4
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@SDF_DIFF = common dso_local global i32 0, align 4
@dmm32at_airanges = common dso_local global i32 0, align 4
@dmm32at_ai_insn_read = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@dmm32at_ai_cmd = common dso_local global i32 0, align 4
@dmm32at_ai_cmdtest = common dso_local global i32 0, align 4
@dmm32at_ai_cancel = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@dmm32at_aoranges = common dso_local global i32 0, align 4
@dmm32at_ao_insn_write = common dso_local global i32 0, align 4
@dmm32at_8255_io = common dso_local global i32 0, align 4
@DMM32AT_8255_IOBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @dmm32at_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @comedi_request_region(%struct.comedi_device* %8, i64 %13, i32 16)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %154

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = call i32 @dmm32at_reset(%struct.comedi_device* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %154

30:                                               ; preds = %19
  %31 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @dmm32at_isr, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %48 = call i32 @request_irq(i64 %42, i32 %43, i32 0, i32 %46, %struct.comedi_device* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %37
  %52 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %53 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %51, %37
  br label %60

60:                                               ; preds = %59, %30
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %61, i32 3)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %154

67:                                               ; preds = %60
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %69, align 8
  %71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i64 0
  store %struct.comedi_subdevice* %71, %struct.comedi_subdevice** %6, align 8
  %72 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %74 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @SDF_READABLE, align 4
  %76 = load i32, i32* @SDF_GROUND, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SDF_DIFF, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 1
  store i32 32, i32* %83, align 4
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %85 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i32 0, i32 2
  store i32 65535, i32* %85, align 8
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 5
  store i32* @dmm32at_airanges, i32** %87, align 8
  %88 = load i32, i32* @dmm32at_ai_insn_read, align 4
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 8
  %91 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %67
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %97 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 1
  store %struct.comedi_subdevice* %96, %struct.comedi_subdevice** %98, align 8
  %99 = load i32, i32* @SDF_CMD_READ, align 4
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %101 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %105 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @dmm32at_ai_cmd, align 4
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @dmm32at_ai_cmdtest, align 4
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @dmm32at_ai_cancel, align 4
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %117 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %95, %67
  %119 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %120 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %119, i32 0, i32 0
  %121 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %120, align 8
  %122 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %121, i64 1
  store %struct.comedi_subdevice* %122, %struct.comedi_subdevice** %6, align 8
  %123 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %125 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @SDF_WRITABLE, align 4
  %127 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %128 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %130 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %129, i32 0, i32 1
  store i32 4, i32* %130, align 4
  %131 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %132 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %131, i32 0, i32 2
  store i32 4095, i32* %132, align 8
  %133 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %134 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %133, i32 0, i32 5
  store i32* @dmm32at_aoranges, i32** %134, align 8
  %135 = load i32, i32* @dmm32at_ao_insn_write, align 4
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %137 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %139 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %118
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %154

144:                                              ; preds = %118
  %145 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %146 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %145, i32 0, i32 0
  %147 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %146, align 8
  %148 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %147, i64 2
  store %struct.comedi_subdevice* %148, %struct.comedi_subdevice** %6, align 8
  %149 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %150 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %151 = load i32, i32* @dmm32at_8255_io, align 4
  %152 = load i32, i32* @DMM32AT_8255_IOBASE, align 4
  %153 = call i32 @subdev_8255_init(%struct.comedi_device* %149, %struct.comedi_subdevice* %150, i32 %151, i32 %152)
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %144, %142, %65, %24, %17
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i64, i32) #1

declare dso_local i32 @dmm32at_reset(%struct.comedi_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
