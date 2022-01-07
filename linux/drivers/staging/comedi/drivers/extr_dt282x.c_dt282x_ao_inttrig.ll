; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_inttrig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_inttrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.dt282x_private* }
%struct.dt282x_private = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@DT2821_SUPCSR_STRIG = common dso_local global i32 0, align 4
@DT2821_SUPCSR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @dt282x_ao_inttrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_ao_inttrig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dt282x_private*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.dt282x_private*, %struct.dt282x_private** %11, align 8
  store %struct.dt282x_private* %12, %struct.dt282x_private** %8, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.comedi_cmd* %16, %struct.comedi_cmd** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %57

25:                                               ; preds = %3
  %26 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %28 = call i32 @dt282x_ao_setup_dma(%struct.comedi_device* %26, %struct.comedi_subdevice* %27, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EPIPE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %57

33:                                               ; preds = %25
  %34 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %36 = call i32 @dt282x_ao_setup_dma(%struct.comedi_device* %34, %struct.comedi_subdevice* %35, i32 1)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EPIPE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %57

41:                                               ; preds = %33
  %42 = load %struct.dt282x_private*, %struct.dt282x_private** %8, align 8
  %43 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DT2821_SUPCSR_STRIG, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outw(i32 %46, i64 %51)
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %41, %38, %30, %22
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @dt282x_ao_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
