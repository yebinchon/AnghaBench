; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_release_gpct_mite_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_release_gpct_mite_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mite_channel* }
%struct.mite_channel = type { i32 }

@NI_E_DMA_G0_G1_SEL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @ni_release_gpct_mite_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_release_gpct_mite_channel(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mite_channel*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  store %struct.ni_private* %10, %struct.ni_private** %5, align 8
  %11 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %12 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %16 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.mite_channel*, %struct.mite_channel** %23, align 8
  %25 = icmp ne %struct.mite_channel* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %2
  %27 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %28 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.mite_channel*, %struct.mite_channel** %35, align 8
  store %struct.mite_channel* %36, %struct.mite_channel** %7, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %38 = load i32, i32* @NI_E_DMA_G0_G1_SEL_REG, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @NI_E_DMA_G0_G1_SEL_MASK(i32 %39)
  %41 = call i32 @ni_set_bitfield(%struct.comedi_device* %37, i32 %38, i32 %40, i32 0)
  %42 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %43 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = call i32 @ni_tio_set_mite_channel(%struct.TYPE_4__* %49, i32* null)
  %51 = load %struct.mite_channel*, %struct.mite_channel** %7, align 8
  %52 = call i32 @mite_release_channel(%struct.mite_channel* %51)
  br label %53

53:                                               ; preds = %26, %2
  %54 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  %55 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %54, i32 0, i32 0
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ni_set_bitfield(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @NI_E_DMA_G0_G1_SEL_MASK(i32) #1

declare dso_local i32 @ni_tio_set_mite_channel(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @mite_release_channel(%struct.mite_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
