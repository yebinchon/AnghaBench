; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_force_power_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_force_power_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"isil,pwr-bsw\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"isil,pwr-sbib\00", align 1
@ISL12026_REG_PWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Error: Failed to read PWR %d\0A\00", align 1
@ISL12026_REG_PWR_BSW = common dso_local global i32 0, align 4
@ISL12026_REG_PWR_SBIB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"PWR: %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Updating PWR to: %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @isl12026_force_power_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isl12026_force_power_modes(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @of_property_read_u32(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64* %6)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_property_read_u32(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64* %7)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %96

32:                                               ; preds = %28, %1
  %33 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %34 = load i32, i32* @ISL12026_REG_PWR, align 4
  %35 = call i32 @isl12026_read_reg(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dev_warn(%struct.TYPE_3__* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %96

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @ISL12026_REG_PWR_BSW, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %59

54:                                               ; preds = %47
  %55 = load i32, i32* @ISL12026_REG_PWR_BSW, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* @ISL12026_REG_PWR_SBIB, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %63
  %71 = load i32, i32* @ISL12026_REG_PWR_SBIB, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %66
  br label %76

76:                                               ; preds = %75, %60
  %77 = load i32, i32* %4, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @dev_dbg(%struct.TYPE_3__* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @dev_dbg(%struct.TYPE_3__* %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %93 = load i32, i32* @ISL12026_REG_PWR, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @isl12026_write_reg(%struct.i2c_client* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %31, %38, %83, %79, %76
  ret void
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @isl12026_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @isl12026_write_reg(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
