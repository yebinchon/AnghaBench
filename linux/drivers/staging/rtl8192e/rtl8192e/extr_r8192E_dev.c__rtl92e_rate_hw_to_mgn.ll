; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_rate_hw_to_mgn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_rate_hw_to_mgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MGN_1M = common dso_local global i32 0, align 4
@MGN_2M = common dso_local global i32 0, align 4
@MGN_5_5M = common dso_local global i32 0, align 4
@MGN_11M = common dso_local global i32 0, align 4
@MGN_6M = common dso_local global i32 0, align 4
@MGN_9M = common dso_local global i32 0, align 4
@MGN_12M = common dso_local global i32 0, align 4
@MGN_18M = common dso_local global i32 0, align 4
@MGN_24M = common dso_local global i32 0, align 4
@MGN_36M = common dso_local global i32 0, align 4
@MGN_48M = common dso_local global i32 0, align 4
@MGN_54M = common dso_local global i32 0, align 4
@COMP_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"_rtl92e_rate_hw_to_mgn(): Non supportedRate [%x], bIsHT = %d!!!\0A\00", align 1
@MGN_MCS0 = common dso_local global i32 0, align 4
@MGN_MCS1 = common dso_local global i32 0, align 4
@MGN_MCS2 = common dso_local global i32 0, align 4
@MGN_MCS3 = common dso_local global i32 0, align 4
@MGN_MCS4 = common dso_local global i32 0, align 4
@MGN_MCS5 = common dso_local global i32 0, align 4
@MGN_MCS6 = common dso_local global i32 0, align 4
@MGN_MCS7 = common dso_local global i32 0, align 4
@MGN_MCS8 = common dso_local global i32 0, align 4
@MGN_MCS9 = common dso_local global i32 0, align 4
@MGN_MCS10 = common dso_local global i32 0, align 4
@MGN_MCS11 = common dso_local global i32 0, align 4
@MGN_MCS12 = common dso_local global i32 0, align 4
@MGN_MCS13 = common dso_local global i32 0, align 4
@MGN_MCS14 = common dso_local global i32 0, align 4
@MGN_MCS15 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"_rtl92e_rate_hw_to_mgn(): Non supported Rate [%x], bIsHT = %d!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @_rtl92e_rate_hw_to_mgn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_rate_hw_to_mgn(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 2, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %34 [
    i32 153, label %10
    i32 151, label %12
    i32 147, label %14
    i32 156, label %16
    i32 146, label %18
    i32 145, label %20
    i32 155, label %22
    i32 154, label %24
    i32 152, label %26
    i32 150, label %28
    i32 149, label %30
    i32 148, label %32
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @MGN_1M, align 4
  store i32 %11, i32* %5, align 4
  br label %39

12:                                               ; preds = %8
  %13 = load i32, i32* @MGN_2M, align 4
  store i32 %13, i32* %5, align 4
  br label %39

14:                                               ; preds = %8
  %15 = load i32, i32* @MGN_5_5M, align 4
  store i32 %15, i32* %5, align 4
  br label %39

16:                                               ; preds = %8
  %17 = load i32, i32* @MGN_11M, align 4
  store i32 %17, i32* %5, align 4
  br label %39

18:                                               ; preds = %8
  %19 = load i32, i32* @MGN_6M, align 4
  store i32 %19, i32* %5, align 4
  br label %39

20:                                               ; preds = %8
  %21 = load i32, i32* @MGN_9M, align 4
  store i32 %21, i32* %5, align 4
  br label %39

22:                                               ; preds = %8
  %23 = load i32, i32* @MGN_12M, align 4
  store i32 %23, i32* %5, align 4
  br label %39

24:                                               ; preds = %8
  %25 = load i32, i32* @MGN_18M, align 4
  store i32 %25, i32* %5, align 4
  br label %39

26:                                               ; preds = %8
  %27 = load i32, i32* @MGN_24M, align 4
  store i32 %27, i32* %5, align 4
  br label %39

28:                                               ; preds = %8
  %29 = load i32, i32* @MGN_36M, align 4
  store i32 %29, i32* %5, align 4
  br label %39

30:                                               ; preds = %8
  %31 = load i32, i32* @MGN_48M, align 4
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %8
  %33 = load i32, i32* @MGN_54M, align 4
  store i32 %33, i32* %5, align 4
  br label %39

34:                                               ; preds = %8
  %35 = load i32, i32* @COMP_RECV, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @RT_TRACE(i32 %35, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  br label %81

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  switch i32 %41, label %75 [
    i32 144, label %42
    i32 143, label %44
    i32 136, label %46
    i32 135, label %48
    i32 133, label %50
    i32 132, label %52
    i32 131, label %54
    i32 130, label %56
    i32 129, label %58
    i32 128, label %60
    i32 142, label %62
    i32 141, label %64
    i32 140, label %66
    i32 139, label %68
    i32 138, label %70
    i32 137, label %72
    i32 134, label %74
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* @MGN_MCS0, align 4
  store i32 %43, i32* %5, align 4
  br label %80

44:                                               ; preds = %40
  %45 = load i32, i32* @MGN_MCS1, align 4
  store i32 %45, i32* %5, align 4
  br label %80

46:                                               ; preds = %40
  %47 = load i32, i32* @MGN_MCS2, align 4
  store i32 %47, i32* %5, align 4
  br label %80

48:                                               ; preds = %40
  %49 = load i32, i32* @MGN_MCS3, align 4
  store i32 %49, i32* %5, align 4
  br label %80

50:                                               ; preds = %40
  %51 = load i32, i32* @MGN_MCS4, align 4
  store i32 %51, i32* %5, align 4
  br label %80

52:                                               ; preds = %40
  %53 = load i32, i32* @MGN_MCS5, align 4
  store i32 %53, i32* %5, align 4
  br label %80

54:                                               ; preds = %40
  %55 = load i32, i32* @MGN_MCS6, align 4
  store i32 %55, i32* %5, align 4
  br label %80

56:                                               ; preds = %40
  %57 = load i32, i32* @MGN_MCS7, align 4
  store i32 %57, i32* %5, align 4
  br label %80

58:                                               ; preds = %40
  %59 = load i32, i32* @MGN_MCS8, align 4
  store i32 %59, i32* %5, align 4
  br label %80

60:                                               ; preds = %40
  %61 = load i32, i32* @MGN_MCS9, align 4
  store i32 %61, i32* %5, align 4
  br label %80

62:                                               ; preds = %40
  %63 = load i32, i32* @MGN_MCS10, align 4
  store i32 %63, i32* %5, align 4
  br label %80

64:                                               ; preds = %40
  %65 = load i32, i32* @MGN_MCS11, align 4
  store i32 %65, i32* %5, align 4
  br label %80

66:                                               ; preds = %40
  %67 = load i32, i32* @MGN_MCS12, align 4
  store i32 %67, i32* %5, align 4
  br label %80

68:                                               ; preds = %40
  %69 = load i32, i32* @MGN_MCS13, align 4
  store i32 %69, i32* %5, align 4
  br label %80

70:                                               ; preds = %40
  %71 = load i32, i32* @MGN_MCS14, align 4
  store i32 %71, i32* %5, align 4
  br label %80

72:                                               ; preds = %40
  %73 = load i32, i32* @MGN_MCS15, align 4
  store i32 %73, i32* %5, align 4
  br label %80

74:                                               ; preds = %40
  store i32 160, i32* %5, align 4
  br label %80

75:                                               ; preds = %40
  %76 = load i32, i32* @COMP_RECV, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @RT_TRACE(i32 %76, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42
  br label %81

81:                                               ; preds = %80, %39
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
