; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das08_pci.c_das08_pci_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das08_pci.c_das08_pci_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32* }
%struct.pci_dev = type { i32 }
%struct.das08_private_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@das08_pci_boards = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @das08_pci_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das08_pci_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.das08_private_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call %struct.das08_private_struct* @comedi_alloc_devpriv(%struct.comedi_device* %11, i32 4)
  store %struct.das08_private_struct* %12, %struct.das08_private_struct** %7, align 8
  %13 = load %struct.das08_private_struct*, %struct.das08_private_struct** %7, align 8
  %14 = icmp ne %struct.das08_private_struct* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load i32*, i32** @das08_pci_boards, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = call i32 @comedi_pci_enable(%struct.comedi_device* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %18
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = call i32 @pci_resource_start(%struct.pci_dev* %30, i32 2)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @das08_common_attach(%struct.comedi_device* %34, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %27, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local %struct.das08_private_struct* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @das08_common_attach(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
