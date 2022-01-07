; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mtk-disp.c_mtk_disp_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mtk-disp.c_mtk_disp_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_disp_pwm = type { i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_3__, i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@mtk_disp_pwm_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"pwmchip_add() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_disp_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_disp_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_disp_pwm*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mtk_disp_pwm* @devm_kzalloc(i32* %8, i32 56, i32 %9)
  store %struct.mtk_disp_pwm* %10, %struct.mtk_disp_pwm** %4, align 8
  %11 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %12 = icmp ne %struct.mtk_disp_pwm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %172

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.TYPE_4__* @of_device_get_match_data(i32* %18)
  %20 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %20, i32 0, i32 2
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %5, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = call i8* @devm_ioremap_resource(i32* %26, %struct.resource* %27)
  %29 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %16
  %37 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %2, align 4
  br label %172

41:                                               ; preds = %16
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i8* @devm_clk_get(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %46 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %48 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %54 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %2, align 4
  br label %172

57:                                               ; preds = %41
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i8* @devm_clk_get(i32* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %62 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %64 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @IS_ERR(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %70 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @PTR_ERR(i8* %71)
  store i32 %72, i32* %2, align 4
  br label %172

73:                                               ; preds = %57
  %74 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %75 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @clk_prepare(i8* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %172

82:                                               ; preds = %73
  %83 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %84 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @clk_prepare(i8* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %166

90:                                               ; preds = %82
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %94 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  store i32* %92, i32** %95, align 8
  %96 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %97 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i32* @mtk_disp_pwm_ops, i32** %98, align 8
  %99 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %100 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32 -1, i32* %101, align 8
  %102 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %103 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  %105 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %106 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %105, i32 0, i32 3
  %107 = call i32 @pwmchip_add(%struct.TYPE_3__* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %90
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %161

115:                                              ; preds = %90
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %118 = call i32 @platform_set_drvdata(%struct.platform_device* %116, %struct.mtk_disp_pwm* %117)
  %119 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %120 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %160, label %125

125:                                              ; preds = %115
  %126 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %127 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %128 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %133 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %138 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @mtk_disp_pwm_update_bits(%struct.mtk_disp_pwm* %126, i32 %131, i32 %136, i32 %141)
  %143 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %144 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %145 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %150 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %149, i32 0, i32 2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %155 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @mtk_disp_pwm_update_bits(%struct.mtk_disp_pwm* %143, i32 %148, i32 %153, i32 %158)
  br label %160

160:                                              ; preds = %125, %115
  store i32 0, i32* %2, align 4
  br label %172

161:                                              ; preds = %110
  %162 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %163 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @clk_unprepare(i8* %164)
  br label %166

166:                                              ; preds = %161, %89
  %167 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %4, align 8
  %168 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @clk_unprepare(i8* %169)
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %166, %160, %80, %68, %52, %36, %13
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.mtk_disp_pwm* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare(i8*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_disp_pwm*) #1

declare dso_local i32 @mtk_disp_pwm_update_bits(%struct.mtk_disp_pwm*, i32, i32, i32) #1

declare dso_local i32 @clk_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
