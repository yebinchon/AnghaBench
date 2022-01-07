; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3029c2.c_rv3029_trickle_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3029c2.c_rv3029_trickle_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rv3029_trickle_tab_elem = type { i64, i64 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"trickle-resistor-ohms\00", align 1
@rv3029_trickle_tab = common dso_local global %struct.rv3029_trickle_tab_elem* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Trickle charger enabled at %d ohms resistance.\0A\00", align 1
@RV3029_CONTROL_E2P_EECTRL = common dso_local global i32 0, align 4
@RV3029_TRICKLE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to update trickle charger config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @rv3029_trickle_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv3029_trickle_config(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.rv3029_trickle_tab_elem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %3, align 8
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %62

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64* %7)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %51

21:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.rv3029_trickle_tab_elem*, %struct.rv3029_trickle_tab_elem** @rv3029_trickle_tab, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.rv3029_trickle_tab_elem* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.rv3029_trickle_tab_elem*, %struct.rv3029_trickle_tab_elem** @rv3029_trickle_tab, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.rv3029_trickle_tab_elem, %struct.rv3029_trickle_tab_elem* %28, i64 %30
  store %struct.rv3029_trickle_tab_elem* %31, %struct.rv3029_trickle_tab_elem** %4, align 8
  %32 = load %struct.rv3029_trickle_tab_elem*, %struct.rv3029_trickle_tab_elem** %4, align 8
  %33 = getelementptr inbounds %struct.rv3029_trickle_tab_elem, %struct.rv3029_trickle_tab_elem* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %42

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %22

42:                                               ; preds = %37, %22
  %43 = load %struct.rv3029_trickle_tab_elem*, %struct.rv3029_trickle_tab_elem** %4, align 8
  %44 = getelementptr inbounds %struct.rv3029_trickle_tab_elem, %struct.rv3029_trickle_tab_elem* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load %struct.device*, %struct.device** %2, align 8
  %47 = load %struct.rv3029_trickle_tab_elem*, %struct.rv3029_trickle_tab_elem** %4, align 8
  %48 = getelementptr inbounds %struct.rv3029_trickle_tab_elem, %struct.rv3029_trickle_tab_elem* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dev_info(%struct.device* %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %42, %20
  %52 = load %struct.device*, %struct.device** %2, align 8
  %53 = load i32, i32* @RV3029_CONTROL_E2P_EECTRL, align 4
  %54 = load i32, i32* @RV3029_TRICKLE_MASK, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @rv3029_eeprom_update_bits(%struct.device* %52, i32 %53, i32 %54, i64 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.device*, %struct.device** %2, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %14, %59, %51
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rv3029_trickle_tab_elem*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i32 @rv3029_eeprom_update_bits(%struct.device*, i32, i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
