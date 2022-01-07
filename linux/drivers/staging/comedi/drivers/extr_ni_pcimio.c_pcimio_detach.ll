; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcimio.c_pcimio_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcimio.c_pcimio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i64, %struct.ni_private* }
%struct.ni_private = type { i32, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pcimio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcimio_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 2
  %6 = load %struct.ni_private*, %struct.ni_private** %5, align 8
  store %struct.ni_private* %6, %struct.ni_private** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = call i32 @mio_common_detach(%struct.comedi_device* %7)
  %9 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = call i32 @free_irq(i64 %16, %struct.comedi_device* %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %21 = icmp ne %struct.ni_private* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %24 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mite_free_ring(i32 %25)
  %27 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %28 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mite_free_ring(i32 %29)
  %31 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %32 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mite_free_ring(i32 %33)
  %35 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %36 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mite_free_ring(i32 %39)
  %41 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %42 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mite_free_ring(i32 %45)
  %47 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %48 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mite_detach(i32 %49)
  br label %51

51:                                               ; preds = %22, %19
  %52 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @iounmap(i64 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %63 = call i32 @comedi_pci_disable(%struct.comedi_device* %62)
  ret void
}

declare dso_local i32 @mio_common_detach(%struct.comedi_device*) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @mite_free_ring(i32) #1

declare dso_local i32 @mite_detach(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @comedi_pci_disable(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
