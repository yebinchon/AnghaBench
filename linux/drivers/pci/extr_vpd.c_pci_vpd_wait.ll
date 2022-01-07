; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_vpd* }
%struct.pci_vpd = type { i32, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@PCI_VPD_ADDR = common dso_local global i64 0, align 8
@PCI_VPD_ADDR_F = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [114 x i8] c"VPD access failed.  This is likely a firmware bug on this device.  Contact the card vendor for a firmware update\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pci_vpd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vpd_wait(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_vpd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load %struct.pci_vpd*, %struct.pci_vpd** %10, align 8
  store %struct.pci_vpd* %11, %struct.pci_vpd** %4, align 8
  %12 = load i64, i64* @jiffies, align 8
  %13 = call i64 @msecs_to_jiffies(i32 125)
  %14 = add i64 %12, %13
  store i64 %14, i64* %5, align 8
  store i64 16, i64* %6, align 8
  %15 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %16 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %66, %20
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %24 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCI_VPD_ADDR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @pci_user_read_config_word(%struct.pci_dev* %22, i64 %27, i32* %7)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %72

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %38 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.pci_vpd*, %struct.pci_vpd** %4, align 8
  %43 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  store i32 0, i32* %2, align 4
  br label %72

44:                                               ; preds = %33
  %45 = load i32, i32* @current, align 4
  %46 = call i64 @fatal_signal_pending(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINTR, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %72

51:                                               ; preds = %44
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @time_after(i64 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %67

57:                                               ; preds = %51
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @usleep_range(i32 10, i64 %58)
  %60 = load i64, i64* %6, align 8
  %61 = icmp ult i64 %60, 1024
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i64, i64* %6, align 8
  %64 = mul i64 %63, 2
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65
  br i1 true, label %21, label %67

67:                                               ; preds = %66, %56
  %68 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %69 = call i32 @pci_warn(%struct.pci_dev* %68, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @ETIMEDOUT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %48, %41, %31, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pci_user_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i64) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
