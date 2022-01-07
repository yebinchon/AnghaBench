; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_check_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_check_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALUA_AO_SUP = common dso_local global i32 0, align 4
@ALUA_AN_SUP = common dso_local global i32 0, align 4
@ALUA_S_SUP = common dso_local global i32 0, align 4
@ALUA_U_SUP = common dso_local global i32 0, align 4
@ALUA_LBD_SUP = common dso_local global i32 0, align 4
@ALUA_O_SUP = common dso_local global i32 0, align 4
@ALUA_T_SUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unknown ALUA access state: 0x%02x\0A\00", align 1
@TCM_INVALID_PARAMETER_LIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ALUA access state %s not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @core_alua_check_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_alua_check_transition(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %70 [
    i32 133, label %11
    i32 134, label %19
    i32 130, label %27
    i32 128, label %35
    i32 132, label %43
    i32 131, label %51
    i32 129, label %59
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ALUA_AO_SUP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %75

17:                                               ; preds = %11
  %18 = load i32*, i32** %8, align 8
  store i32 1, i32* %18, align 4
  br label %74

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ALUA_AN_SUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %75

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  store i32 1, i32* %26, align 4
  br label %74

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ALUA_S_SUP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %75

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  store i32 1, i32* %34, align 4
  br label %74

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ALUA_U_SUP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %75

41:                                               ; preds = %35
  %42 = load i32*, i32** %8, align 8
  store i32 1, i32* %42, align 4
  br label %74

43:                                               ; preds = %4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ALUA_LBD_SUP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %75

49:                                               ; preds = %43
  %50 = load i32*, i32** %8, align 8
  store i32 1, i32* %50, align 4
  br label %74

51:                                               ; preds = %4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ALUA_O_SUP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %75

57:                                               ; preds = %51
  %58 = load i32*, i32** %8, align 8
  store i32 0, i32* %58, align 4
  br label %74

59:                                               ; preds = %4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @ALUA_T_SUP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %59
  br label %75

68:                                               ; preds = %64
  %69 = load i32*, i32** %8, align 8
  store i32 0, i32* %69, align 4
  br label %74

70:                                               ; preds = %4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @TCM_INVALID_PARAMETER_LIST, align 4
  store i32 %73, i32* %5, align 4
  br label %80

74:                                               ; preds = %68, %57, %49, %41, %33, %25, %17
  store i32 0, i32* %5, align 4
  br label %80

75:                                               ; preds = %67, %56, %48, %40, %32, %24, %16
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @core_alua_dump_state(i32 %76)
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @TCM_INVALID_PARAMETER_LIST, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %75, %74, %70
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @core_alua_dump_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
