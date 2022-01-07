; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-st-lpc.c_st_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-st-lpc.c_st_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.st_rtc = type { %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"st,lpc-mode\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"An LPC mode must be provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ST_LPC_MODE_RTC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"IRQ missing or invalid\0A\00", align 1
@st_rtc_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to request irq %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Unable to request clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Unable to fetch clock rate\0A\00", align 1
@st_rtc_ops = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.st_rtc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call i32 @of_property_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %202

23:                                               ; preds = %1
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @ST_LPC_MODE_RTC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %202

30:                                               ; preds = %23
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.st_rtc* @devm_kzalloc(%struct.TYPE_18__* %32, i32 40, i32 %33)
  store %struct.st_rtc* %34, %struct.st_rtc** %5, align 8
  %35 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %36 = icmp ne %struct.st_rtc* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %202

40:                                               ; preds = %30
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call %struct.TYPE_17__* @devm_rtc_allocate_device(%struct.TYPE_18__* %42)
  %44 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %45 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %44, i32 0, i32 1
  store %struct.TYPE_17__* %43, %struct.TYPE_17__** %45, align 8
  %46 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %47 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = call i64 @IS_ERR(%struct.TYPE_17__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %53 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = call i32 @PTR_ERR(%struct.TYPE_17__* %54)
  store i32 %55, i32* %2, align 4
  br label %202

56:                                               ; preds = %40
  %57 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %58 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %57, i32 0, i32 5
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load i32, i32* @IORESOURCE_MEM, align 4
  %62 = call %struct.resource* @platform_get_resource(%struct.platform_device* %60, i32 %61, i32 0)
  store %struct.resource* %62, %struct.resource** %6, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.resource*, %struct.resource** %6, align 8
  %66 = call %struct.TYPE_17__* @devm_ioremap_resource(%struct.TYPE_18__* %64, %struct.resource* %65)
  %67 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %68 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %67, i32 0, i32 4
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %68, align 8
  %69 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %70 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %69, i32 0, i32 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = call i64 @IS_ERR(%struct.TYPE_17__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %56
  %75 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %76 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %75, i32 0, i32 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = call i32 @PTR_ERR(%struct.TYPE_17__* %77)
  store i32 %78, i32* %2, align 4
  br label %202

79:                                               ; preds = %56
  %80 = load %struct.device_node*, %struct.device_node** %4, align 8
  %81 = call i32 @irq_of_parse_and_map(%struct.device_node* %80, i32 0)
  %82 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %83 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %85 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %79
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %202

94:                                               ; preds = %79
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %98 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @st_rtc_handler, align 4
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %105 = call i32 @devm_request_irq(%struct.TYPE_18__* %96, i32 %99, i32 %100, i32 0, i32 %103, %struct.st_rtc* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %94
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %112 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %2, align 4
  br label %202

116:                                              ; preds = %94
  %117 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %118 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @enable_irq_wake(i32 %119)
  %121 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %122 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @disable_irq(i32 %123)
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call %struct.TYPE_17__* @clk_get(%struct.TYPE_18__* %126, i32* null)
  %128 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %129 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %128, i32 0, i32 0
  store %struct.TYPE_17__* %127, %struct.TYPE_17__** %129, align 8
  %130 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %131 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %130, i32 0, i32 0
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = call i64 @IS_ERR(%struct.TYPE_17__* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %116
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %139 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %140 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %139, i32 0, i32 0
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = call i32 @PTR_ERR(%struct.TYPE_17__* %141)
  store i32 %142, i32* %2, align 4
  br label %202

143:                                              ; preds = %116
  %144 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %145 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %144, i32 0, i32 0
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = call i32 @clk_prepare_enable(%struct.TYPE_17__* %146)
  %148 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %149 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %148, i32 0, i32 0
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = call i32 @clk_get_rate(%struct.TYPE_17__* %150)
  %152 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %153 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %155 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %143
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %202

164:                                              ; preds = %143
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 @device_set_wakeup_capable(%struct.TYPE_18__* %166, i32 1)
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %170 = call i32 @platform_set_drvdata(%struct.platform_device* %168, %struct.st_rtc* %169)
  %171 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %172 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %171, i32 0, i32 1
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  store i32* @st_rtc_ops, i32** %174, align 8
  %175 = load i32, i32* @U64_MAX, align 4
  %176 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %177 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %176, i32 0, i32 1
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 8
  %180 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %181 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %180, i32 0, i32 1
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %186 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @do_div(i32 %184, i32 %187)
  %189 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %190 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %189, i32 0, i32 1
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %190, align 8
  %192 = call i32 @rtc_register_device(%struct.TYPE_17__* %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %164
  %196 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %197 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %196, i32 0, i32 0
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = call i32 @clk_disable_unprepare(%struct.TYPE_17__* %198)
  %200 = load i32, i32* %8, align 4
  store i32 %200, i32* %2, align 4
  br label %202

201:                                              ; preds = %164
  store i32 0, i32* %2, align 4
  br label %202

202:                                              ; preds = %201, %195, %158, %135, %108, %88, %74, %51, %37, %27, %17
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local %struct.st_rtc* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @devm_rtc_allocate_device(%struct.TYPE_18__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_17__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_17__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @devm_ioremap_resource(%struct.TYPE_18__*, %struct.resource*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_18__*, i32, i32, i32, i32, %struct.st_rtc*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local %struct.TYPE_17__* @clk_get(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.TYPE_17__*) #1

declare dso_local i32 @clk_get_rate(%struct.TYPE_17__*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.st_rtc*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_17__*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
