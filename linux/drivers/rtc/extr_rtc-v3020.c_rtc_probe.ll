; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-v3020.c_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-v3020.c_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.v3020*, %struct.platform_device*, %struct.v3020_platform_data*)*, i32 (%struct.v3020*)*, i32 (%struct.v3020*)* }
%struct.v3020 = type { %struct.TYPE_7__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.v3020_platform_data = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v3020_gpio_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@v3020_mmio_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@V3020_SECONDS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@V3020_STATUS_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Chip available at GPIOs %d, %d, %d, %d\0A\00", align 1
@V3020_CS = common dso_local global i64 0, align 8
@V3020_WR = common dso_local global i64 0, align 8
@V3020_RD = common dso_local global i64 0, align 8
@V3020_IO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"Chip available at physical address 0x%llx,data connected to D%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"v3020\00", align 1
@v3020_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.v3020_platform_data*, align 8
  %5 = alloca %struct.v3020*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.v3020_platform_data* @dev_get_platdata(i32* %10)
  store %struct.v3020_platform_data* %11, %struct.v3020_platform_data** %4, align 8
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.v3020* @devm_kzalloc(i32* %15, i32 24, i32 %16)
  store %struct.v3020* %17, %struct.v3020** %5, align 8
  %18 = load %struct.v3020*, %struct.v3020** %5, align 8
  %19 = icmp ne %struct.v3020* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %158

23:                                               ; preds = %1
  %24 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %4, align 8
  %25 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.v3020*, %struct.v3020** %5, align 8
  %30 = getelementptr inbounds %struct.v3020, %struct.v3020* %29, i32 0, i32 0
  store %struct.TYPE_7__* @v3020_gpio_ops, %struct.TYPE_7__** %30, align 8
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.v3020*, %struct.v3020** %5, align 8
  %33 = getelementptr inbounds %struct.v3020, %struct.v3020* %32, i32 0, i32 0
  store %struct.TYPE_7__* @v3020_mmio_ops, %struct.TYPE_7__** %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.v3020*, %struct.v3020** %5, align 8
  %36 = getelementptr inbounds %struct.v3020, %struct.v3020* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32 (%struct.v3020*, %struct.platform_device*, %struct.v3020_platform_data*)*, i32 (%struct.v3020*, %struct.platform_device*, %struct.v3020_platform_data*)** %38, align 8
  %40 = load %struct.v3020*, %struct.v3020** %5, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %4, align 8
  %43 = call i32 %39(%struct.v3020* %40, %struct.platform_device* %41, %struct.v3020_platform_data* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %158

48:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %60, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.v3020*, %struct.v3020** %5, align 8
  %54 = getelementptr inbounds %struct.v3020, %struct.v3020* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32 (%struct.v3020*)*, i32 (%struct.v3020*)** %56, align 8
  %58 = load %struct.v3020*, %struct.v3020** %5, align 8
  %59 = call i32 %57(%struct.v3020* %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %49

63:                                               ; preds = %49
  %64 = load %struct.v3020*, %struct.v3020** %5, align 8
  %65 = load i32, i32* @V3020_SECONDS, align 4
  %66 = call i32 @v3020_set_reg(%struct.v3020* %64, i32 %65, i32 51)
  %67 = load %struct.v3020*, %struct.v3020** %5, align 8
  %68 = load i32, i32* @V3020_SECONDS, align 4
  %69 = call i32 @v3020_get_reg(%struct.v3020* %67, i32 %68)
  %70 = icmp ne i32 %69, 51
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %149

74:                                               ; preds = %63
  %75 = load %struct.v3020*, %struct.v3020** %5, align 8
  %76 = load i32, i32* @V3020_STATUS_0, align 4
  %77 = call i32 @v3020_set_reg(%struct.v3020* %75, i32 %76, i32 0)
  %78 = load %struct.v3020_platform_data*, %struct.v3020_platform_data** %4, align 8
  %79 = getelementptr inbounds %struct.v3020_platform_data, %struct.v3020_platform_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %115

82:                                               ; preds = %74
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.v3020*, %struct.v3020** %5, align 8
  %86 = getelementptr inbounds %struct.v3020, %struct.v3020* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i64, i64* @V3020_CS, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.v3020*, %struct.v3020** %5, align 8
  %94 = getelementptr inbounds %struct.v3020, %struct.v3020* %93, i32 0, i32 3
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i64, i64* @V3020_WR, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v3020*, %struct.v3020** %5, align 8
  %101 = getelementptr inbounds %struct.v3020, %struct.v3020* %100, i32 0, i32 3
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i64, i64* @V3020_RD, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.v3020*, %struct.v3020** %5, align 8
  %108 = getelementptr inbounds %struct.v3020, %struct.v3020* %107, i32 0, i32 3
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i64, i64* @V3020_IO, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32*, i8*, i64, i32, ...) @dev_info(i32* %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %92, i32 %99, i32 %106, i32 %113)
  br label %128

115:                                              ; preds = %74
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.v3020*, %struct.v3020** %5, align 8
  %125 = getelementptr inbounds %struct.v3020, %struct.v3020* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32*, i8*, i64, i32, ...) @dev_info(i32* %117, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %123, i32 %126)
  br label %128

128:                                              ; preds = %115, %82
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = load %struct.v3020*, %struct.v3020** %5, align 8
  %131 = call i32 @platform_set_drvdata(%struct.platform_device* %129, %struct.v3020* %130)
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load i32, i32* @THIS_MODULE, align 4
  %135 = call i32 @devm_rtc_device_register(i32* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* @v3020_rtc_ops, i32 %134)
  %136 = load %struct.v3020*, %struct.v3020** %5, align 8
  %137 = getelementptr inbounds %struct.v3020, %struct.v3020* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load %struct.v3020*, %struct.v3020** %5, align 8
  %139 = getelementptr inbounds %struct.v3020, %struct.v3020* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @IS_ERR(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %128
  %144 = load %struct.v3020*, %struct.v3020** %5, align 8
  %145 = getelementptr inbounds %struct.v3020, %struct.v3020* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @PTR_ERR(i32 %146)
  store i32 %147, i32* %6, align 4
  br label %149

148:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %158

149:                                              ; preds = %143, %71
  %150 = load %struct.v3020*, %struct.v3020** %5, align 8
  %151 = getelementptr inbounds %struct.v3020, %struct.v3020* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32 (%struct.v3020*)*, i32 (%struct.v3020*)** %153, align 8
  %155 = load %struct.v3020*, %struct.v3020** %5, align 8
  %156 = call i32 %154(%struct.v3020* %155)
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %149, %148, %46, %20
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.v3020_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.v3020* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v3020_set_reg(%struct.v3020*, i32, i32) #1

declare dso_local i32 @v3020_get_reg(%struct.v3020*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i32, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.v3020*) #1

declare dso_local i32 @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
