; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_release_mite_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_release_mite_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_660x_private* }
%struct.ni_660x_private = type { i32 }
%struct.ni_gpct = type { %struct.mite_channel* }
%struct.mite_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.ni_gpct*)* @ni_660x_release_mite_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_660x_release_mite_channel(%struct.comedi_device* %0, %struct.ni_gpct* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.ni_gpct*, align 8
  %5 = alloca %struct.ni_660x_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mite_channel*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.ni_gpct* %1, %struct.ni_gpct** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.ni_660x_private*, %struct.ni_660x_private** %9, align 8
  store %struct.ni_660x_private* %10, %struct.ni_660x_private** %5, align 8
  %11 = load %struct.ni_660x_private*, %struct.ni_660x_private** %5, align 8
  %12 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %16 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %15, i32 0, i32 0
  %17 = load %struct.mite_channel*, %struct.mite_channel** %16, align 8
  %18 = icmp ne %struct.mite_channel* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %21 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %20, i32 0, i32 0
  %22 = load %struct.mite_channel*, %struct.mite_channel** %21, align 8
  store %struct.mite_channel* %22, %struct.mite_channel** %7, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %24 = load %struct.mite_channel*, %struct.mite_channel** %7, align 8
  %25 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %28 = call i32 @ni_660x_unset_dma_channel(%struct.comedi_device* %23, i32 %26, %struct.ni_gpct* %27)
  %29 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %30 = call i32 @ni_tio_set_mite_channel(%struct.ni_gpct* %29, i32* null)
  %31 = load %struct.mite_channel*, %struct.mite_channel** %7, align 8
  %32 = call i32 @mite_release_channel(%struct.mite_channel* %31)
  br label %33

33:                                               ; preds = %19, %2
  %34 = load %struct.ni_660x_private*, %struct.ni_660x_private** %5, align 8
  %35 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %34, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ni_660x_unset_dma_channel(%struct.comedi_device*, i32, %struct.ni_gpct*) #1

declare dso_local i32 @ni_tio_set_mite_channel(%struct.ni_gpct*, i32*) #1

declare dso_local i32 @mite_release_channel(%struct.mite_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
