; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_no_reboot_bit_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_no_reboot_bit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iTCO_wdt_private = type { i32, %struct.iTCO_wdt_private*, i64 }
%struct.itco_wdt_platform_data = type { %struct.iTCO_wdt_private*, i64 }

@update_no_reboot_bit_cnt = common dso_local global i64 0, align 8
@update_no_reboot_bit_mem = common dso_local global i64 0, align 8
@update_no_reboot_bit_pci = common dso_local global i64 0, align 8
@update_no_reboot_bit_def = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iTCO_wdt_private*, %struct.itco_wdt_platform_data*)* @iTCO_wdt_no_reboot_bit_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iTCO_wdt_no_reboot_bit_setup(%struct.iTCO_wdt_private* %0, %struct.itco_wdt_platform_data* %1) #0 {
  %3 = alloca %struct.iTCO_wdt_private*, align 8
  %4 = alloca %struct.itco_wdt_platform_data*, align 8
  store %struct.iTCO_wdt_private* %0, %struct.iTCO_wdt_private** %3, align 8
  store %struct.itco_wdt_platform_data* %1, %struct.itco_wdt_platform_data** %4, align 8
  %5 = load %struct.itco_wdt_platform_data*, %struct.itco_wdt_platform_data** %4, align 8
  %6 = getelementptr inbounds %struct.itco_wdt_platform_data, %struct.itco_wdt_platform_data* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.itco_wdt_platform_data*, %struct.itco_wdt_platform_data** %4, align 8
  %11 = getelementptr inbounds %struct.itco_wdt_platform_data, %struct.itco_wdt_platform_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %14 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load %struct.itco_wdt_platform_data*, %struct.itco_wdt_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.itco_wdt_platform_data, %struct.itco_wdt_platform_data* %15, i32 0, i32 0
  %17 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %16, align 8
  %18 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %19 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %18, i32 0, i32 1
  store %struct.iTCO_wdt_private* %17, %struct.iTCO_wdt_private** %19, align 8
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %22 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 6
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64, i64* @update_no_reboot_bit_cnt, align 8
  %27 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %28 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  br label %53

29:                                               ; preds = %20
  %30 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %31 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i64, i64* @update_no_reboot_bit_mem, align 8
  %36 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %37 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %52

38:                                               ; preds = %29
  %39 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %40 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i64, i64* @update_no_reboot_bit_pci, align 8
  %45 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %46 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %51

47:                                               ; preds = %38
  %48 = load i64, i64* @update_no_reboot_bit_def, align 8
  %49 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %50 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %25
  %54 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %55 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %3, align 8
  %56 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %55, i32 0, i32 1
  store %struct.iTCO_wdt_private* %54, %struct.iTCO_wdt_private** %56, align 8
  br label %57

57:                                               ; preds = %53, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
