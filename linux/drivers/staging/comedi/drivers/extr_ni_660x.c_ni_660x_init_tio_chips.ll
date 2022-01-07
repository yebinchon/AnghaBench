; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_init_tio_chips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_init_tio_chips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_660x_private* }
%struct.ni_660x_private = type { i32* }

@NI660X_STC_DIO_CONTROL = common dso_local global i32 0, align 4
@NI660X_MAX_DMA_CHANNEL = common dso_local global i32 0, align 4
@NI660X_DMA_CFG = common dso_local global i32 0, align 4
@NI660X_NUM_PFI_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @ni_660x_init_tio_chips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_660x_init_tio_chips(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_660x_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.ni_660x_private*, %struct.ni_660x_private** %9, align 8
  store %struct.ni_660x_private* %10, %struct.ni_660x_private** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = load i32, i32* @NI660X_STC_DIO_CONTROL, align 4
  %13 = call i32 @ni_660x_write(%struct.comedi_device* %11, i32 0, i32 0, i32 %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %69, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = load %struct.ni_660x_private*, %struct.ni_660x_private** %5, align 8
  %20 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 0, i32* %24, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %40, %18
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NI660X_MAX_DMA_CHANNEL, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @NI660X_DMA_CFG_SEL_NONE(i32 %30)
  %32 = load %struct.ni_660x_private*, %struct.ni_660x_private** %5, align 8
  %33 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %31
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.ni_660x_private*, %struct.ni_660x_private** %5, align 8
  %47 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NI660X_DMA_CFG, align 4
  %54 = call i32 @ni_660x_write(%struct.comedi_device* %44, i32 %45, i32 %52, i32 %53)
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %65, %43
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @NI660X_NUM_PFI_CHANNELS, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @NI660X_IO_CFG(i32 %62)
  %64 = call i32 @ni_660x_write(%struct.comedi_device* %60, i32 %61, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %55

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %14

72:                                               ; preds = %14
  ret void
}

declare dso_local i32 @ni_660x_write(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @NI660X_DMA_CFG_SEL_NONE(i32) #1

declare dso_local i32 @NI660X_IO_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
