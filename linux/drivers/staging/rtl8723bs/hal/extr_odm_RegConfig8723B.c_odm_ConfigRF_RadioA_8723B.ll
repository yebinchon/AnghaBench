; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_RegConfig8723B.c_odm_ConfigRF_RadioA_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_RegConfig8723B.c_odm_ConfigRF_RadioA_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ODM_RF_PATH_A = common dso_local global i32 0, align 4
@ODM_COMP_INIT = common dso_local global i32 0, align 4
@ODM_DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"===> ODM_ConfigRFWithHeaderFile: [RadioA] %08X %08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_ConfigRF_RadioA_8723B(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 4096, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = and i32 %9, 57344
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ODM_RF_PATH_A, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @odm_ConfigRFReg_8723B(i32 %11, i32 %12, i32 %13, i32 %14, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ODM_COMP_INIT, align 4
  %21 = load i32, i32* @ODM_DBG_TRACE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @ODM_RT_TRACE(i32 %19, i32 %20, i32 %21, i8* %25)
  ret void
}

declare dso_local i32 @odm_ConfigRFReg_8723B(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ODM_RT_TRACE(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
