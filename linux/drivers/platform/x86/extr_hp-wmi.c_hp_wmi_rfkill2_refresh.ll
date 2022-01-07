; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp-wmi.c_hp_wmi_rfkill2_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp-wmi.c_hp_wmi_rfkill2_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.bios_rfkill2_state = type { i32, %struct.bios_rfkill2_device_state* }
%struct.bios_rfkill2_device_state = type { i64, i32 }

@HPWMI_WIRELESS2_QUERY = common dso_local global i32 0, align 4
@HPWMI_READ = common dso_local global i32 0, align 4
@rfkill2_count = common dso_local global i32 0, align 4
@rfkill2 = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [66 x i8] c"power configuration of the wireless devices unexpectedly changed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hp_wmi_rfkill2_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_wmi_rfkill2_refresh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bios_rfkill2_state, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bios_rfkill2_device_state*, align 8
  %7 = load i32, i32* @HPWMI_WIRELESS2_QUERY, align 4
  %8 = load i32, i32* @HPWMI_READ, align 4
  %9 = call i32 @hp_wmi_perform_query(i32 %7, i32 %8, %struct.bios_rfkill2_state* %2, i32 0, i32 16)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %1, align 4
  br label %68

14:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %64, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @rfkill2_count, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rfkill2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = getelementptr inbounds %struct.bios_rfkill2_state, %struct.bios_rfkill2_state* %2, i32 0, i32 1
  %27 = load %struct.bios_rfkill2_device_state*, %struct.bios_rfkill2_device_state** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bios_rfkill2_device_state, %struct.bios_rfkill2_device_state* %27, i64 %29
  store %struct.bios_rfkill2_device_state* %30, %struct.bios_rfkill2_device_state** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds %struct.bios_rfkill2_state, %struct.bios_rfkill2_state* %2, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %31, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %19
  %36 = load %struct.bios_rfkill2_device_state*, %struct.bios_rfkill2_device_state** %6, align 8
  %37 = getelementptr inbounds %struct.bios_rfkill2_device_state, %struct.bios_rfkill2_device_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rfkill2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %38, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35, %19
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %64

48:                                               ; preds = %35
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rfkill2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bios_rfkill2_device_state*, %struct.bios_rfkill2_device_state** %6, align 8
  %56 = getelementptr inbounds %struct.bios_rfkill2_device_state, %struct.bios_rfkill2_device_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @IS_SWBLOCKED(i32 %57)
  %59 = load %struct.bios_rfkill2_device_state*, %struct.bios_rfkill2_device_state** %6, align 8
  %60 = getelementptr inbounds %struct.bios_rfkill2_device_state, %struct.bios_rfkill2_device_state* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @IS_HWBLOCKED(i32 %61)
  %63 = call i32 @rfkill_set_states(i32 %54, i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %48, %46
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %15

67:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %68

68:                                               ; preds = %67, %12
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @hp_wmi_perform_query(i32, i32, %struct.bios_rfkill2_state*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @rfkill_set_states(i32, i32, i32) #1

declare dso_local i32 @IS_SWBLOCKED(i32) #1

declare dso_local i32 @IS_HWBLOCKED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
