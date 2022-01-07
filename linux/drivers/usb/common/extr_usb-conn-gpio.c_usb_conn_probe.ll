; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-conn-gpio.c_usb_conn_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-conn-gpio.c_usb_conn_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.usb_conn_info = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to get gpios\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB_GPIO_DEB_US = common dso_local global i32 0, align 4
@USB_GPIO_DEB_MS = common dso_local global i32 0, align 4
@usb_conn_detect_cable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"failed to get vbus\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to get role switch\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to get ID IRQ\0A\00", align 1
@usb_conn_isr = common dso_local global i32 0, align 4
@USB_CONN_IRQF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to request ID IRQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to get VBUS IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to request VBUS IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usb_conn_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_conn_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usb_conn_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  store %struct.device* %8, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.usb_conn_info* @devm_kzalloc(%struct.device* %9, i32 56, i32 %10)
  store %struct.usb_conn_info* %11, %struct.usb_conn_info** %5, align 8
  %12 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %13 = icmp ne %struct.usb_conn_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %241

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %20 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %19, i32 0, i32 8
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GPIOD_IN, align 4
  %23 = call i8* @devm_gpiod_get_optional(%struct.device* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %25 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %27 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @IS_ERR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %33 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @PTR_ERR(i8* %34)
  store i32 %35, i32* %2, align 4
  br label %241

36:                                               ; preds = %17
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* @GPIOD_IN, align 4
  %39 = call i8* @devm_gpiod_get_optional(%struct.device* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %41 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %43 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %49 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %2, align 4
  br label %241

52:                                               ; preds = %36
  %53 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %54 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %59 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %241

67:                                               ; preds = %57, %52
  %68 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %69 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %74 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %73, i32 0, i32 4
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @USB_GPIO_DEB_US, align 4
  %77 = call i32 @gpiod_set_debounce(i8* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %78
  %82 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %83 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %88 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* @USB_GPIO_DEB_US, align 4
  %91 = call i32 @gpiod_set_debounce(i8* %89, i32 %90)
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %86, %81, %78
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* @USB_GPIO_DEB_MS, align 4
  %97 = call i32 @msecs_to_jiffies(i32 %96)
  %98 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %99 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %92
  %101 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %102 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %101, i32 0, i32 6
  %103 = load i32, i32* @usb_conn_detect_cable, align 4
  %104 = call i32 @INIT_DELAYED_WORK(i32* %102, i32 %103)
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i8* @devm_regulator_get(%struct.device* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %108 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %110 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %109, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @IS_ERR(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %100
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %118 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %117, i32 0, i32 5
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @PTR_ERR(i8* %119)
  store i32 %120, i32* %2, align 4
  br label %241

121:                                              ; preds = %100
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i8* @usb_role_switch_get(%struct.device* %122)
  %124 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %125 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %127 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @IS_ERR(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %121
  %132 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %133 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @PTR_ERR(i8* %134)
  %136 = load i32, i32* @EPROBE_DEFER, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp ne i32 %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = call i32 @dev_err(%struct.device* %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %131
  %143 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %144 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @PTR_ERR(i8* %145)
  store i32 %146, i32* %2, align 4
  br label %241

147:                                              ; preds = %121
  %148 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %149 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %148, i32 0, i32 4
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %188

152:                                              ; preds = %147
  %153 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %154 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %153, i32 0, i32 4
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* @gpiod_to_irq(i8* %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %159 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %161 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %152
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = call i32 @dev_err(%struct.device* %165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %167 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %168 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %6, align 4
  br label %235

170:                                              ; preds = %152
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %173 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @usb_conn_isr, align 4
  %176 = load i32, i32* @USB_CONN_IRQF, align 4
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %181 = call i32 @devm_request_threaded_irq(%struct.device* %171, i32 %174, i32* null, i32 %175, i32 %176, i32 %179, %struct.usb_conn_info* %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %170
  %185 = load %struct.device*, %struct.device** %4, align 8
  %186 = call i32 @dev_err(%struct.device* %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %235

187:                                              ; preds = %170
  br label %188

188:                                              ; preds = %187, %147
  %189 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %190 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %189, i32 0, i32 3
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %229

193:                                              ; preds = %188
  %194 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %195 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = call i8* @gpiod_to_irq(i8* %196)
  %198 = ptrtoint i8* %197 to i32
  %199 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %200 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %202 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %193
  %206 = load %struct.device*, %struct.device** %4, align 8
  %207 = call i32 @dev_err(%struct.device* %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %208 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %209 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %6, align 4
  br label %235

211:                                              ; preds = %193
  %212 = load %struct.device*, %struct.device** %4, align 8
  %213 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %214 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @usb_conn_isr, align 4
  %217 = load i32, i32* @USB_CONN_IRQF, align 4
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %222 = call i32 @devm_request_threaded_irq(%struct.device* %212, i32 %215, i32* null, i32 %216, i32 %217, i32 %220, %struct.usb_conn_info* %221)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %211
  %226 = load %struct.device*, %struct.device** %4, align 8
  %227 = call i32 @dev_err(%struct.device* %226, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %235

228:                                              ; preds = %211
  br label %229

229:                                              ; preds = %228, %188
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %232 = call i32 @platform_set_drvdata(%struct.platform_device* %230, %struct.usb_conn_info* %231)
  %233 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %234 = call i32 @usb_conn_queue_dwork(%struct.usb_conn_info* %233, i32 0)
  store i32 0, i32* %2, align 4
  br label %241

235:                                              ; preds = %225, %205, %184, %164
  %236 = load %struct.usb_conn_info*, %struct.usb_conn_info** %5, align 8
  %237 = getelementptr inbounds %struct.usb_conn_info, %struct.usb_conn_info* %236, i32 0, i32 2
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @usb_role_switch_put(i8* %238)
  %240 = load i32, i32* %6, align 4
  store i32 %240, i32* %2, align 4
  br label %241

241:                                              ; preds = %235, %229, %142, %114, %62, %47, %31, %14
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local %struct.usb_conn_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @gpiod_set_debounce(i8*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i8* @usb_role_switch_get(%struct.device*) #1

declare dso_local i8* @gpiod_to_irq(i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.usb_conn_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usb_conn_info*) #1

declare dso_local i32 @usb_conn_queue_dwork(%struct.usb_conn_info*, i32) #1

declare dso_local i32 @usb_role_switch_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
