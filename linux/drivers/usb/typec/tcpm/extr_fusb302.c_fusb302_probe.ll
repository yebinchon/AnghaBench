; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device, i64, %struct.i2c_adapter* }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.fusb302_chip = type { i32, %struct.TYPE_3__, i32, i64, i32, i32, i32, %struct.device*, i32, i32, i32, %struct.i2c_client* }
%struct.TYPE_3__ = type { i32 }

@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"I2C/SMBus block functionality not supported!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"linux,extcon-name\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@fusb302_irq_work = common dso_local global i32 0, align 4
@fusb302_bc_lvl_handler_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"cannot register tcpm port, ret=%d\00", align 1
@fusb302_irq_intn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"fsc_interrupt_int_n\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"cannot request IRQ for GPIO Int_N, ret=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @fusb302_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.fusb302_chip*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %18 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %222

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.fusb302_chip* @devm_kzalloc(%struct.device* %28, i32 72, i32 %29)
  store %struct.fusb302_chip* %30, %struct.fusb302_chip** %6, align 8
  %31 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %32 = icmp ne %struct.fusb302_chip* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %222

36:                                               ; preds = %26
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %39 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %38, i32 0, i32 11
  store %struct.i2c_client* %37, %struct.i2c_client** %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %43 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %42, i32 0, i32 7
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %45 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %44, i32 0, i32 10
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = call i64 @device_property_read_string(%struct.device* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %36
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @extcon_get_extcon_dev(i8* %51)
  %53 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %54 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 4
  %55 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %56 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @EPROBE_DEFER, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %222

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %36
  %64 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %65 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %64, i32 0, i32 7
  %66 = load %struct.device*, %struct.device** %65, align 8
  %67 = call i32 @devm_regulator_get(%struct.device* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %69 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %71 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %77 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %222

80:                                               ; preds = %63
  %81 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %82 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %81, i32 0, i32 7
  %83 = load %struct.device*, %struct.device** %82, align 8
  %84 = call i32 @dev_name(%struct.device* %83)
  %85 = call i32 @create_singlethread_workqueue(i32 %84)
  %86 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %87 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %89 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %80
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %222

95:                                               ; preds = %80
  %96 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %97 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %96, i32 0, i32 6
  %98 = call i32 @spin_lock_init(i32* %97)
  %99 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %100 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %99, i32 0, i32 5
  %101 = load i32, i32* @fusb302_irq_work, align 4
  %102 = call i32 @INIT_WORK(i32* %100, i32 %101)
  %103 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %104 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %103, i32 0, i32 4
  %105 = load i32, i32* @fusb302_bc_lvl_handler_work, align 4
  %106 = call i32 @INIT_DELAYED_WORK(i32* %104, i32 %105)
  %107 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %108 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %107, i32 0, i32 1
  %109 = call i32 @init_tcpc_dev(%struct.TYPE_3__* %108)
  %110 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %111 = call i32 @fusb302_debugfs_init(%struct.fusb302_chip* %110)
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %95
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %121 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %120, i32 0, i32 3
  store i64 %119, i64* %121, align 8
  br label %129

122:                                              ; preds = %95
  %123 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %124 = call i32 @init_gpio(%struct.fusb302_chip* %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %214

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128, %116
  %130 = load %struct.device*, %struct.device** %8, align 8
  %131 = call i32 @fusb302_fwnode_get(%struct.device* %130)
  %132 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %133 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 4
  %135 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %136 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @IS_ERR(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %129
  %142 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %143 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @PTR_ERR(i32 %145)
  store i32 %146, i32* %10, align 4
  br label %214

147:                                              ; preds = %129
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 0
  %150 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %151 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %150, i32 0, i32 1
  %152 = call i32 @tcpm_register_port(%struct.device* %149, %struct.TYPE_3__* %151)
  %153 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %154 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %156 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @IS_ERR(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %147
  %161 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %162 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @fwnode_handle_put(i32 %164)
  %166 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %167 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @PTR_ERR(i32 %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @EPROBE_DEFER, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp ne i32 %170, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %160
  %175 = load %struct.device*, %struct.device** %8, align 8
  %176 = load i32, i32* %10, align 4
  %177 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %175, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %174, %160
  br label %214

179:                                              ; preds = %147
  %180 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %181 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* @fusb302_irq_intn, align 4
  %184 = load i32, i32* @IRQF_ONESHOT, align 4
  %185 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %188 = call i32 @request_irq(i64 %182, i32 %183, i32 %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.fusb302_chip* %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %179
  %192 = load %struct.device*, %struct.device** %8, align 8
  %193 = load i32, i32* %10, align 4
  %194 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %192, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  br label %204

195:                                              ; preds = %179
  %196 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %197 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @enable_irq_wake(i64 %198)
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %202 = call i32 @i2c_set_clientdata(%struct.i2c_client* %200, %struct.fusb302_chip* %201)
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %3, align 4
  br label %222

204:                                              ; preds = %191
  %205 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %206 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @tcpm_unregister_port(i32 %207)
  %209 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %210 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @fwnode_handle_put(i32 %212)
  br label %214

214:                                              ; preds = %204, %178, %141, %127
  %215 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %216 = call i32 @fusb302_debugfs_exit(%struct.fusb302_chip* %215)
  %217 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  %218 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @destroy_workqueue(i32 %219)
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %214, %195, %92, %75, %59, %33, %20
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.fusb302_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @device_property_read_string(%struct.device*, i8*, i8**) #1

declare dso_local i32 @extcon_get_extcon_dev(i8*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_tcpc_dev(%struct.TYPE_3__*) #1

declare dso_local i32 @fusb302_debugfs_init(%struct.fusb302_chip*) #1

declare dso_local i32 @init_gpio(%struct.fusb302_chip*) #1

declare dso_local i32 @fusb302_fwnode_get(%struct.device*) #1

declare dso_local i32 @tcpm_register_port(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @fwnode_handle_put(i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.fusb302_chip*) #1

declare dso_local i32 @enable_irq_wake(i64) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.fusb302_chip*) #1

declare dso_local i32 @tcpm_unregister_port(i32) #1

declare dso_local i32 @fusb302_debugfs_exit(%struct.fusb302_chip*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
