; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"not ready %dms after %s; giving up\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"not ready %dms after %s; waiting\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ready %dms after %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*, i32)* @pci_dev_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dev_wait(%struct.pci_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* @PCI_COMMAND, align 4
  %12 = call i32 @pci_read_config_dword(%struct.pci_dev* %10, i32 %11, i32* %9)
  br label %13

13:                                               ; preds = %37, %3
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @pci_warn(%struct.pci_dev* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24)
  %26 = load i32, i32* @ENOTTY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %55

28:                                               ; preds = %16
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 1000
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @pci_info(%struct.pci_dev* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @msleep(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %8, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = load i32, i32* @PCI_COMMAND, align 4
  %44 = call i32 @pci_read_config_dword(%struct.pci_dev* %42, i32 %43, i32* %9)
  br label %13

45:                                               ; preds = %13
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 1000
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @pci_info(%struct.pci_dev* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %51, i8* %52)
  br label %54

54:                                               ; preds = %48, %45
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %20
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, i32, i8*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
