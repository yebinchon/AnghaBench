; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq32k.c_trickle_charger_of_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq32k.c_trickle_charger_of_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"trickle-resistor-ohms\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"trickle-diode-disable\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"diode and resistor mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"bq32k: diode and resistor mismatch\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid resistor value (%d)\0A\00", align 1
@BQ32K_CFG2 = common dso_local global i32 0, align 4
@BQ32K_TCH2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Enabled trickle RTC battery charge.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*)* @trickle_charger_of_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trickle_charger_of_init(%struct.device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = call i64 @of_property_read_u32(%struct.device_node* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %8)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %35 [
    i32 1120, label %15
    i32 20180, label %25
  ]

15:                                               ; preds = %13
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call i32 @of_property_read_bool(%struct.device_node* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %15
  store i8 5, i8* %6, align 1
  br label %41

25:                                               ; preds = %13
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call i32 @of_property_read_bool(%struct.device_node* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %60

34:                                               ; preds = %25
  store i8 69, i8* %6, align 1
  br label %41

35:                                               ; preds = %13
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %60

41:                                               ; preds = %34, %24
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* @BQ32K_CFG2, align 4
  %44 = call i32 @bq32k_write(%struct.device* %42, i8* %6, i32 %43, i32 1)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %60

49:                                               ; preds = %41
  store i8 32, i8* %6, align 1
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* @BQ32K_TCH2, align 4
  %52 = call i32 @bq32k_write(%struct.device* %50, i8* %6, i32 %51, i32 1)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %49
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @dev_info(%struct.device* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %55, %47, %35, %29, %19, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @bq32k_write(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
