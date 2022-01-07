; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcidio.c_nidio_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcidio.c_nidio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i64, %struct.nidio96_private* }
%struct.nidio96_private = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @nidio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nidio_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.nidio96_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 2
  %6 = load %struct.nidio96_private*, %struct.nidio96_private** %5, align 8
  store %struct.nidio96_private* %6, %struct.nidio96_private** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = call i32 @free_irq(i64 %14, %struct.comedi_device* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.nidio96_private*, %struct.nidio96_private** %3, align 8
  %19 = icmp ne %struct.nidio96_private* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.nidio96_private*, %struct.nidio96_private** %3, align 8
  %22 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.nidio96_private*, %struct.nidio96_private** %3, align 8
  %27 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @mite_free_ring(i32* %28)
  %30 = load %struct.nidio96_private*, %struct.nidio96_private** %3, align 8
  %31 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.nidio96_private*, %struct.nidio96_private** %3, align 8
  %34 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mite_detach(i32 %35)
  br label %37

37:                                               ; preds = %32, %17
  %38 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @iounmap(i64 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %49 = call i32 @comedi_pci_disable(%struct.comedi_device* %48)
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @mite_free_ring(i32*) #1

declare dso_local i32 @mite_detach(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @comedi_pci_disable(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
