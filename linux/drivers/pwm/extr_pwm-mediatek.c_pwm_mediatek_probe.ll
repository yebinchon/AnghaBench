; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mediatek.c_pwm_mediatek_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mediatek.c_pwm_mediatek_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pwm_mediatek_chip = type { %struct.TYPE_3__, %struct.TYPE_4__*, i8**, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"clock: top fail: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"clock: main fail: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pwm%d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"clock: %s fail: %ld\0A\00", align 1
@pwm_mediatek_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"pwmchip_add() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_mediatek_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_mediatek_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pwm_mediatek_chip*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pwm_mediatek_chip* @devm_kzalloc(i32* %10, i32 64, i32 %11)
  store %struct.pwm_mediatek_chip* %12, %struct.pwm_mediatek_chip** %4, align 8
  %13 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %14 = icmp ne %struct.pwm_mediatek_chip* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %201

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.TYPE_4__* @of_device_get_match_data(i32* %20)
  %22 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %23 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %22, i32 0, i32 1
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %5, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = call i8* @devm_ioremap_resource(i32* %28, %struct.resource* %29)
  %31 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %32 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %34 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %33, i32 0, i32 5
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %40 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %39, i32 0, i32 5
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %2, align 4
  br label %201

43:                                               ; preds = %18
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %47 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8** @devm_kcalloc(i32* %45, i32 %50, i32 8, i32 %51)
  %53 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %54 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %53, i32 0, i32 2
  store i8** %52, i8*** %54, align 8
  %55 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %56 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %43
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %201

62:                                               ; preds = %43
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i8* @devm_clk_get(i32* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %67 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %69 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @IS_ERR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %62
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %77 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @PTR_ERR(i8* %78)
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %82 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %2, align 4
  br label %201

85:                                               ; preds = %62
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i8* @devm_clk_get(i32* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %90 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %92 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @IS_ERR(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %85
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %100 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %105 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @PTR_ERR(i8* %106)
  store i32 %107, i32* %2, align 4
  br label %201

108:                                              ; preds = %85
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %163, %108
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %112 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ult i32 %110, %115
  br i1 %116, label %117, label %166

117:                                              ; preds = %109
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %119 = load i32, i32* %6, align 4
  %120 = add i32 %119, 1
  %121 = call i32 @snprintf(i8* %118, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %125 = call i8* @devm_clk_get(i32* %123, i8* %124)
  %126 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %127 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %126, i32 0, i32 2
  %128 = load i8**, i8*** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  store i8* %125, i8** %131, align 8
  %132 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %133 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %132, i32 0, i32 2
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @IS_ERR(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %117
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %145 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %146 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %145, i32 0, i32 2
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @PTR_ERR(i8* %151)
  %153 = call i32 (i32*, i8*, ...) @dev_err(i32* %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %144, i32 %152)
  %154 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %155 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %154, i32 0, i32 2
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @PTR_ERR(i8* %160)
  store i32 %161, i32* %2, align 4
  br label %201

162:                                              ; preds = %117
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %109

166:                                              ; preds = %109
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %169 = call i32 @platform_set_drvdata(%struct.platform_device* %167, %struct.pwm_mediatek_chip* %168)
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %173 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  store i32* %171, i32** %174, align 8
  %175 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %176 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 2
  store i32* @pwm_mediatek_ops, i32** %177, align 8
  %178 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %179 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 -1, i32* %180, align 8
  %181 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %182 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %187 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  store i32 %185, i32* %188, align 4
  %189 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %4, align 8
  %190 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %189, i32 0, i32 0
  %191 = call i32 @pwmchip_add(%struct.TYPE_3__* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %166
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (i32*, i8*, ...) @dev_err(i32* %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %2, align 4
  br label %201

200:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %200, %194, %141, %96, %73, %59, %38, %15
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.pwm_mediatek_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8** @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pwm_mediatek_chip*) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
