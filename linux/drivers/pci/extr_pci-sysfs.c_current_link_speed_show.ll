; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-sysfs.c_current_link_speed_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-sysfs.c_current_link_speed_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_CLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"32 GT/s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"16 GT/s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"8 GT/s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"5 GT/s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"2.5 GT/s\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Unknown speed\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @current_link_speed_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @current_link_speed_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.pci_dev* @to_pci_dev(%struct.device* %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %8, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %15 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %16 = call i32 @pcie_capability_read_word(%struct.pci_dev* %14, i32 %15, i32* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PCI_EXP_LNKSTA_CLS, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %31 [
    i32 130, label %26
    i32 132, label %27
    i32 128, label %28
    i32 129, label %29
    i32 131, label %30
  ]

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %32

27:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %32

28:                                               ; preds = %22
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %32

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %32

30:                                               ; preds = %22
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %32

31:                                               ; preds = %22
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %26
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
