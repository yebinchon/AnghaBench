; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_debug.c_rf_reg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_debug.c_rf_reg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@HW_VAR_RF_TYPE = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i64 0, align 8
@RF_1T1R = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"======= RF REG =======\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"RF_Path(%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" 0x%08x \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rf_reg_dump(i8* %0, %struct.adapter* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.adapter* %1, %struct.adapter** %4, align 8
  store i32 1, i32* %6, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = load i32, i32* @HW_VAR_RF_TYPE, align 4
  %13 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %11, i32 %12, i64* %9)
  %14 = load i64, i64* @RF_1T2R, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @RF_1T1R, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  store i64 1, i64* %10, align 8
  br label %23

22:                                               ; preds = %17
  store i64 2, i64* %10, align 8
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i8*, i8*, ...) @DBG_871X_SEL_NL(i8* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %66, %23
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %10, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i8*, i8*, ...) @DBG_871X_SEL_NL(i8* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %62, %31
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 256
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load %struct.adapter*, %struct.adapter** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @rtw_hal_read_rfreg(%struct.adapter* %39, i32 %40, i32 %41, i32 -1)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = srem i32 %43, 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i8*, i8*, ...) @DBG_871X_SEL_NL(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i8*, i8*, ...) @DBG_871X_SEL(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = srem i32 %54, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 (i8*, i8*, ...) @DBG_871X_SEL(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %35

65:                                               ; preds = %35
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %26

69:                                               ; preds = %26
  ret void
}

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i64*) #1

declare dso_local i32 @DBG_871X_SEL_NL(i8*, i8*, ...) #1

declare dso_local i32 @rtw_hal_read_rfreg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @DBG_871X_SEL(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
