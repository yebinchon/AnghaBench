; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_wait_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_wait_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i64, i32, i32, i32 }

@pciehp_poll_mode = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@PCI_EXP_SLTCTL_HPIE = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_CCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Timeout on hotplug command %#06x (issued %u msec ago)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*)* @pcie_wait_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_wait_cmd(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %2, align 8
  %9 = load i64, i64* @pciehp_poll_mode, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 2500, i32 1000
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @msecs_to_jiffies(i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load %struct.controller*, %struct.controller** %2, align 8
  %16 = getelementptr inbounds %struct.controller, %struct.controller* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %5, align 8
  %20 = load %struct.controller*, %struct.controller** %2, align 8
  %21 = call i64 @NO_CMD_CMPL(%struct.controller* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %87

24:                                               ; preds = %1
  %25 = load %struct.controller*, %struct.controller** %2, align 8
  %26 = getelementptr inbounds %struct.controller, %struct.controller* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %87

30:                                               ; preds = %24
  %31 = load i64, i64* @jiffies, align 8
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @time_before_eq(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i64 1, i64* %7, align 8
  br label %41

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = load %struct.controller*, %struct.controller** %2, align 8
  %43 = getelementptr inbounds %struct.controller, %struct.controller* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PCI_EXP_SLTCTL_HPIE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %41
  %49 = load %struct.controller*, %struct.controller** %2, align 8
  %50 = getelementptr inbounds %struct.controller, %struct.controller* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PCI_EXP_SLTCTL_CCIE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load %struct.controller*, %struct.controller** %2, align 8
  %57 = getelementptr inbounds %struct.controller, %struct.controller* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.controller*, %struct.controller** %2, align 8
  %60 = getelementptr inbounds %struct.controller, %struct.controller* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @wait_event_timeout(i32 %58, i32 %64, i64 %65)
  store i32 %66, i32* %8, align 4
  br label %72

67:                                               ; preds = %48, %41
  %68 = load %struct.controller*, %struct.controller** %2, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @jiffies_to_msecs(i64 %69)
  %71 = call i32 @pcie_poll_cmd(%struct.controller* %68, i32 %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %67, %55
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %72
  %76 = load %struct.controller*, %struct.controller** %2, align 8
  %77 = load %struct.controller*, %struct.controller** %2, align 8
  %78 = getelementptr inbounds %struct.controller, %struct.controller* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* @jiffies, align 8
  %81 = load %struct.controller*, %struct.controller** %2, align 8
  %82 = getelementptr inbounds %struct.controller, %struct.controller* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %80, %83
  %85 = call i32 @jiffies_to_msecs(i64 %84)
  %86 = call i32 @ctrl_info(%struct.controller* %76, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %85)
  br label %87

87:                                               ; preds = %23, %29, %75, %72
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @NO_CMD_CMPL(%struct.controller*) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @pcie_poll_cmd(%struct.controller*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
