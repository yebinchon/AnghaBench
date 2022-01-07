; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf_cfg.c_rtl88e_phy_config_rf_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf_cfg.c_rtl88e_phy_config_rf_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@Array_RadioA_1T_8188E = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @rtl88e_phy_config_rf_with_headerfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl88e_phy_config_rf_with_headerfile(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load i32*, i32** @Array_RadioA_1T_8188E, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** @Array_RadioA_1T_8188E, align 8
  store i32* %10, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %121, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %124

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %27, -842150451
  br i1 %28, label %29, label %34

29:                                               ; preds = %15
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @rtl8188e_config_rf_reg(%struct.adapter* %30, i32 %31, i32 %32)
  br label %121

34:                                               ; preds = %15
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @check_condition(%struct.adapter* %35, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @READ_NEXT_PAIR(i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %64, %43
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 57005
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 52719
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 52685
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 2
  %61 = icmp slt i32 %58, %60
  br label %62

62:                                               ; preds = %57, %54, %51, %48
  %63 = phi i1 [ false, %54 ], [ false, %51 ], [ false, %48 ], [ %61, %57 ]
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @READ_NEXT_PAIR(i32 %65, i32 %66, i32 %67)
  br label %48

69:                                               ; preds = %62
  %70 = load i32, i32* %3, align 4
  %71 = sub nsw i32 %70, 2
  store i32 %71, i32* %3, align 4
  br label %119

72:                                               ; preds = %34
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @READ_NEXT_PAIR(i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %93, %72
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 57005
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 52719
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 52685
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %88, 2
  %90 = icmp slt i32 %87, %89
  br label %91

91:                                               ; preds = %86, %83, %80, %77
  %92 = phi i1 [ false, %83 ], [ false, %80 ], [ false, %77 ], [ %90, %86 ]
  br i1 %92, label %93, label %102

93:                                               ; preds = %91
  %94 = load %struct.adapter*, %struct.adapter** %2, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @rtl8188e_config_rf_reg(%struct.adapter* %94, i32 %95, i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @READ_NEXT_PAIR(i32 %98, i32 %99, i32 %100)
  br label %77

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %113, %102
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 57005
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %4, align 4
  %109 = sub nsw i32 %108, 2
  %110 = icmp slt i32 %107, %109
  br label %111

111:                                              ; preds = %106, %103
  %112 = phi i1 [ false, %103 ], [ %110, %106 ]
  br i1 %112, label %113, label %118

113:                                              ; preds = %111
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @READ_NEXT_PAIR(i32 %114, i32 %115, i32 %116)
  br label %103

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %69
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120, %29
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 2
  store i32 %123, i32* %3, align 4
  br label %11

124:                                              ; preds = %11
  ret i32 1
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rtl8188e_config_rf_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @check_condition(%struct.adapter*, i32) #1

declare dso_local i32 @READ_NEXT_PAIR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
