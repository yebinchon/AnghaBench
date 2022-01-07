; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci236.c_pci236_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci236.c_pci236_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.pci_dev = type { i32 }
%struct.pc236_private = type { i8* }

@.str = private unnamed_addr constant [29 x i8] c"amplc_pci236: attach pci %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@pc236_pci_board = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @pci236_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci236_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pc236_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = call i32 @pci_name(%struct.pci_dev* %15)
  %17 = call i32 @dev_info(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = call %struct.pc236_private* @comedi_alloc_devpriv(%struct.comedi_device* %18, i32 8)
  store %struct.pc236_private* %19, %struct.pc236_private** %7, align 8
  %20 = load %struct.pc236_private*, %struct.pc236_private** %7, align 8
  %21 = icmp ne %struct.pc236_private* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %2
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 1
  store %struct.TYPE_2__* @pc236_pci_board, %struct.TYPE_2__** %27, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pc236_pci_board, i32 0, i32 0), align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = call i32 @comedi_pci_enable(%struct.comedi_device* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %25
  %38 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %39 = call i8* @pci_resource_start(%struct.pci_dev* %38, i32 1)
  %40 = load %struct.pc236_private*, %struct.pc236_private** %7, align 8
  %41 = getelementptr inbounds %struct.pc236_private, %struct.pc236_private* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %43 = call i8* @pci_resource_start(%struct.pci_dev* %42, i32 2)
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* %8, align 8
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IRQF_SHARED, align 4
  %51 = call i32 @amplc_pc236_common_attach(%struct.comedi_device* %45, i64 %46, i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %37, %35, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.pc236_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @amplc_pc236_common_attach(%struct.comedi_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
