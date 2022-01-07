; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_update_safw_host_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_update_safw_host_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }

@AAC_BUS_TARGET_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*)* @aac_update_safw_host_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_update_safw_host_devices(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %9 = call i32 @aac_setup_safw_adapter(%struct.aac_dev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %63

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %59, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @AAC_BUS_TARGET_LOOP, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @get_bus_number(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @get_target_number(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @aac_is_safw_device_exposed(%struct.aac_dev* %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @aac_is_safw_target_valid(%struct.aac_dev* %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @aac_add_safw_device(%struct.aac_dev* %39, i32 %40, i32 %41)
  br label %58

43:                                               ; preds = %35, %21
  %44 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @aac_is_safw_target_valid(%struct.aac_dev* %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @aac_remove_safw_device(%struct.aac_dev* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %49, %43
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %17

62:                                               ; preds = %17
  br label %63

63:                                               ; preds = %62, %15
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @aac_setup_safw_adapter(%struct.aac_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_bus_number(i32) #1

declare dso_local i32 @get_target_number(i32) #1

declare dso_local i32 @aac_is_safw_device_exposed(%struct.aac_dev*, i32, i32) #1

declare dso_local i64 @aac_is_safw_target_valid(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @aac_add_safw_device(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @aac_remove_safw_device(%struct.aac_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
