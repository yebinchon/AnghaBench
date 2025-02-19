; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_inttrig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_inttrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private* }
%struct.pcidas64_private = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i64 0, align 8
@DAC_START_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ao_inttrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ao_inttrig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcidas64_private*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.pcidas64_private*, %struct.pcidas64_private** %12, align 8
  store %struct.pcidas64_private* %13, %struct.pcidas64_private** %8, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.comedi_cmd* %17, %struct.comedi_cmd** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %56

26:                                               ; preds = %3
  %27 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %29 = call i32 @prep_ao_dma(%struct.comedi_device* %27, %struct.comedi_cmd* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EPIPE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %56

35:                                               ; preds = %26
  %36 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %38 = call i32 @set_dac_control0_reg(%struct.comedi_device* %36, %struct.comedi_cmd* %37)
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TRIG_INT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  %46 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DAC_START_REG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writew(i32 0, i64 %49)
  br label %51

51:                                               ; preds = %44, %35
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %32, %23
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @prep_ao_dma(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @set_dac_control0_reg(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
