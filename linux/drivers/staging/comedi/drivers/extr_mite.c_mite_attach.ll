; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite = type { i64, %struct.TYPE_2__*, %struct.pci_dev*, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.mite* }
%struct.pci_dev = type { i32 }
%struct.comedi_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_MITE_DMA_CHANNELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mite* @mite_attach(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mite*, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.mite*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mite* @kzalloc(i32 32, i32 %12)
  store %struct.mite* %13, %struct.mite** %7, align 8
  %14 = load %struct.mite*, %struct.mite** %7, align 8
  %15 = icmp ne %struct.mite* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.mite* null, %struct.mite** %3, align 8
  br label %77

17:                                               ; preds = %2
  %18 = load %struct.mite*, %struct.mite** %7, align 8
  %19 = getelementptr inbounds %struct.mite, %struct.mite* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = load %struct.mite*, %struct.mite** %7, align 8
  %23 = getelementptr inbounds %struct.mite, %struct.mite* %22, i32 0, i32 2
  store %struct.pci_dev* %21, %struct.pci_dev** %23, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %52, %17
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MAX_MITE_DMA_CHANNELS, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load %struct.mite*, %struct.mite** %7, align 8
  %30 = load %struct.mite*, %struct.mite** %7, align 8
  %31 = getelementptr inbounds %struct.mite, %struct.mite* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store %struct.mite* %29, %struct.mite** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.mite*, %struct.mite** %7, align 8
  %39 = getelementptr inbounds %struct.mite, %struct.mite* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 8
  %45 = load %struct.mite*, %struct.mite** %7, align 8
  %46 = getelementptr inbounds %struct.mite, %struct.mite* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %24

55:                                               ; preds = %24
  %56 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %57 = load %struct.mite*, %struct.mite** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @mite_setup(%struct.comedi_device* %56, %struct.mite* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.mite*, %struct.mite** %7, align 8
  %64 = getelementptr inbounds %struct.mite, %struct.mite* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.mite*, %struct.mite** %7, align 8
  %69 = getelementptr inbounds %struct.mite, %struct.mite* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @iounmap(i64 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.mite*, %struct.mite** %7, align 8
  %74 = call i32 @kfree(%struct.mite* %73)
  store %struct.mite* null, %struct.mite** %3, align 8
  br label %77

75:                                               ; preds = %55
  %76 = load %struct.mite*, %struct.mite** %7, align 8
  store %struct.mite* %76, %struct.mite** %3, align 8
  br label %77

77:                                               ; preds = %75, %72, %16
  %78 = load %struct.mite*, %struct.mite** %3, align 8
  ret %struct.mite* %78
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local %struct.mite* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mite_setup(%struct.comedi_device*, %struct.mite*, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.mite*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
