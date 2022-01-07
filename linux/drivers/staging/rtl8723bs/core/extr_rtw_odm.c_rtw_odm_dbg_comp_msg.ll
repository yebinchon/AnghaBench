; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_odm.c_rtw_odm_dbg_comp_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_odm.c_rtw_odm_dbg_comp_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@HW_DEF_ODM_DBG_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"odm.DebugComponents = 0x%016llx\0A\00", align 1
@RTW_ODM_COMP_MAX = common dso_local global i32 0, align 4
@odm_comp_str = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%cBIT%-2d %s\0A\00", align 1
@BIT0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_odm_dbg_comp_msg(i8* %0, %struct.adapter* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.adapter* %1, %struct.adapter** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = load i32, i32* @HW_DEF_ODM_DBG_FLAG, align 4
  %9 = call i32 @rtw_hal_get_def_var(%struct.adapter* %7, i32 %8, i32* %5)
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = trunc i32 %11 to i8
  %13 = call i32 (i8*, i8*, i8, ...) @DBG_871X_SEL_NL(i8* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 signext %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %44, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RTW_ODM_COMP_MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load i64*, i64** @odm_comp_str, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %18
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @BIT0, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 43, i32 32
  %35 = trunc i32 %34 to i8
  %36 = load i32, i32* %6, align 4
  %37 = load i64*, i64** @odm_comp_str, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, i8*, i8, ...) @DBG_871X_SEL_NL(i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8 signext %35, i32 %36, i64 %41)
  br label %43

43:                                               ; preds = %25, %18
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %14

47:                                               ; preds = %14
  ret void
}

declare dso_local i32 @rtw_hal_get_def_var(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @DBG_871X_SEL_NL(i8*, i8*, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
