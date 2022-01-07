; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_request_mite_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_request_mite_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_660x_private* }
%struct.ni_660x_private = type { i32, i32, %struct.mite_ring*** }
%struct.mite_ring = type { i32 }
%struct.ni_gpct = type { i64, i64 }
%struct.mite_channel = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"failed to reserve mite dma channel for counter\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.ni_gpct*, i32)* @ni_660x_request_mite_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_request_mite_channel(%struct.comedi_device* %0, %struct.ni_gpct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.ni_gpct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_660x_private*, align 8
  %9 = alloca %struct.mite_ring*, align 8
  %10 = alloca %struct.mite_channel*, align 8
  %11 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.ni_gpct* %1, %struct.ni_gpct** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.ni_660x_private*, %struct.ni_660x_private** %13, align 8
  store %struct.ni_660x_private* %14, %struct.ni_660x_private** %8, align 8
  %15 = load %struct.ni_660x_private*, %struct.ni_660x_private** %8, align 8
  %16 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %15, i32 0, i32 0
  %17 = load i64, i64* %11, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ni_660x_private*, %struct.ni_660x_private** %8, align 8
  %20 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %19, i32 0, i32 2
  %21 = load %struct.mite_ring***, %struct.mite_ring**** %20, align 8
  %22 = load %struct.ni_gpct*, %struct.ni_gpct** %6, align 8
  %23 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.mite_ring**, %struct.mite_ring*** %21, i64 %24
  %26 = load %struct.mite_ring**, %struct.mite_ring*** %25, align 8
  %27 = load %struct.ni_gpct*, %struct.ni_gpct** %6, align 8
  %28 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.mite_ring*, %struct.mite_ring** %26, i64 %29
  %31 = load %struct.mite_ring*, %struct.mite_ring** %30, align 8
  store %struct.mite_ring* %31, %struct.mite_ring** %9, align 8
  %32 = load %struct.ni_660x_private*, %struct.ni_660x_private** %8, align 8
  %33 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mite_ring*, %struct.mite_ring** %9, align 8
  %36 = call %struct.mite_channel* @mite_request_channel(i32 %34, %struct.mite_ring* %35)
  store %struct.mite_channel* %36, %struct.mite_channel** %10, align 8
  %37 = load %struct.mite_channel*, %struct.mite_channel** %10, align 8
  %38 = icmp ne %struct.mite_channel* %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %3
  %40 = load %struct.ni_660x_private*, %struct.ni_660x_private** %8, align 8
  %41 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %40, i32 0, i32 0
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %67

50:                                               ; preds = %3
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.mite_channel*, %struct.mite_channel** %10, align 8
  %53 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ni_gpct*, %struct.ni_gpct** %6, align 8
  %55 = load %struct.mite_channel*, %struct.mite_channel** %10, align 8
  %56 = call i32 @ni_tio_set_mite_channel(%struct.ni_gpct* %54, %struct.mite_channel* %55)
  %57 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %58 = load %struct.mite_channel*, %struct.mite_channel** %10, align 8
  %59 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ni_gpct*, %struct.ni_gpct** %6, align 8
  %62 = call i32 @ni_660x_set_dma_channel(%struct.comedi_device* %57, i32 %60, %struct.ni_gpct* %61)
  %63 = load %struct.ni_660x_private*, %struct.ni_660x_private** %8, align 8
  %64 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %63, i32 0, i32 0
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %50, %39
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mite_channel* @mite_request_channel(i32, %struct.mite_ring*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ni_tio_set_mite_channel(%struct.ni_gpct*, %struct.mite_channel*) #1

declare dso_local i32 @ni_660x_set_dma_channel(%struct.comedi_device*, i32, %struct.ni_gpct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
