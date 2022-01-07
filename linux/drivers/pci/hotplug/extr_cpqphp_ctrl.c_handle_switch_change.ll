; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_handle_switch_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_handle_switch_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i64, i32, %struct.event_info*, i64, i32 }
%struct.event_info = type { i32, i32 }
%struct.pci_func = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"cpqsbd:  Switch interrupt received.\0A\00", align 1
@INT_SWITCH_OPEN = common dso_local global i32 0, align 4
@INT_SWITCH_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.controller*)* @handle_switch_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_switch_change(i32 %0, %struct.controller* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_func*, align 8
  %10 = alloca %struct.event_info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.controller* %1, %struct.controller** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

14:                                               ; preds = %2
  %15 = call i32 @dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %99, %14
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %102

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 1, %23
  %25 = and i64 %21, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %98

27:                                               ; preds = %19
  %28 = load %struct.controller*, %struct.controller** %5, align 8
  %29 = getelementptr inbounds %struct.controller, %struct.controller* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.controller*, %struct.controller** %5, align 8
  %34 = getelementptr inbounds %struct.controller, %struct.controller* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = call %struct.pci_func* @cpqhp_slot_find(i32 %30, i64 %36, i32 0)
  store %struct.pci_func* %37, %struct.pci_func** %9, align 8
  %38 = load %struct.controller*, %struct.controller** %5, align 8
  %39 = getelementptr inbounds %struct.controller, %struct.controller* %38, i32 0, i32 2
  %40 = load %struct.event_info*, %struct.event_info** %39, align 8
  %41 = load %struct.controller*, %struct.controller** %5, align 8
  %42 = getelementptr inbounds %struct.controller, %struct.controller* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.event_info, %struct.event_info* %40, i64 %43
  store %struct.event_info* %44, %struct.event_info** %10, align 8
  %45 = load %struct.controller*, %struct.controller** %5, align 8
  %46 = getelementptr inbounds %struct.controller, %struct.controller* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  %49 = urem i64 %48, 10
  %50 = load %struct.controller*, %struct.controller** %5, align 8
  %51 = getelementptr inbounds %struct.controller, %struct.controller* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.event_info*, %struct.event_info** %10, align 8
  %54 = getelementptr inbounds %struct.event_info, %struct.event_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load %struct.controller*, %struct.controller** %5, align 8
  %58 = getelementptr inbounds %struct.controller, %struct.controller* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = ashr i32 %59, 16
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 %61, %62
  %64 = and i32 %63, 1
  %65 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  %66 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 7
  %70 = ashr i32 %67, %69
  %71 = and i32 %70, 2
  %72 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  %73 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.controller*, %struct.controller** %5, align 8
  %77 = getelementptr inbounds %struct.controller, %struct.controller* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = shl i64 1, %81
  %83 = and i64 %79, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %27
  %86 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  %87 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* @INT_SWITCH_OPEN, align 4
  %89 = load %struct.event_info*, %struct.event_info** %10, align 8
  %90 = getelementptr inbounds %struct.event_info, %struct.event_info* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %97

91:                                               ; preds = %27
  %92 = load %struct.pci_func*, %struct.pci_func** %9, align 8
  %93 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %92, i32 0, i32 1
  store i32 16, i32* %93, align 4
  %94 = load i32, i32* @INT_SWITCH_CLOSE, align 4
  %95 = load %struct.event_info*, %struct.event_info** %10, align 8
  %96 = getelementptr inbounds %struct.event_info, %struct.event_info* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %85
  br label %98

98:                                               ; preds = %97, %19
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %16

102:                                              ; preds = %16
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %13
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local %struct.pci_func* @cpqhp_slot_find(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
