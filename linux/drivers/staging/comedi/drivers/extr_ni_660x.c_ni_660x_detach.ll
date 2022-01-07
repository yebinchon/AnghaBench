; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i64, %struct.ni_660x_private* }
%struct.ni_660x_private = type { i32, i32 }

@NI660X_GLOBAL_INT_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @ni_660x_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_660x_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_660x_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 2
  %6 = load %struct.ni_660x_private*, %struct.ni_660x_private** %5, align 8
  store %struct.ni_660x_private* %6, %struct.ni_660x_private** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = load i32, i32* @NI660X_GLOBAL_INT_CFG, align 4
  %14 = call i32 @ni_660x_write(%struct.comedi_device* %12, i32 0, i32 0, i32 %13)
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = call i32 @free_irq(i64 %17, %struct.comedi_device* %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.ni_660x_private*, %struct.ni_660x_private** %3, align 8
  %22 = icmp ne %struct.ni_660x_private* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.ni_660x_private*, %struct.ni_660x_private** %3, align 8
  %25 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ni_gpct_device_destroy(i32 %26)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = call i32 @ni_660x_free_mite_rings(%struct.comedi_device* %28)
  %30 = load %struct.ni_660x_private*, %struct.ni_660x_private** %3, align 8
  %31 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mite_detach(i32 %32)
  br label %34

34:                                               ; preds = %23, %20
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @iounmap(i64 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %46 = call i32 @comedi_pci_disable(%struct.comedi_device* %45)
  ret void
}

declare dso_local i32 @ni_660x_write(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @ni_gpct_device_destroy(i32) #1

declare dso_local i32 @ni_660x_free_mite_rings(%struct.comedi_device*) #1

declare dso_local i32 @mite_detach(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @comedi_pci_disable(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
