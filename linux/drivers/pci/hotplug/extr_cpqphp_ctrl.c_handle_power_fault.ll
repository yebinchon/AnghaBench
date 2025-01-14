; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_handle_power_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_handle_power_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i64, i32, i32, %struct.event_info*, i64, i32 }
%struct.event_info = type { i32, i32 }
%struct.pci_func = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"power fault interrupt\0A\00", align 1
@INT_POWER_FAULT_CLEAR = common dso_local global i32 0, align 4
@INT_POWER_FAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"power fault bit %x set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.controller*)* @handle_power_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_power_fault(i32 %0, %struct.controller* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_func*, align 8
  %9 = alloca %struct.event_info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.controller* %1, %struct.controller** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %92, %13
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %18, label %95

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %91

24:                                               ; preds = %18
  %25 = load %struct.controller*, %struct.controller** %5, align 8
  %26 = getelementptr inbounds %struct.controller, %struct.controller* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.controller*, %struct.controller** %5, align 8
  %31 = getelementptr inbounds %struct.controller, %struct.controller* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call %struct.pci_func* @cpqhp_slot_find(i32 %27, i64 %33, i32 0)
  store %struct.pci_func* %34, %struct.pci_func** %8, align 8
  %35 = load %struct.controller*, %struct.controller** %5, align 8
  %36 = getelementptr inbounds %struct.controller, %struct.controller* %35, i32 0, i32 3
  %37 = load %struct.event_info*, %struct.event_info** %36, align 8
  %38 = load %struct.controller*, %struct.controller** %5, align 8
  %39 = getelementptr inbounds %struct.controller, %struct.controller* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.event_info, %struct.event_info* %37, i64 %40
  store %struct.event_info* %41, %struct.event_info** %9, align 8
  %42 = load %struct.controller*, %struct.controller** %5, align 8
  %43 = getelementptr inbounds %struct.controller, %struct.controller* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  %46 = urem i64 %45, 10
  %47 = load %struct.controller*, %struct.controller** %5, align 8
  %48 = getelementptr inbounds %struct.controller, %struct.controller* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.event_info*, %struct.event_info** %9, align 8
  %51 = getelementptr inbounds %struct.event_info, %struct.event_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load %struct.controller*, %struct.controller** %5, align 8
  %55 = getelementptr inbounds %struct.controller, %struct.controller* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 256, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %24
  %62 = load %struct.pci_func*, %struct.pci_func** %8, align 8
  %63 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* @INT_POWER_FAULT_CLEAR, align 4
  %65 = load %struct.event_info*, %struct.event_info** %9, align 8
  %66 = getelementptr inbounds %struct.event_info, %struct.event_info* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %90

67:                                               ; preds = %24
  %68 = load i32, i32* @INT_POWER_FAULT, align 4
  %69 = load %struct.event_info*, %struct.event_info** %9, align 8
  %70 = getelementptr inbounds %struct.event_info, %struct.event_info* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.controller*, %struct.controller** %5, align 8
  %72 = getelementptr inbounds %struct.controller, %struct.controller* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %84

75:                                               ; preds = %67
  %76 = load %struct.controller*, %struct.controller** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @amber_LED_on(%struct.controller* %76, i32 %77)
  %79 = load %struct.controller*, %struct.controller** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @green_LED_off(%struct.controller* %79, i32 %80)
  %82 = load %struct.controller*, %struct.controller** %5, align 8
  %83 = call i32 @set_SOGO(%struct.controller* %82)
  br label %89

84:                                               ; preds = %67
  %85 = load %struct.pci_func*, %struct.pci_func** %8, align 8
  %86 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %85, i32 0, i32 0
  store i32 255, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %75
  br label %90

90:                                               ; preds = %89, %61
  br label %91

91:                                               ; preds = %90, %18
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %15

95:                                               ; preds = %15
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %12
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @info(i8*, ...) #1

declare dso_local %struct.pci_func* @cpqhp_slot_find(i32, i64, i32) #1

declare dso_local i32 @amber_LED_on(%struct.controller*, i32) #1

declare dso_local i32 @green_LED_off(%struct.controller*, i32) #1

declare dso_local i32 @set_SOGO(%struct.controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
