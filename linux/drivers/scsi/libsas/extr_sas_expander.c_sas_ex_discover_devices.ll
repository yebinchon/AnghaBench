; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_discover_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.expander_device }
%struct.expander_device = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i32 }

@PHY_VACANT = common dso_local global i64 0, align 8
@PHY_NOT_PRESENT = common dso_local global i64 0, align 8
@PHY_DEVICE_DISCOVERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32)* @sas_ex_discover_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_ex_discover_devices(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.expander_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 0
  store %struct.expander_device* %11, %struct.expander_device** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %13 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 0, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %17, %2
  br label %26

26:                                               ; preds = %69, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %26
  %31 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %32 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %31, i32 0, i32 1
  %33 = load %struct.ex_phy*, %struct.ex_phy** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %33, i64 %35
  store %struct.ex_phy* %36, %struct.ex_phy** %9, align 8
  %37 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %38 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PHY_VACANT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %30
  %43 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %44 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PHY_NOT_PRESENT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %50 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PHY_DEVICE_DISCOVERED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %42, %30
  br label %69

55:                                               ; preds = %48
  %56 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %57 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %60 [
    i32 130, label %59
    i32 129, label %59
    i32 128, label %59
  ]

59:                                               ; preds = %55, %55, %55
  br label %69

60:                                               ; preds = %55
  %61 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @sas_ex_discover_dev(%struct.domain_device* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %68

67:                                               ; preds = %60
  br label %69

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %67, %59, %54
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %26

72:                                               ; preds = %26
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %77 = call i32 @sas_check_level_subtractive_boundary(%struct.domain_device* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @sas_ex_discover_dev(%struct.domain_device*, i32) #1

declare dso_local i32 @sas_check_level_subtractive_boundary(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
