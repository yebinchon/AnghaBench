; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_value_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_value_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.most_dci_obj = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"arb_address\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"arb_value\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sync_ep\00", align 1
@rw_regs = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @value_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @value_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.most_dci_obj*, align 8
  %14 = alloca %struct.usb_device*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %12, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.most_dci_obj* @to_dci_obj(%struct.device* %20)
  store %struct.most_dci_obj* %21, %struct.most_dci_obj** %13, align 8
  %22 = load %struct.most_dci_obj*, %struct.most_dci_obj** %13, align 8
  %23 = getelementptr inbounds %struct.most_dci_obj, %struct.most_dci_obj* %22, i32 0, i32 1
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  store %struct.usb_device* %24, %struct.usb_device** %14, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtou16(i8* %25, i32 16, i32* %10)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %83

31:                                               ; preds = %4
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.most_dci_obj*, %struct.most_dci_obj** %13, align 8
  %38 = getelementptr inbounds %struct.most_dci_obj, %struct.most_dci_obj* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %83

41:                                               ; preds = %31
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %47 = load %struct.most_dci_obj*, %struct.most_dci_obj** %13, align 8
  %48 = getelementptr inbounds %struct.most_dci_obj, %struct.most_dci_obj* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @drci_wr_reg(%struct.usb_device* %46, i32 %49, i32 %50)
  store i32 %51, i32* %15, align 4
  br label %75

52:                                               ; preds = %41
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @start_sync_ep(%struct.usb_device* %57, i32 %58)
  store i32 %59, i32* %15, align 4
  br label %74

60:                                               ; preds = %52
  %61 = load i32, i32* @rw_regs, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @get_static_reg_addr(i32 %61, i8* %62, i32* %11)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @drci_wr_reg(%struct.usb_device* %66, i32 %67, i32 %68)
  store i32 %69, i32* %15, align 4
  br label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @EFAULT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %83

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %5, align 4
  br label %83

80:                                               ; preds = %75
  %81 = load i64, i64* %9, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %78, %70, %35, %29
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.most_dci_obj* @to_dci_obj(%struct.device*) #1

declare dso_local i32 @kstrtou16(i8*, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @drci_wr_reg(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @start_sync_ep(%struct.usb_device*, i32) #1

declare dso_local i32 @get_static_reg_addr(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
