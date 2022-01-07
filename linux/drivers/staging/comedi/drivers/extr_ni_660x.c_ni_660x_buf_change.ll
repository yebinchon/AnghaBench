; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_buf_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_buf_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_660x_private* }
%struct.ni_660x_private = type { %struct.mite_ring*** }
%struct.mite_ring = type { i32 }
%struct.comedi_subdevice = type { %struct.ni_gpct* }
%struct.ni_gpct = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_660x_buf_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_buf_change(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.ni_660x_private*, align 8
  %7 = alloca %struct.ni_gpct*, align 8
  %8 = alloca %struct.mite_ring*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.ni_660x_private*, %struct.ni_660x_private** %11, align 8
  store %struct.ni_660x_private* %12, %struct.ni_660x_private** %6, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.ni_gpct*, %struct.ni_gpct** %14, align 8
  store %struct.ni_gpct* %15, %struct.ni_gpct** %7, align 8
  %16 = load %struct.ni_660x_private*, %struct.ni_660x_private** %6, align 8
  %17 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %16, i32 0, i32 0
  %18 = load %struct.mite_ring***, %struct.mite_ring**** %17, align 8
  %19 = load %struct.ni_gpct*, %struct.ni_gpct** %7, align 8
  %20 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.mite_ring**, %struct.mite_ring*** %18, i64 %21
  %23 = load %struct.mite_ring**, %struct.mite_ring*** %22, align 8
  %24 = load %struct.ni_gpct*, %struct.ni_gpct** %7, align 8
  %25 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.mite_ring*, %struct.mite_ring** %23, i64 %26
  %28 = load %struct.mite_ring*, %struct.mite_ring** %27, align 8
  store %struct.mite_ring* %28, %struct.mite_ring** %8, align 8
  %29 = load %struct.mite_ring*, %struct.mite_ring** %8, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %31 = call i32 @mite_buf_change(%struct.mite_ring* %29, %struct.comedi_subdevice* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %34
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @mite_buf_change(%struct.mite_ring*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
