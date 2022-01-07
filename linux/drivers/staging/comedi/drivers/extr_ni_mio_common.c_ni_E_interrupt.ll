; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_E_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_E_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.ni_private*, %struct.comedi_subdevice*, %struct.comedi_subdevice* }
%struct.ni_private = type { i64, i32, i64, i64, i64 }
%struct.comedi_subdevice = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@NISTC_AI_STATUS1_REG = common dso_local global i32 0, align 4
@NISTC_AO_STATUS1_REG = common dso_local global i32 0, align 4
@NISTC_AI_STATUS1_INTA = common dso_local global i16 0, align 2
@NISTC_AO_STATUS1_INTB = common dso_local global i16 0, align 2
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ni_E_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_E_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 4
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %7, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 3
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %18, align 8
  store %struct.comedi_subdevice* %19, %struct.comedi_subdevice** %8, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %91

26:                                               ; preds = %2
  %27 = call i32 (...) @smp_mb()
  %28 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = load i32, i32* @NISTC_AI_STATUS1_REG, align 4
  %34 = call zeroext i16 @ni_stc_readw(%struct.comedi_device* %32, i32 %33)
  store i16 %34, i16* %9, align 2
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = load i32, i32* @NISTC_AO_STATUS1_REG, align 4
  %37 = call zeroext i16 @ni_stc_readw(%struct.comedi_device* %35, i32 %36)
  store i16 %37, i16* %10, align 2
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = load i16, i16* %9, align 2
  %40 = call i32 @ack_a_interrupt(%struct.comedi_device* %38, i16 zeroext %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = load i16, i16* %10, align 2
  %43 = call i32 @ack_b_interrupt(%struct.comedi_device* %41, i16 zeroext %42)
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %45 = icmp ne %struct.comedi_subdevice* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %26
  %47 = load i16, i16* %9, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* @NISTC_AI_STATUS1_INTA, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %56 = load i16, i16* %9, align 2
  %57 = call i32 @handle_a_interrupt(%struct.comedi_device* %54, %struct.comedi_subdevice* %55, i16 zeroext %56)
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %61 = call i32 @comedi_handle_events(%struct.comedi_device* %59, %struct.comedi_subdevice* %60)
  br label %62

62:                                               ; preds = %58, %26
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %64 = icmp ne %struct.comedi_subdevice* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i16, i16* %10, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* @NISTC_AO_STATUS1_INTB, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %75 = load i16, i16* %10, align 2
  %76 = call i32 @handle_b_interrupt(%struct.comedi_device* %73, %struct.comedi_subdevice* %74, i16 zeroext %75)
  br label %77

77:                                               ; preds = %72, %65
  %78 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %80 = call i32 @comedi_handle_events(%struct.comedi_device* %78, %struct.comedi_subdevice* %79)
  br label %81

81:                                               ; preds = %77, %62
  %82 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %83 = call i32 @handle_gpct_interrupt(%struct.comedi_device* %82, i32 0)
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = call i32 @handle_gpct_interrupt(%struct.comedi_device* %84, i32 1)
  %86 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %81, %24
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @ni_stc_readw(%struct.comedi_device*, i32) #1

declare dso_local i32 @ack_a_interrupt(%struct.comedi_device*, i16 zeroext) #1

declare dso_local i32 @ack_b_interrupt(%struct.comedi_device*, i16 zeroext) #1

declare dso_local i32 @handle_a_interrupt(%struct.comedi_device*, %struct.comedi_subdevice*, i16 zeroext) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @handle_b_interrupt(%struct.comedi_device*, %struct.comedi_subdevice*, i16 zeroext) #1

declare dso_local i32 @handle_gpct_interrupt(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
