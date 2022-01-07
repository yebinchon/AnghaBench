; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_aio_iiro_16.c_aio_iiro_16_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_aio_iiro_16.c_aio_iiro_16_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, i64, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.comedi_devconfig = type { i32* }

@aio_iiro_16_cos = common dso_local global i32 0, align 4
@COMEDI_SUBD_DO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@aio_iiro_16_do_insn_bits = common dso_local global i32 0, align 4
@AIO_IIRO_16_RELAY_0_7 = common dso_local global i64 0, align 8
@AIO_IIRO_16_RELAY_8_15 = common dso_local global i64 0, align 8
@COMEDI_SUBD_DI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@aio_iiro_16_di_insn_bits = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@SDF_LSAMPL = common dso_local global i32 0, align 4
@aio_iiro_16_cos_cmdtest = common dso_local global i32 0, align 4
@aio_iiro_16_cos_cmd = common dso_local global i32 0, align 4
@aio_iiro_16_cos_cancel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @aio_iiro_16_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_iiro_16_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
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
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @comedi_request_region(%struct.comedi_device* %8, i32 %13, i32 8)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %142

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = call i32 @aio_iiro_enable_irq(%struct.comedi_device* %20, i32 0)
  %22 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %27, 56572
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %19
  %31 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @aio_iiro_16_cos, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = call i32 @request_irq(i32 %35, i32 %36, i32 0, i32 %39, %struct.comedi_device* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %30
  %45 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %46 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %44, %30
  br label %53

53:                                               ; preds = %52, %19
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %54, i32 2)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %142

60:                                               ; preds = %53
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 2
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %62, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i64 0
  store %struct.comedi_subdevice* %64, %struct.comedi_subdevice** %6, align 8
  %65 = load i32, i32* @COMEDI_SUBD_DO, align 4
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @SDF_WRITABLE, align 4
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 1
  store i32 16, i32* %72, align 4
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %74 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 9
  store i32* @range_digital, i32** %76, align 8
  %77 = load i32, i32* @aio_iiro_16_do_insn_bits, align 4
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  %80 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AIO_IIRO_16_RELAY_0_7, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @inb(i64 %84)
  %86 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AIO_IIRO_16_RELAY_8_15, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @inb(i64 %90)
  %92 = shl i32 %91, 8
  %93 = or i32 %85, %92
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %95 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %97 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %96, i32 0, i32 2
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %97, align 8
  %99 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %98, i64 1
  store %struct.comedi_subdevice* %99, %struct.comedi_subdevice** %6, align 8
  %100 = load i32, i32* @COMEDI_SUBD_DI, align 4
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @SDF_READABLE, align 4
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %105 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %107 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %106, i32 0, i32 1
  store i32 16, i32* %107, align 4
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %109 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %108, i32 0, i32 2
  store i32 1, i32* %109, align 8
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 9
  store i32* @range_digital, i32** %111, align 8
  %112 = load i32, i32* @aio_iiro_16_di_insn_bits, align 4
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 8
  %115 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %116 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %60
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %121 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %122 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 1
  store %struct.comedi_subdevice* %120, %struct.comedi_subdevice** %122, align 8
  %123 = load i32, i32* @SDF_CMD_READ, align 4
  %124 = load i32, i32* @SDF_LSAMPL, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %127 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %131 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %130, i32 0, i32 4
  store i32 1, i32* %131, align 8
  %132 = load i32, i32* @aio_iiro_16_cos_cmdtest, align 4
  %133 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %134 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @aio_iiro_16_cos_cmd, align 4
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %137 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @aio_iiro_16_cos_cancel, align 4
  %139 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %140 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %119, %60
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %58, %17
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @aio_iiro_enable_irq(%struct.comedi_device*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
