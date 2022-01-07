; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_core.c_pciehp_check_presence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_core.c_pciehp_check_presence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i64, i32, i32 }

@OFF_STATE = common dso_local global i64 0, align 8
@BLINKINGON_STATE = common dso_local global i64 0, align 8
@ON_STATE = common dso_local global i64 0, align 8
@BLINKINGOFF_STATE = common dso_local global i64 0, align 8
@PCI_EXP_SLTSTA_PDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*)* @pciehp_check_presence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pciehp_check_presence(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %2, align 8
  %4 = load %struct.controller*, %struct.controller** %2, align 8
  %5 = getelementptr inbounds %struct.controller, %struct.controller* %4, i32 0, i32 1
  %6 = call i32 @down_read(i32* %5)
  %7 = load %struct.controller*, %struct.controller** %2, align 8
  %8 = getelementptr inbounds %struct.controller, %struct.controller* %7, i32 0, i32 2
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.controller*, %struct.controller** %2, align 8
  %11 = call i32 @pciehp_card_present_or_link_active(%struct.controller* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.controller*, %struct.controller** %2, align 8
  %16 = getelementptr inbounds %struct.controller, %struct.controller* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OFF_STATE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %14
  %21 = load %struct.controller*, %struct.controller** %2, align 8
  %22 = getelementptr inbounds %struct.controller, %struct.controller* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BLINKINGON_STATE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %41, label %26

26:                                               ; preds = %20, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %26
  %30 = load %struct.controller*, %struct.controller** %2, align 8
  %31 = getelementptr inbounds %struct.controller, %struct.controller* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ON_STATE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.controller*, %struct.controller** %2, align 8
  %37 = getelementptr inbounds %struct.controller, %struct.controller* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BLINKINGOFF_STATE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35, %29, %20, %14
  %42 = load %struct.controller*, %struct.controller** %2, align 8
  %43 = load i32, i32* @PCI_EXP_SLTSTA_PDC, align 4
  %44 = call i32 @pciehp_request(%struct.controller* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %35, %26
  %46 = load %struct.controller*, %struct.controller** %2, align 8
  %47 = getelementptr inbounds %struct.controller, %struct.controller* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.controller*, %struct.controller** %2, align 8
  %50 = getelementptr inbounds %struct.controller, %struct.controller* %49, i32 0, i32 1
  %51 = call i32 @up_read(i32* %50)
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pciehp_card_present_or_link_active(%struct.controller*) #1

declare dso_local i32 @pciehp_request(%struct.controller*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
