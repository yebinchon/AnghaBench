; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.work_struct = type { i32 }

@ACER_CAP_WIRELESS = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@wireless_rfkill = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@bluetooth_rfkill = common dso_local global i32 0, align 4
@ACER_CAP_THREEG = common dso_local global i32 0, align 4
@WMID_GUID3 = common dso_local global i32 0, align 4
@ACER_WMID3_GDS_THREEG = common dso_local global i32 0, align 4
@threeg_rfkill = common dso_local global i32 0, align 4
@acer_rfkill_work = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @acer_rfkill_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acer_rfkill_update(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %6 = call i64 @has_cap(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %10 = call i32 @get_u32(i32* %3, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @ACPI_SUCCESS(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32, i32* @wireless_rfkill, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @rfkill_set_hw_state(i32 %20, i32 %24)
  br label %33

26:                                               ; preds = %14
  %27 = load i32, i32* @wireless_rfkill, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @rfkill_set_sw_state(i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %26, %19
  br label %34

34:                                               ; preds = %33, %8
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %37 = call i64 @has_cap(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %41 = call i32 @get_u32(i32* %3, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @ACPI_SUCCESS(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* @bluetooth_rfkill, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @rfkill_set_sw_state(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %39
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* @ACER_CAP_THREEG, align 4
  %55 = call i64 @has_cap(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load i32, i32* @WMID_GUID3, align 4
  %59 = call i64 @wmi_has_guid(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load i32, i32* @ACER_WMID3_GDS_THREEG, align 4
  %63 = call i32 @get_u32(i32* %3, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @ACPI_SUCCESS(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* @threeg_rfkill, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @rfkill_set_sw_state(i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %67, %61
  br label %75

75:                                               ; preds = %74, %57, %53
  %76 = load i32, i32* @HZ, align 4
  %77 = call i32 @round_jiffies_relative(i32 %76)
  %78 = call i32 @schedule_delayed_work(i32* @acer_rfkill_work, i32 %77)
  ret void
}

declare dso_local i64 @has_cap(i32) #1

declare dso_local i32 @get_u32(i32*, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @rfkill_set_sw_state(i32, i32) #1

declare dso_local i64 @wmi_has_guid(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
