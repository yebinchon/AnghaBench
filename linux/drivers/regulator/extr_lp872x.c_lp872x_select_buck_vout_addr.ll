; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_select_buck_vout_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_select_buck_vout_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp872x = type { i32 }

@LP872X_GENERAL_CFG = common dso_local global i32 0, align 4
@LP8720_EXT_DVS_M = common dso_local global i32 0, align 4
@DVS_HIGH = common dso_local global i32 0, align 4
@LP8720_BUCK_VOUT1 = common dso_local global i32 0, align 4
@LP8720_BUCK_VOUT2 = common dso_local global i32 0, align 4
@LP8720_ENABLE = common dso_local global i32 0, align 4
@LP8720_DVS_SEL_M = common dso_local global i32 0, align 4
@LP8725_DVS1_M = common dso_local global i32 0, align 4
@LP8725_BUCK1_VOUT1 = common dso_local global i32 0, align 4
@LP8725_BUCK1_VOUT2 = common dso_local global i32 0, align 4
@LP8725_DVS2_M = common dso_local global i32 0, align 4
@LP8725_BUCK2_VOUT1 = common dso_local global i32 0, align 4
@LP8725_BUCK2_VOUT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp872x*, i32)* @lp872x_select_buck_vout_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp872x_select_buck_vout_addr(%struct.lp872x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp872x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lp872x* %0, %struct.lp872x** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lp872x*, %struct.lp872x** %4, align 8
  %9 = load i32, i32* @LP872X_GENERAL_CFG, align 4
  %10 = call i64 @lp872x_read_byte(%struct.lp872x* %8, i32 %9, i32* %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %81 [
    i32 130, label %15
    i32 129, label %50
    i32 128, label %70
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LP8720_EXT_DVS_M, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.lp872x*, %struct.lp872x** %4, align 8
  %22 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DVS_HIGH, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @LP8720_BUCK_VOUT1, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @LP8720_BUCK_VOUT2, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %7, align 4
  br label %49

32:                                               ; preds = %15
  %33 = load %struct.lp872x*, %struct.lp872x** %4, align 8
  %34 = load i32, i32* @LP8720_ENABLE, align 4
  %35 = call i64 @lp872x_read_byte(%struct.lp872x* %33, i32 %34, i32* %6)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %84

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @LP8720_DVS_SEL_M, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @LP8720_BUCK_VOUT1, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @LP8720_BUCK_VOUT2, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %30
  br label %82

50:                                               ; preds = %13
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @LP8725_DVS1_M, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @LP8725_BUCK1_VOUT1, align 4
  store i32 %56, i32* %7, align 4
  br label %69

57:                                               ; preds = %50
  %58 = load %struct.lp872x*, %struct.lp872x** %4, align 8
  %59 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DVS_HIGH, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @LP8725_BUCK1_VOUT1, align 4
  br label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @LP8725_BUCK1_VOUT2, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %55
  br label %82

70:                                               ; preds = %13
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @LP8725_DVS2_M, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @LP8725_BUCK2_VOUT1, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @LP8725_BUCK2_VOUT2, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %7, align 4
  br label %82

81:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %84

82:                                               ; preds = %79, %69, %49
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %81, %37, %12
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @lp872x_read_byte(%struct.lp872x*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
