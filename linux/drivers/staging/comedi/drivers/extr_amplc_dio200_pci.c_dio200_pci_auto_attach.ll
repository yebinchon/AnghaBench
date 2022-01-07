; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_pci.c_dio200_pci_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_pci.c_dio200_pci_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio200_board = type { i32, i64, i32 }
%struct.comedi_device = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.dio200_board* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@dio200_pci_boards = common dso_local global %struct.dio200_board* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: attach pci %s (%s)\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"error! cannot remap registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @dio200_pci_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_pci_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.dio200_board*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  store %struct.dio200_board* null, %struct.dio200_board** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.dio200_board*, %struct.dio200_board** @dio200_pci_boards, align 8
  %14 = call i64 @ARRAY_SIZE(%struct.dio200_board* %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.dio200_board*, %struct.dio200_board** @dio200_pci_boards, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %17, i64 %18
  store %struct.dio200_board* %19, %struct.dio200_board** %7, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.dio200_board*, %struct.dio200_board** %7, align 8
  %22 = icmp ne %struct.dio200_board* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %109

26:                                               ; preds = %20
  %27 = load %struct.dio200_board*, %struct.dio200_board** %7, align 8
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 5
  store %struct.dio200_board* %27, %struct.dio200_board** %29, align 8
  %30 = load %struct.dio200_board*, %struct.dio200_board** %7, align 8
  %31 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %44 = call i32 @pci_name(%struct.pci_dev* %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_info(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44, i32 %47)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = call i32 @comedi_pci_enable(%struct.comedi_device* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %26
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %109

55:                                               ; preds = %26
  %56 = load %struct.dio200_board*, %struct.dio200_board** %7, align 8
  %57 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %8, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @pci_resource_flags(%struct.pci_dev* %59, i32 %60)
  %62 = load i32, i32* @IORESOURCE_MEM, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %55
  %66 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @pci_ioremap_bar(%struct.pci_dev* %66, i32 %67)
  %69 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %109

82:                                               ; preds = %65
  br label %89

83:                                               ; preds = %55
  %84 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @pci_resource_start(%struct.pci_dev* %84, i32 %85)
  %87 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %82
  %90 = load %struct.dio200_board*, %struct.dio200_board** %7, align 8
  %91 = getelementptr inbounds %struct.dio200_board, %struct.dio200_board* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %96 = call i32 @dio200_pcie_board_setup(%struct.comedi_device* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %109

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %89
  %103 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %104 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IRQF_SHARED, align 4
  %108 = call i32 @amplc_dio200_common_attach(%struct.comedi_device* %103, i32 %106, i32 %107)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %102, %99, %75, %53, %23
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.dio200_board*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @dio200_pcie_board_setup(%struct.comedi_device*) #1

declare dso_local i32 @amplc_dio200_common_attach(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
