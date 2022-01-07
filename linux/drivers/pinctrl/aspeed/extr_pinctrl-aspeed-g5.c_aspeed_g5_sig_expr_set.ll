; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g5.c_aspeed_g5_sig_expr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g5.c_aspeed_g5_sig_expr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pinmux_data = type { i32*, i32 }
%struct.aspeed_sig_expr = type { i32, %struct.aspeed_sig_desc* }
%struct.aspeed_sig_desc = type { i32, i32, i32, i64, i64 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to acquire regmap for IP block %d\0A\00", align 1
@ASPEED_IP_SCU = common dso_local global i64 0, align 8
@HW_STRAP1 = common dso_local global i64 0, align 8
@HW_STRAP2 = common dso_local global i64 0, align 8
@HW_REVISION_ID = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32)* @aspeed_g5_sig_expr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_g5_sig_expr_set(%struct.aspeed_pinmux_data* %0, %struct.aspeed_sig_expr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aspeed_pinmux_data*, align 8
  %6 = alloca %struct.aspeed_sig_expr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aspeed_sig_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.regmap*, align 8
  %14 = alloca i32, align 4
  store %struct.aspeed_pinmux_data* %0, %struct.aspeed_pinmux_data** %5, align 8
  store %struct.aspeed_sig_expr* %1, %struct.aspeed_sig_expr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %160, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %18 = getelementptr inbounds %struct.aspeed_sig_expr, %struct.aspeed_sig_expr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %163

21:                                               ; preds = %15
  %22 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %23 = getelementptr inbounds %struct.aspeed_sig_expr, %struct.aspeed_sig_expr* %22, i32 0, i32 1
  %24 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %24, i64 %26
  store %struct.aspeed_sig_desc* %27, %struct.aspeed_sig_desc** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %32 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  br label %38

34:                                               ; preds = %21
  %35 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %36 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %33, %30 ], [ %37, %34 ]
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %42 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @__ffs(i32 %43)
  %45 = shl i32 %40, %44
  store i32 %45, i32* %12, align 4
  %46 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %47 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %48 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.regmap* @aspeed_g5_acquire_regmap(%struct.aspeed_pinmux_data* %46, i64 %49)
  store %struct.regmap* %50, %struct.regmap** %13, align 8
  %51 = load %struct.regmap*, %struct.regmap** %13, align 8
  %52 = call i64 @IS_ERR(%struct.regmap* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %38
  %55 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %56 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %59 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load %struct.regmap*, %struct.regmap** %13, align 8
  %63 = call i32 @PTR_ERR(%struct.regmap* %62)
  store i32 %63, i32* %4, align 4
  br label %179

64:                                               ; preds = %38
  %65 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %66 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ASPEED_IP_SCU, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %72 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HW_STRAP1, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %78 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @BIT(i32 21)
  %81 = call i32 @BIT(i32 22)
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  br label %160

86:                                               ; preds = %76, %70, %64
  %87 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %88 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ASPEED_IP_SCU, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %94 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @HW_STRAP2, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %160

99:                                               ; preds = %92, %86
  %100 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %101 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ASPEED_IP_SCU, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %138

105:                                              ; preds = %99
  %106 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %107 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HW_STRAP1, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %105
  %112 = load i32, i32* %12, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %115 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %113, %116
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %111
  %121 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %122 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %125 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @HW_REVISION_ID, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @regmap_write(i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %120
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  br label %179

136:                                              ; preds = %120
  br label %137

137:                                              ; preds = %136, %111
  br label %138

138:                                              ; preds = %137, %105, %99
  %139 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %140 = getelementptr inbounds %struct.aspeed_pinmux_data, %struct.aspeed_pinmux_data* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %143 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %148 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.aspeed_sig_desc*, %struct.aspeed_sig_desc** %10, align 8
  %151 = getelementptr inbounds %struct.aspeed_sig_desc, %struct.aspeed_sig_desc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @regmap_update_bits(i32 %146, i64 %149, i32 %152, i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %138
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %4, align 4
  br label %179

159:                                              ; preds = %138
  br label %160

160:                                              ; preds = %159, %98, %85
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %15

163:                                              ; preds = %15
  %164 = load %struct.aspeed_pinmux_data*, %struct.aspeed_pinmux_data** %5, align 8
  %165 = load %struct.aspeed_sig_expr*, %struct.aspeed_sig_expr** %6, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @aspeed_sig_expr_eval(%struct.aspeed_pinmux_data* %164, %struct.aspeed_sig_expr* %165, i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %4, align 4
  br label %179

172:                                              ; preds = %163
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* @EPERM, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  br label %179

178:                                              ; preds = %172
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %178, %175, %170, %157, %134, %54
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local %struct.regmap* @aspeed_g5_acquire_regmap(%struct.aspeed_pinmux_data*, i64) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @aspeed_sig_expr_eval(%struct.aspeed_pinmux_data*, %struct.aspeed_sig_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
