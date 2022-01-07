; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_read_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_read_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.pci1710_private*, %struct.boardtype* }
%struct.pci1710_private = type { i32* }
%struct.boardtype = type { i32 }
%struct.comedi_subdevice = type { i32 }

@PCI171X_AD_DATA_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"A/D data dropout: received from channel %d, expected %d\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32*)* @pci1710_ai_read_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1710_ai_read_sample(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.boardtype*, align 8
  %11 = alloca %struct.pci1710_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 3
  %16 = load %struct.boardtype*, %struct.boardtype** %15, align 8
  store %struct.boardtype* %16, %struct.boardtype** %10, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 2
  %19 = load %struct.pci1710_private*, %struct.pci1710_private** %18, align 8
  store %struct.pci1710_private* %19, %struct.pci1710_private** %11, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCI171X_AD_DATA_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @inw(i64 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.boardtype*, %struct.boardtype** %10, align 8
  %27 = getelementptr inbounds %struct.boardtype, %struct.boardtype* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = lshr i32 %31, 12
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.pci1710_private*, %struct.pci1710_private** %11, align 8
  %35 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %33, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %30
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.pci1710_private*, %struct.pci1710_private** %11, align 8
  %48 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %53)
  %55 = load i32, i32* @ENODATA, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %30
  br label %58

58:                                               ; preds = %57, %4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %58, %42
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
