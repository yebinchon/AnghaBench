; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_input_inttrig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_input_inttrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__*, %struct.ni_gpct* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }
%struct.ni_gpct = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NI_GPCT_ARM_IMMEDIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ni_tio_input_inttrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_input_inttrig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_gpct*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 1
  %14 = load %struct.ni_gpct*, %struct.ni_gpct** %13, align 8
  store %struct.ni_gpct* %14, %struct.ni_gpct** %8, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %3
  %28 = load %struct.ni_gpct*, %struct.ni_gpct** %8, align 8
  %29 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %28, i32 0, i32 0
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.ni_gpct*, %struct.ni_gpct** %8, align 8
  %33 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.ni_gpct*, %struct.ni_gpct** %8, align 8
  %38 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @mite_dma_arm(i64 %39)
  br label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.ni_gpct*, %struct.ni_gpct** %8, align 8
  %46 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %45, i32 0, i32 0
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %62

53:                                               ; preds = %44
  %54 = load %struct.ni_gpct*, %struct.ni_gpct** %8, align 8
  %55 = load i32, i32* @NI_GPCT_ARM_IMMEDIATE, align 4
  %56 = call i32 @ni_tio_arm(%struct.ni_gpct* %54, i32 1, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %51, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mite_dma_arm(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ni_tio_arm(%struct.ni_gpct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
