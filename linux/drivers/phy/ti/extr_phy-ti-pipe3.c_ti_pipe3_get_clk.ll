; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_get_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_get_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pipe3 = type { i64, %struct.clk*, %struct.clk*, i64, %struct.clk*, %struct.clk*, %struct.device* }
%struct.clk = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to get refclk\0A\00", align 1
@PIPE3_MODE_SATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"wkupclk\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unable to get wkupclk\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PIPE3_MODE_PCIE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"sysclk\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"unable to get sysclk\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"dpll_ref\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"unable to get dpll ref clk\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"dpll_ref_m2\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"unable to get dpll ref m2 clk\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"phy-div\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"unable to get phy-div clk\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"div-clk\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"unable to get div-clk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_pipe3*)* @ti_pipe3_get_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pipe3_get_clk(%struct.ti_pipe3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_pipe3*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.ti_pipe3* %0, %struct.ti_pipe3** %3, align 8
  %6 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %7 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %6, i32 0, i32 6
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call i8* @devm_clk_get(%struct.device* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = bitcast i8* %10 to %struct.clk*
  %12 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %13 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %12, i32 0, i32 5
  store %struct.clk* %11, %struct.clk** %13, align 8
  %14 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %15 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %14, i32 0, i32 5
  %16 = load %struct.clk*, %struct.clk** %15, align 8
  %17 = call i64 @IS_ERR(%struct.clk* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %23 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PIPE3_MODE_SATA, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %29 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %28, i32 0, i32 5
  %30 = load %struct.clk*, %struct.clk** %29, align 8
  %31 = call i32 @PTR_ERR(%struct.clk* %30)
  store i32 %31, i32* %2, align 4
  br label %168

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %35 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PIPE3_MODE_SATA, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i8* @devm_clk_get(%struct.device* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %42 = bitcast i8* %41 to %struct.clk*
  %43 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %44 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %43, i32 0, i32 4
  store %struct.clk* %42, %struct.clk** %44, align 8
  %45 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %46 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %45, i32 0, i32 4
  %47 = load %struct.clk*, %struct.clk** %46, align 8
  %48 = call i64 @IS_ERR(%struct.clk* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %54 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %53, i32 0, i32 4
  %55 = load %struct.clk*, %struct.clk** %54, align 8
  %56 = call i32 @PTR_ERR(%struct.clk* %55)
  store i32 %56, i32* %2, align 4
  br label %168

57:                                               ; preds = %39
  br label %65

58:                                               ; preds = %33
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i8* @ERR_PTR(i32 %60)
  %62 = bitcast i8* %61 to %struct.clk*
  %63 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %64 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %63, i32 0, i32 4
  store %struct.clk* %62, %struct.clk** %64, align 8
  br label %65

65:                                               ; preds = %58, %57
  %66 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %67 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PIPE3_MODE_PCIE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %73 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71, %65
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = call i8* @devm_clk_get(%struct.device* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %79 = bitcast i8* %78 to %struct.clk*
  %80 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %81 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %80, i32 0, i32 2
  store %struct.clk* %79, %struct.clk** %81, align 8
  %82 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %83 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %82, i32 0, i32 2
  %84 = load %struct.clk*, %struct.clk** %83, align 8
  %85 = call i64 @IS_ERR(%struct.clk* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %168

92:                                               ; preds = %76
  br label %93

93:                                               ; preds = %92, %71
  %94 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %95 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PIPE3_MODE_PCIE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %160

99:                                               ; preds = %93
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = call i8* @devm_clk_get(%struct.device* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %102 = bitcast i8* %101 to %struct.clk*
  store %struct.clk* %102, %struct.clk** %4, align 8
  %103 = load %struct.clk*, %struct.clk** %4, align 8
  %104 = call i64 @IS_ERR(%struct.clk* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %109 = load %struct.clk*, %struct.clk** %4, align 8
  %110 = call i32 @PTR_ERR(%struct.clk* %109)
  store i32 %110, i32* %2, align 4
  br label %168

111:                                              ; preds = %99
  %112 = load %struct.clk*, %struct.clk** %4, align 8
  %113 = call i32 @clk_set_rate(%struct.clk* %112, i32 1500000000)
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i8* @devm_clk_get(%struct.device* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %116 = bitcast i8* %115 to %struct.clk*
  store %struct.clk* %116, %struct.clk** %4, align 8
  %117 = load %struct.clk*, %struct.clk** %4, align 8
  %118 = call i64 @IS_ERR(%struct.clk* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %123 = load %struct.clk*, %struct.clk** %4, align 8
  %124 = call i32 @PTR_ERR(%struct.clk* %123)
  store i32 %124, i32* %2, align 4
  br label %168

125:                                              ; preds = %111
  %126 = load %struct.clk*, %struct.clk** %4, align 8
  %127 = call i32 @clk_set_rate(%struct.clk* %126, i32 100000000)
  %128 = load %struct.device*, %struct.device** %5, align 8
  %129 = call i8* @devm_clk_get(%struct.device* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %130 = bitcast i8* %129 to %struct.clk*
  store %struct.clk* %130, %struct.clk** %4, align 8
  %131 = load %struct.clk*, %struct.clk** %4, align 8
  %132 = call i64 @IS_ERR(%struct.clk* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %125
  %135 = load %struct.device*, %struct.device** %5, align 8
  %136 = call i32 @dev_err(%struct.device* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %137 = load %struct.clk*, %struct.clk** %4, align 8
  %138 = call i32 @PTR_ERR(%struct.clk* %137)
  store i32 %138, i32* %2, align 4
  br label %168

139:                                              ; preds = %125
  %140 = load %struct.clk*, %struct.clk** %4, align 8
  %141 = call i32 @clk_set_rate(%struct.clk* %140, i32 100000000)
  %142 = load %struct.device*, %struct.device** %5, align 8
  %143 = call i8* @devm_clk_get(%struct.device* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %144 = bitcast i8* %143 to %struct.clk*
  %145 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %146 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %145, i32 0, i32 1
  store %struct.clk* %144, %struct.clk** %146, align 8
  %147 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %148 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %147, i32 0, i32 1
  %149 = load %struct.clk*, %struct.clk** %148, align 8
  %150 = call i64 @IS_ERR(%struct.clk* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %139
  %153 = load %struct.device*, %struct.device** %5, align 8
  %154 = call i32 @dev_err(%struct.device* %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %155 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %156 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %155, i32 0, i32 1
  %157 = load %struct.clk*, %struct.clk** %156, align 8
  %158 = call i32 @PTR_ERR(%struct.clk* %157)
  store i32 %158, i32* %2, align 4
  br label %168

159:                                              ; preds = %139
  br label %167

160:                                              ; preds = %93
  %161 = load i32, i32* @ENODEV, align 4
  %162 = sub nsw i32 0, %161
  %163 = call i8* @ERR_PTR(i32 %162)
  %164 = bitcast i8* %163 to %struct.clk*
  %165 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %166 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %165, i32 0, i32 1
  store %struct.clk* %164, %struct.clk** %166, align 8
  br label %167

167:                                              ; preds = %160, %159
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %167, %152, %134, %120, %106, %87, %50, %27
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
