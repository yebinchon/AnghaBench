; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sysfs.c_companion_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-sysfs.c_companion_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ehci_hcd = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @companion_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @companion_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ehci_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %12, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_get_drvdata(%struct.device* %15)
  %17 = call %struct.ehci_hcd* @hcd_to_ehci(i32 %16)
  store %struct.ehci_hcd* %17, %struct.ehci_hcd** %7, align 8
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %19 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @HCS_N_PORTS(i32 %20)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %46, %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %7, align 8
  %29 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @scnprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %12, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %32, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  ret i32 %55
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
