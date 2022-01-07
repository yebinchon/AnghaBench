; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sysfs.c_companion_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sysfs.c_companion_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ehci_hcd = type { i32, i32 }

@PORT_OWNER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @companion_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @companion_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ehci_hcd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @dev_get_drvdata(%struct.device* %13)
  %15 = call %struct.ehci_hcd* @hcd_to_ehci(i32 %14)
  store %struct.ehci_hcd* %15, %struct.ehci_hcd** %10, align 8
  %16 = load i32, i32* @PORT_OWNER, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %63

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %11, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.ehci_hcd*, %struct.ehci_hcd** %10, align 8
  %35 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @HCS_N_PORTS(i32 %36)
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %29
  %40 = load i64, i64* @ENOENT, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %63

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.ehci_hcd*, %struct.ehci_hcd** %10, align 8
  %50 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %49, i32 0, i32 0
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  br label %57

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.ehci_hcd*, %struct.ehci_hcd** %10, align 8
  %55 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %54, i32 0, i32 0
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.ehci_hcd*, %struct.ehci_hcd** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @set_owner(%struct.ehci_hcd* %58, i32 %59, i32 %60)
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %57, %39, %20
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_owner(%struct.ehci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
