; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_i2c_voltage_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_i2c_voltage_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_child_t = type { i8 }

@ENVCTRL_VOLTAGE_POWERSUPPLY_GOOD = common dso_local global i8 0, align 1
@ENVCTRL_VOLTAGE_POWERSUPPLY_BAD = common dso_local global i8 0, align 1
@PCF8584_MAX_CHANNELS = common dso_local global i32 0, align 4
@chnls_mask = common dso_local global i32* null, align 8
@ENVCTRL_VOLTAGE_BAD = common dso_local global i8 0, align 1
@ENVCTRL_POWERSUPPLY_BAD = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.i2c_child_t*, i8, i8*)* @envctrl_i2c_voltage_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @envctrl_i2c_voltage_status(%struct.i2c_child_t* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca %struct.i2c_child_t*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_child_t* %0, %struct.i2c_child_t** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  store i8 0, i8* %8, align 1
  store i32 0, i32* %10, align 4
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = load %struct.i2c_child_t*, %struct.i2c_child_t** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %12, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %7, align 1
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = load %struct.i2c_child_t*, %struct.i2c_child_t** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i8, i8* @ENVCTRL_VOLTAGE_POWERSUPPLY_GOOD, align 1
  store i8 %27, i8* %8, align 1
  br label %78

28:                                               ; preds = %3
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8, i8* @ENVCTRL_VOLTAGE_POWERSUPPLY_BAD, align 1
  store i8 %33, i8* %8, align 1
  br label %77

34:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %66, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PCF8584_MAX_CHANNELS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load %struct.i2c_child_t*, %struct.i2c_child_t** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32*, i32** @chnls_mask, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load i32*, i32** @chnls_mask, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %51
  br label %69

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %39
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %35

69:                                               ; preds = %63, %35
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i8, i8* @ENVCTRL_VOLTAGE_BAD, align 1
  store i8 %73, i8* %8, align 1
  br label %76

74:                                               ; preds = %69
  %75 = load i8, i8* @ENVCTRL_POWERSUPPLY_BAD, align 1
  store i8 %75, i8* %8, align 1
  br label %76

76:                                               ; preds = %74, %72
  br label %77

77:                                               ; preds = %76, %32
  br label %78

78:                                               ; preds = %77, %26
  %79 = load i8, i8* %8, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  store i8 %79, i8* %81, align 1
  ret i8 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
