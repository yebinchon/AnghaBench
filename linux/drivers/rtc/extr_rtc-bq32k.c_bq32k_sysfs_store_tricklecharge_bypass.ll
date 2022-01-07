; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq32k.c_bq32k_sysfs_store_tricklecharge_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq32k.c_bq32k_sysfs_store_tricklecharge_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BQ32K_CFG2 = common dso_local global i32 0, align 4
@BQ32K_TCFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Enabled trickle charge FET bypass.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Disabled trickle charge FET bypass.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bq32k_sysfs_store_tricklecharge_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq32k_sysfs_store_tricklecharge_bypass(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i64 @kstrtoint(i8* %13, i32 0, i32* %11)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %62

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* @BQ32K_CFG2, align 4
  %22 = call i32 @bq32k_read(%struct.device* %20, i32* %10, i32 %21, i32 1)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %62

27:                                               ; preds = %19
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* @BQ32K_TCFE, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i32, i32* @BQ32K_CFG2, align 4
  %36 = call i32 @bq32k_write(%struct.device* %34, i32* %10, i32 %35, i32 1)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %62

41:                                               ; preds = %30
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @dev_info(%struct.device* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %59

44:                                               ; preds = %27
  %45 = load i32, i32* @BQ32K_TCFE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i32, i32* @BQ32K_CFG2, align 4
  %51 = call i32 @bq32k_write(%struct.device* %49, i32* %10, i32 %50, i32 1)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  br label %62

56:                                               ; preds = %44
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = call i32 @dev_info(%struct.device* %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %41
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %54, %39, %25, %16
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @bq32k_read(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @bq32k_write(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
