; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-tusb1210.c_tusb1210_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-tusb1210.c_tusb1210_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulpi = type { i32 }
%struct.tusb1210 = type { i32, i8*, %struct.ulpi*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ihstx\00", align 1
@TUSB1210_VENDOR_SPECIFIC2_IHSTX_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"zhsdrv\00", align 1
@TUSB1210_VENDOR_SPECIFIC2_ZHSDRV_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"datapolarity\00", align 1
@TUSB1210_VENDOR_SPECIFIC2_DP_SHIFT = common dso_local global i32 0, align 4
@TUSB1210_VENDOR_SPECIFIC2 = common dso_local global i32 0, align 4
@phy_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ulpi*)* @tusb1210_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb1210_probe(%struct.ulpi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ulpi*, align 8
  %4 = alloca %struct.tusb1210*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ulpi* %0, %struct.ulpi** %3, align 8
  %7 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %8 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tusb1210* @devm_kzalloc(i32* %8, i32 40, i32 %9)
  store %struct.tusb1210* %10, %struct.tusb1210** %4, align 8
  %11 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %12 = icmp ne %struct.tusb1210* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %118

16:                                               ; preds = %1
  %17 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %18 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %17, i32 0, i32 0
  %19 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %20 = call i8* @devm_gpiod_get_optional(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %22 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %24 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %23, i32 0, i32 4
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %30 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @PTR_ERR(i8* %31)
  store i32 %32, i32* %2, align 4
  br label %118

33:                                               ; preds = %16
  %34 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %35 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @gpiod_set_value_cansleep(i8* %36, i32 1)
  %38 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %39 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %38, i32 0, i32 0
  %40 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %41 = call i8* @devm_gpiod_get_optional(i32* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %43 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %45 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %33
  %50 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %51 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %2, align 4
  br label %118

54:                                               ; preds = %33
  %55 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %56 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @gpiod_set_value_cansleep(i8* %57, i32 1)
  %59 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %60 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %59, i32 0, i32 0
  %61 = call i32 @device_property_read_u8(i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @TUSB1210_VENDOR_SPECIFIC2_IHSTX_SHIFT, align 4
  %64 = shl i32 %62, %63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %66 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %65, i32 0, i32 0
  %67 = call i32 @device_property_read_u8(i32* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @TUSB1210_VENDOR_SPECIFIC2_ZHSDRV_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %74 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %73, i32 0, i32 0
  %75 = call i32 @device_property_read_u8(i32* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @TUSB1210_VENDOR_SPECIFIC2_DP_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %54
  %84 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %85 = load i32, i32* @TUSB1210_VENDOR_SPECIFIC2, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @ulpi_write(%struct.ulpi* %84, i32 %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %90 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %83, %54
  %92 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %93 = call i8* @ulpi_phy_create(%struct.ulpi* %92, i32* @phy_ops)
  %94 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %95 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %97 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @IS_ERR(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %103 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @PTR_ERR(i8* %104)
  store i32 %105, i32* %2, align 4
  br label %118

106:                                              ; preds = %91
  %107 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %108 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %109 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %108, i32 0, i32 2
  store %struct.ulpi* %107, %struct.ulpi** %109, align 8
  %110 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %111 = getelementptr inbounds %struct.tusb1210, %struct.tusb1210* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %114 = call i32 @phy_set_drvdata(i8* %112, %struct.tusb1210* %113)
  %115 = load %struct.ulpi*, %struct.ulpi** %3, align 8
  %116 = load %struct.tusb1210*, %struct.tusb1210** %4, align 8
  %117 = call i32 @ulpi_set_drvdata(%struct.ulpi* %115, %struct.tusb1210* %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %106, %101, %49, %28, %13
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.tusb1210* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i8*, i32) #1

declare dso_local i32 @device_property_read_u8(i32*, i8*, i32*) #1

declare dso_local i32 @ulpi_write(%struct.ulpi*, i32, i32) #1

declare dso_local i8* @ulpi_phy_create(%struct.ulpi*, i32*) #1

declare dso_local i32 @phy_set_drvdata(i8*, %struct.tusb1210*) #1

declare dso_local i32 @ulpi_set_drvdata(%struct.ulpi*, %struct.tusb1210*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
