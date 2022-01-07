; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g4.c_aspeed_g4_sig_expr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g4.c_aspeed_g4_sig_expr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pinmux_data = type { i32* }
%struct.aspeed_sig_expr = type { i32, %struct.aspeed_sig_desc* }
%struct.aspeed_sig_desc = type { i32, i32, i32, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@ASPEED_IP_SCU = common dso_local global i64 0, align 8
@HW_STRAP1 = common dso_local global i64 0, align 8
@HW_STRAP2 = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32)* @aspeed_g4_sig_expr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_g4_sig_expr_set(%struct.aspeed_pinmux_data* %0, %struct.aspeed_sig_expr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aspeed_pinmux_data*, align 8
  %6 = alloca %struct.aspeed_sig_expr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aspeed_sig_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aspeed_pinmux_data* %0, %struct.aspeed_pinmux_data** %5, align 8
  store %struct.aspeed_sig_expr* %1, %struct.aspeed_sig_expr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %113, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %16 = getelementptr inbounds %struct.aspeed_sig_expr, %struct.aspeed_sig_expr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %116

19:                                               ; preds = %13
  %20 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %21 = getelementptr inbounds %struct.aspeed_sig_expr, %struct.aspeed_sig_expr* %20, i32 0, i32 1
  %22 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %22, i64 %24
  store %struct.aspeed_sig_desc* %25, %struct.aspeed_sig_desc** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %30 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  br label %36

32:                                               ; preds = %19
  %33 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %34 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %40 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @__ffs(i32 %41)
  %43 = shl i32 %38, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %45 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %48 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %36
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %132

56:                                               ; preds = %36
  %57 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %58 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ASPEED_IP_SCU, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %64 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HW_STRAP1, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %70 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @BIT(i32 21)
  %73 = call i32 @BIT(i32 22)
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  br label %113

78:                                               ; preds = %68, %62, %56
  %79 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %80 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ASPEED_IP_SCU, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %86 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HW_STRAP2, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %113

91:                                               ; preds = %84, %78
  %92 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %93 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %96 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %101 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %104 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @regmap_update_bits(i32 %99, i64 %102, i32 %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %91
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %132

112:                                              ; preds = %91
  br label %113

113:                                              ; preds = %112, %90, %77
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %13

116:                                              ; preds = %13
  %117 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %118 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @aspeed_sig_expr_eval(%struct.aspeed_pinmux_data* %117, %struct.aspeed_sig_expr* %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %4, align 4
  br label %132

125:                                              ; preds = %116
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* @EPERM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %132

131:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %128, %123, %110, %53
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @aspeed_sig_expr_eval(%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
