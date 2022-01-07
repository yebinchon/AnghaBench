; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_serial_pci_guess_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_serial_pci_guess_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pciserial_board = type { i32, i32 }

@PCI_CLASS_COMMUNICATION_MULTISERIAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCI_NUM_BAR_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@FL_BASE_BARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pciserial_board*)* @serial_pci_guess_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_pci_guess_board(%struct.pci_dev* %0, %struct.pciserial_board* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pciserial_board*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pciserial_board* %1, %struct.pciserial_board** %5, align 8
  store i32 -1, i32* %8, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 @serial_pci_is_class_communication(%struct.pci_dev* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %3, align 4
  br label %130

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  %22 = load i32, i32* @PCI_CLASS_COMMUNICATION_MULTISERIAL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %130

27:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %58, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @PCI_NUM_BAR_RESOURCES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @pci_resource_flags(%struct.pci_dev* %33, i32 %34)
  %36 = load i32, i32* @IORESOURCE_IO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %39
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @pci_resource_flags(%struct.pci_dev* %48, i32 %49)
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load i32, i32* %6, align 4
  %63 = icmp sle i32 %62, 1
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.pciserial_board*, %struct.pciserial_board** %5, align 8
  %70 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @pci_resource_len(%struct.pci_dev* %71, i32 %72)
  %74 = sdiv i32 %73, 8
  %75 = load %struct.pciserial_board*, %struct.pciserial_board** %5, align 8
  %76 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %3, align 4
  br label %130

77:                                               ; preds = %64, %61
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %112, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @PCI_NUM_BAR_RESOURCES, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %78
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @pci_resource_flags(%struct.pci_dev* %83, i32 %84)
  %86 = load i32, i32* @IORESOURCE_IO, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %82
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @pci_resource_len(%struct.pci_dev* %90, i32 %91)
  %93 = icmp eq i32 %92, 8
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %97, %94
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %108, %103
  br label %111

111:                                              ; preds = %110, %97, %89, %82
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %78

115:                                              ; preds = %78
  %116 = load i32, i32* %7, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @FL_BASE_BARS, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.pciserial_board*, %struct.pciserial_board** %5, align 8
  %123 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.pciserial_board*, %struct.pciserial_board** %5, align 8
  %126 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  store i32 0, i32* %3, align 4
  br label %130

127:                                              ; preds = %115
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %127, %118, %67, %24, %15
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @serial_pci_is_class_communication(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
