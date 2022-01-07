; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_override_cardtype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_override_cardtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@TYPE_PCI1753 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"adv_pci_dio\00", align 1
@TYPE_PCI1753E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*, i64)* @pci_dio_override_cardtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pci_dio_override_cardtype(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @TYPE_PCI1753, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %3, align 8
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i64 @pci_enable_device(%struct.pci_dev* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %3, align 8
  br label %50

18:                                               ; preds = %12
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i64 @pci_request_region(%struct.pci_dev* %19, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_resource_start(%struct.pci_dev* %23, i32 2)
  %25 = add nsw i32 %24, 53
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @outb(i32 5, i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @inb(i64 %29)
  %31 = and i32 %30, 7
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @outb(i32 2, i64 %34)
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @inb(i64 %36)
  %38 = and i32 %37, 7
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @TYPE_PCI1753E, align 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %40, %33
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i32 @pci_release_region(%struct.pci_dev* %44, i32 2)
  br label %46

46:                                               ; preds = %43, %18
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = call i32 @pci_disable_device(%struct.pci_dev* %47)
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %46, %16, %10
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
