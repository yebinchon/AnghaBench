; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_pci.c_labpc_pci_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_pci.c_labpc_pci_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.labpc_boardinfo = type { i32 }
%struct.comedi_device = type { i32, i32, %struct.labpc_boardinfo* }
%struct.pci_dev = type { i32 }

@labpc_pci_boards = common dso_local global %struct.labpc_boardinfo* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @labpc_pci_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_pci_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.labpc_boardinfo*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  store %struct.labpc_boardinfo* null, %struct.labpc_boardinfo** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** @labpc_pci_boards, align 8
  %13 = call i64 @ARRAY_SIZE(%struct.labpc_boardinfo* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** @labpc_pci_boards, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.labpc_boardinfo, %struct.labpc_boardinfo* %16, i64 %17
  store %struct.labpc_boardinfo* %18, %struct.labpc_boardinfo** %7, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %7, align 8
  %21 = icmp ne %struct.labpc_boardinfo* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %66

25:                                               ; preds = %19
  %26 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %7, align 8
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 2
  store %struct.labpc_boardinfo* %26, %struct.labpc_boardinfo** %28, align 8
  %29 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %7, align 8
  %30 = getelementptr inbounds %struct.labpc_boardinfo, %struct.labpc_boardinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = call i32 @comedi_pci_enable(%struct.comedi_device* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %25
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = call i32 @labpc_pci_mite_init(%struct.pci_dev* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %66

47:                                               ; preds = %40
  %48 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %49 = call i32 @pci_ioremap_bar(%struct.pci_dev* %48, i32 1)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %66

59:                                               ; preds = %47
  %60 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IRQF_SHARED, align 4
  %65 = call i32 @labpc_common_attach(%struct.comedi_device* %60, i32 %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %56, %45, %38, %22
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.labpc_boardinfo*) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i32 @labpc_pci_mite_init(%struct.pci_dev*) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @labpc_common_attach(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
