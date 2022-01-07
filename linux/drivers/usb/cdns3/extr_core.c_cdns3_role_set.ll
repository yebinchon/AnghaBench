; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_role_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_role_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cdns3 = type { i32, i64, i32, i32 }

@USB_DR_MODE_OTG = common dso_local global i64 0, align 8
@USB_DR_MODE_HOST = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@USB_DR_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"set role %d has failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @cdns3_role_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_role_set(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdns3*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.cdns3* @dev_get_drvdata(%struct.device* %7)
  store %struct.cdns3* %8, %struct.cdns3** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %10 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pm_runtime_get_sync(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 128
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %17 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %20 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %23 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %28 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @USB_DR_MODE_OTG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %34 = call i32 @cdns3_hw_role_switch(%struct.cdns3* %33)
  br label %85

35:                                               ; preds = %26, %21
  %36 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %37 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %85

42:                                               ; preds = %35
  %43 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %44 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USB_DR_MODE_HOST, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  switch i32 %49, label %51 [
    i32 128, label %50
    i32 129, label %50
  ]

50:                                               ; preds = %48, %48
  br label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EPERM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %85

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %57 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  switch i32 %62, label %64 [
    i32 128, label %63
    i32 130, label %63
  ]

63:                                               ; preds = %61, %61
  br label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %85

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %55
  %69 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %70 = call i32 @cdns3_role_stop(%struct.cdns3* %69)
  %71 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @cdns3_role_start(%struct.cdns3* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %78 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EPERM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %76, %68
  br label %85

85:                                               ; preds = %84, %64, %51, %41, %32
  %86 = load %struct.cdns3*, %struct.cdns3** %5, align 8
  %87 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pm_runtime_put_sync(i32 %88)
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.cdns3* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @cdns3_hw_role_switch(%struct.cdns3*) #1

declare dso_local i32 @cdns3_role_stop(%struct.cdns3*) #1

declare dso_local i32 @cdns3_role_start(%struct.cdns3*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
