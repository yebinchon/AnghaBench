; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_i2c.c_fdp_nci_i2c_read_device_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_i2c.c_fdp_nci_i2c_read_device_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@FDP_DP_CLOCK_TYPE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Using default clock type\00", align 1
@FDP_DP_CLOCK_FREQ_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Using default clock frequency\0A\00", align 1
@FDP_DP_FW_VSC_CFG_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"FW vendor specific commands not present\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Clock type: %d, clock frequency: %d, VSC: %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64*, i32*, i64**)* @fdp_nci_i2c_read_device_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp_nci_i2c_read_device_properties(%struct.device* %0, i64* %1, i32* %2, i64** %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64** %3, i64*** %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @FDP_DP_CLOCK_TYPE_NAME, align 4
  %13 = load i64*, i64** %6, align 8
  %14 = call i32 @device_property_read_u8(%struct.device* %11, i32 %12, i64* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i64*, i64** %6, align 8
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %4
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* @FDP_DP_CLOCK_FREQ_NAME, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @device_property_read_u32(%struct.device* %22, i32 %23, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %7, align 8
  store i32 26000, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* @FDP_DP_FW_VSC_CFG_NAME, align 4
  %35 = call i64 @device_property_present(%struct.device* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load i32, i32* @FDP_DP_FW_VSC_CFG_NAME, align 4
  %40 = call i32 @device_property_read_u8(%struct.device* %38, i32 %39, i64* %10)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %10, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %37
  br label %70

47:                                               ; preds = %43
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %10, align 8
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i64* @devm_kmalloc_array(%struct.device* %50, i64 %51, i32 8, i32 %52)
  %54 = load i64**, i64*** %8, align 8
  store i64* %53, i64** %54, align 8
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* @FDP_DP_FW_VSC_CFG_NAME, align 4
  %57 = load i64**, i64*** %8, align 8
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @device_property_read_u8_array(%struct.device* %55, i32 %56, i64* %58, i64 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %47
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i64**, i64*** %8, align 8
  %66 = load i64*, i64** %65, align 8
  %67 = call i32 @devm_kfree(%struct.device* %64, i64* %66)
  br label %70

68:                                               ; preds = %47
  br label %74

69:                                               ; preds = %32
  br label %70

70:                                               ; preds = %69, %63, %46
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i64**, i64*** %8, align 8
  store i64* null, i64** %73, align 8
  br label %74

74:                                               ; preds = %70, %68
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load i64*, i64** %6, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i64**, i64*** %8, align 8
  %81 = load i64*, i64** %80, align 8
  %82 = icmp ne i64* %81, null
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %85 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %77, i32 %79, i8* %84)
  ret void
}

declare dso_local i32 @device_property_read_u8(%struct.device*, i32, i64*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i32, i32*) #1

declare dso_local i64 @device_property_present(%struct.device*, i32) #1

declare dso_local i64* @devm_kmalloc_array(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @device_property_read_u8_array(%struct.device*, i32, i64*, i64) #1

declare dso_local i32 @devm_kfree(%struct.device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
