; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c___pciehp_enable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c___pciehp_enable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Slot(%s): Latch open\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Slot(%s): Already enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @__pciehp_enable_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pciehp_enable_slot(%struct.controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i64, align 8
  store %struct.controller* %0, %struct.controller** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.controller*, %struct.controller** %3, align 8
  %6 = call i64 @MRL_SENS(%struct.controller* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.controller*, %struct.controller** %3, align 8
  %10 = call i32 @pciehp_get_latch_status(%struct.controller* %9, i64* %4)
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.controller*, %struct.controller** %3, align 8
  %15 = load %struct.controller*, %struct.controller** %3, align 8
  %16 = call i32 @slot_name(%struct.controller* %15)
  %17 = call i32 @ctrl_info(%struct.controller* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %39

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.controller*, %struct.controller** %3, align 8
  %23 = call i64 @POWER_CTRL(%struct.controller* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.controller*, %struct.controller** %3, align 8
  %27 = call i32 @pciehp_get_power_status(%struct.controller* %26, i64* %4)
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.controller*, %struct.controller** %3, align 8
  %32 = load %struct.controller*, %struct.controller** %3, align 8
  %33 = call i32 @slot_name(%struct.controller* %32)
  %34 = call i32 @ctrl_info(%struct.controller* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %2, align 4
  br label %39

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.controller*, %struct.controller** %3, align 8
  %38 = call i32 @board_added(%struct.controller* %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %30, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @MRL_SENS(%struct.controller*) #1

declare dso_local i32 @pciehp_get_latch_status(%struct.controller*, i64*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.controller*) #1

declare dso_local i64 @POWER_CTRL(%struct.controller*) #1

declare dso_local i32 @pciehp_get_power_status(%struct.controller*, i64*) #1

declare dso_local i32 @board_added(%struct.controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
