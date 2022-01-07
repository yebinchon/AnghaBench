; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.comedi_devconfig = type { i32* }

@c6xdigio_pnp_driver = common dso_local global i32 0, align 4
@COMEDI_SUBD_PWM = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_unknown = common dso_local global i32 0, align 4
@c6xdigio_pwm_insn_write = common dso_local global i32 0, align 4
@c6xdigio_pwm_insn_read = common dso_local global i32 0, align 4
@COMEDI_SUBD_COUNTER = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_LSAMPL = common dso_local global i32 0, align 4
@c6xdigio_encoder_insn_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @c6xdigio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c6xdigio_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
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
  %14 = call i32 @comedi_request_region(%struct.comedi_device* %8, i32 %13, i32 3)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %20, i32 2)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %73

26:                                               ; preds = %19
  %27 = call i32 @pnp_register_driver(i32* @c6xdigio_pnp_driver)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %29, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i64 0
  store %struct.comedi_subdevice* %31, %struct.comedi_subdevice** %6, align 8
  %32 = load i32, i32* @COMEDI_SUBD_PWM, align 4
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @SDF_WRITABLE, align 4
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 1
  store i32 2, i32* %39, align 4
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 2
  store i32 500, i32* %41, align 8
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 4
  store i32* @range_unknown, i32** %43, align 8
  %44 = load i32, i32* @c6xdigio_pwm_insn_write, align 4
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @c6xdigio_pwm_insn_read, align 4
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %51, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i64 1
  store %struct.comedi_subdevice* %53, %struct.comedi_subdevice** %6, align 8
  %54 = load i32, i32* @COMEDI_SUBD_COUNTER, align 4
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @SDF_READABLE, align 4
  %58 = load i32, i32* @SDF_LSAMPL, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 1
  store i32 2, i32* %63, align 4
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 2
  store i32 16777215, i32* %65, align 8
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 4
  store i32* @range_unknown, i32** %67, align 8
  %68 = load i32, i32* @c6xdigio_encoder_insn_read, align 4
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = call i32 @c6xdigio_init(%struct.comedi_device* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %26, %24, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @pnp_register_driver(i32*) #1

declare dso_local i32 @c6xdigio_init(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
