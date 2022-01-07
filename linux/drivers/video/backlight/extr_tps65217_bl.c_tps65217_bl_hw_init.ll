; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tps65217_bl.c_tps65217_bl_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tps65217_bl.c_tps65217_bl_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65217_bl = type { i32, i32 }
%struct.tps65217_bl_pdata = type { i32, i32 }

@TPS65217_REG_WLEDCTRL1 = common dso_local global i32 0, align 4
@TPS65217_WLEDCTRL1_ISEL = common dso_local global i32 0, align 4
@TPS65217_PROTECT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to select ISET1 current level: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"selected ISET1 current level\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to select ISET2 current level: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"selected ISET2 current level\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"invalid value for current level: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPS65217_WLEDCTRL1_FDIM_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"failed to select PWM dimming frequency: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65217_bl*, %struct.tps65217_bl_pdata*)* @tps65217_bl_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65217_bl_hw_init(%struct.tps65217_bl* %0, %struct.tps65217_bl_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tps65217_bl*, align 8
  %5 = alloca %struct.tps65217_bl_pdata*, align 8
  %6 = alloca i32, align 4
  store %struct.tps65217_bl* %0, %struct.tps65217_bl** %4, align 8
  store %struct.tps65217_bl_pdata* %1, %struct.tps65217_bl_pdata** %5, align 8
  %7 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %8 = call i32 @tps65217_bl_disable(%struct.tps65217_bl* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %93

13:                                               ; preds = %2
  %14 = load %struct.tps65217_bl_pdata*, %struct.tps65217_bl_pdata** %5, align 8
  %15 = getelementptr inbounds %struct.tps65217_bl_pdata, %struct.tps65217_bl_pdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %62 [
    i32 129, label %17
    i32 128, label %39
  ]

17:                                               ; preds = %13
  %18 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %19 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TPS65217_REG_WLEDCTRL1, align 4
  %22 = load i32, i32* @TPS65217_WLEDCTRL1_ISEL, align 4
  %23 = load i32, i32* @TPS65217_PROTECT_NONE, align 4
  %24 = call i32 @tps65217_clear_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %29 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %93

34:                                               ; preds = %17
  %35 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %36 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %72

39:                                               ; preds = %13
  %40 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %41 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TPS65217_REG_WLEDCTRL1, align 4
  %44 = load i32, i32* @TPS65217_WLEDCTRL1_ISEL, align 4
  %45 = load i32, i32* @TPS65217_WLEDCTRL1_ISEL, align 4
  %46 = load i32, i32* @TPS65217_PROTECT_NONE, align 4
  %47 = call i32 @tps65217_set_bits(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %52 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %93

57:                                               ; preds = %39
  %58 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %59 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %72

62:                                               ; preds = %13
  %63 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %64 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tps65217_bl_pdata*, %struct.tps65217_bl_pdata** %5, align 8
  %67 = getelementptr inbounds %struct.tps65217_bl_pdata, %struct.tps65217_bl_pdata* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %93

72:                                               ; preds = %57, %34
  %73 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %74 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TPS65217_REG_WLEDCTRL1, align 4
  %77 = load i32, i32* @TPS65217_WLEDCTRL1_FDIM_MASK, align 4
  %78 = load %struct.tps65217_bl_pdata*, %struct.tps65217_bl_pdata** %5, align 8
  %79 = getelementptr inbounds %struct.tps65217_bl_pdata, %struct.tps65217_bl_pdata* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TPS65217_PROTECT_NONE, align 4
  %82 = call i32 @tps65217_set_bits(i32 %75, i32 %76, i32 %77, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %72
  %86 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %87 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %93

92:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %85, %62, %50, %27, %11
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @tps65217_bl_disable(%struct.tps65217_bl*) #1

declare dso_local i32 @tps65217_clear_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @tps65217_set_bits(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
