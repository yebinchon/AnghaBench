; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g6.c_aspeed_g6_sig_expr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g6.c_aspeed_g6_sig_expr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pinmux_data = type { i32* }
%struct.aspeed_sig_expr = type { i32, %struct.aspeed_sig_desc* }
%struct.aspeed_sig_desc = type { i32, i32, i32, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@ASPEED_IP_SCU = common dso_local global i64 0, align 8
@SCU500 = common dso_local global i64 0, align 8
@SCU510 = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32)* @aspeed_g6_sig_expr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_g6_sig_expr_set(%struct.aspeed_pinmux_data* %0, %struct.aspeed_sig_expr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aspeed_pinmux_data*, align 8
  %6 = alloca %struct.aspeed_sig_expr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aspeed_sig_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.aspeed_pinmux_data* %0, %struct.aspeed_pinmux_data** %5, align 8
  store %struct.aspeed_sig_expr* %1, %struct.aspeed_sig_expr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %136, %3
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %19 = getelementptr inbounds %struct.aspeed_sig_expr, %struct.aspeed_sig_expr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %139

22:                                               ; preds = %16
  %23 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %24 = getelementptr inbounds %struct.aspeed_sig_expr, %struct.aspeed_sig_expr* %23, i32 0, i32 1
  %25 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %25, i64 %27
  store %struct.aspeed_sig_desc* %28, %struct.aspeed_sig_desc** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %33 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %39

35:                                               ; preds = %22
  %36 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %37 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %34, %31 ], [ %38, %35 ]
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %43 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @__ffs(i32 %44)
  %46 = shl i32 %41, %45
  store i32 %46, i32* %12, align 4
  %47 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %48 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %51 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %39
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %155

59:                                               ; preds = %39
  %60 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %61 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ASPEED_IP_SCU, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @WARN_ON(i32 %65)
  %67 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %68 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SCU500, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %59
  %73 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %74 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SCU510, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %72, %59
  %79 = phi i1 [ true, %59 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %87 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %85, %88
  store i32 %89, i32* %14, align 4
  %90 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %91 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 4
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %83
  %98 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %99 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %102 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %108 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @regmap_update_bits(i32 %105, i32 %106, i32 %109, i32 %110)
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %97, %83
  br label %113

113:                                              ; preds = %112, %78
  %114 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %115 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %118 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %123 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %127 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @regmap_update_bits(i32 %121, i32 %125, i32 %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %113
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %4, align 4
  br label %155

135:                                              ; preds = %113
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %16

139:                                              ; preds = %16
  %140 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %141 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @aspeed_sig_expr_eval(%struct.aspeed_pinmux_data* %140, %struct.aspeed_sig_expr* %141, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %4, align 4
  br label %155

148:                                              ; preds = %139
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @EPERM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %155

154:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %151, %146, %133, %56
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @aspeed_sig_expr_eval(%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
