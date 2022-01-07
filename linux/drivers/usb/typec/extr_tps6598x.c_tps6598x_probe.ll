; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_tps6598x.c_tps6598x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_tps6598x.c_tps6598x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.tps6598x = type { i32, i32, %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps6598x_regmap_config = common dso_local global i32 0, align 4
@TPS_REG_VID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@TPS_REG_STATUS = common dso_local global i32 0, align 4
@TPS_REG_SYSTEM_CONF = common dso_local global i32 0, align 4
@USB_TYPEC_REV_1_2 = common dso_local global i32 0, align 4
@TYPEC_NO_PREFERRED_ROLE = common dso_local global i32 0, align 4
@tps6598x_pr_set = common dso_local global i32 0, align 4
@tps6598x_dr_set = common dso_local global i32 0, align 4
@TYPEC_PORT_SNK = common dso_local global i8* null, align 8
@TYPEC_PORT_UFP = common dso_local global i8* null, align 8
@TYPEC_PORT_DRP = common dso_local global i8* null, align 8
@TYPEC_PORT_DRD = common dso_local global i8* null, align 8
@TYPEC_PORT_DFP = common dso_local global i8* null, align 8
@TYPEC_PORT_SRC = common dso_local global i8* null, align 8
@TPS_STATUS_PLUG_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to register partner\0A\00", align 1
@tps6598x_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tps6598x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6598x_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tps6598x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tps6598x* @devm_kzalloc(i32* %10, i32 72, i32 %11)
  store %struct.tps6598x* %12, %struct.tps6598x** %4, align 8
  %13 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %14 = icmp ne %struct.tps6598x* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %218

18:                                               ; preds = %1
  %19 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %20 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %19, i32 0, i32 5
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %25 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %24, i32 0, i32 4
  store i32* %23, i32** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %26, i32* @tps6598x_regmap_config)
  %28 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %29 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %31 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %37 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %218

40:                                               ; preds = %18
  %41 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %42 = load i32, i32* @TPS_REG_VID, align 4
  %43 = call i32 @tps6598x_read32(%struct.tps6598x* %41, i32 %42, i32* %7)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %218

52:                                               ; preds = %46
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @I2C_FUNC_I2C, align 4
  %57 = call i64 @i2c_check_functionality(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %61 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %64 = call i32 @tps6598x_check_mode(%struct.tps6598x* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %218

69:                                               ; preds = %62
  %70 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %71 = load i32, i32* @TPS_REG_STATUS, align 4
  %72 = call i32 @tps6598x_read32(%struct.tps6598x* %70, i32 %71, i32* %5)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %218

77:                                               ; preds = %69
  %78 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %79 = load i32, i32* @TPS_REG_SYSTEM_CONF, align 4
  %80 = call i32 @tps6598x_read32(%struct.tps6598x* %78, i32 %79, i32* %6)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %218

85:                                               ; preds = %77
  %86 = load i32, i32* @USB_TYPEC_REV_1_2, align 4
  %87 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %88 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  store i32 %86, i32* %89, align 4
  %90 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %91 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 512, i32* %92, align 8
  %93 = load i32, i32* @TYPEC_NO_PREFERRED_ROLE, align 4
  %94 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %95 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 5
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* @tps6598x_pr_set, align 4
  %98 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %99 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @tps6598x_dr_set, align 4
  %102 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %103 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @TPS_SYSCONF_PORTINFO(i32 %105)
  switch i32 %106, label %152 [
    i32 129, label %107
    i32 130, label %107
    i32 131, label %116
    i32 133, label %116
    i32 132, label %125
    i32 134, label %134
    i32 128, label %143
  ]

107:                                              ; preds = %85, %85
  %108 = load i8*, i8** @TYPEC_PORT_SNK, align 8
  %109 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %110 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  store i8* %108, i8** %111, align 8
  %112 = load i8*, i8** @TYPEC_PORT_UFP, align 8
  %113 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %114 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  br label %155

116:                                              ; preds = %85, %85
  %117 = load i8*, i8** @TYPEC_PORT_DRP, align 8
  %118 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %119 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  store i8* %117, i8** %120, align 8
  %121 = load i8*, i8** @TYPEC_PORT_DRD, align 8
  %122 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %123 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i8* %121, i8** %124, align 8
  br label %155

125:                                              ; preds = %85
  %126 = load i8*, i8** @TYPEC_PORT_DRP, align 8
  %127 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %128 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  store i8* %126, i8** %129, align 8
  %130 = load i8*, i8** @TYPEC_PORT_UFP, align 8
  %131 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %132 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  store i8* %130, i8** %133, align 8
  br label %155

134:                                              ; preds = %85
  %135 = load i8*, i8** @TYPEC_PORT_DRP, align 8
  %136 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %137 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  store i8* %135, i8** %138, align 8
  %139 = load i8*, i8** @TYPEC_PORT_DFP, align 8
  %140 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %141 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i8* %139, i8** %142, align 8
  br label %155

143:                                              ; preds = %85
  %144 = load i8*, i8** @TYPEC_PORT_SRC, align 8
  %145 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %146 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  store i8* %144, i8** %147, align 8
  %148 = load i8*, i8** @TYPEC_PORT_DFP, align 8
  %149 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %150 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i8* %148, i8** %151, align 8
  br label %155

152:                                              ; preds = %85
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %218

155:                                              ; preds = %143, %134, %125, %116, %107
  %156 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 0
  %158 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %159 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %158, i32 0, i32 2
  %160 = call i32 @typec_register_port(i32* %157, %struct.TYPE_2__* %159)
  %161 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %162 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %164 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @IS_ERR(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %155
  %169 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %170 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @PTR_ERR(i32 %171)
  store i32 %172, i32* %2, align 4
  br label %218

173:                                              ; preds = %155
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @TPS_STATUS_PLUG_PRESENT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %173
  %179 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @tps6598x_connect(%struct.tps6598x* %179, i32 %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %186 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %185, i32 0, i32 0
  %187 = call i32 @dev_err(i32* %186, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %188

188:                                              ; preds = %184, %178
  br label %189

189:                                              ; preds = %188, %173
  %190 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %191 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %190, i32 0, i32 0
  %192 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @tps6598x_interrupt, align 4
  %196 = load i32, i32* @IRQF_SHARED, align 4
  %197 = load i32, i32* @IRQF_ONESHOT, align 4
  %198 = or i32 %196, %197
  %199 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %200 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %199, i32 0, i32 0
  %201 = call i32 @dev_name(i32* %200)
  %202 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %203 = call i32 @devm_request_threaded_irq(i32* %191, i32 %194, i32* null, i32 %195, i32 %198, i32 %201, %struct.tps6598x* %202)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %189
  %207 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %208 = call i32 @tps6598x_disconnect(%struct.tps6598x* %207, i32 0)
  %209 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %210 = getelementptr inbounds %struct.tps6598x, %struct.tps6598x* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @typec_unregister_port(i32 %211)
  %213 = load i32, i32* %8, align 4
  store i32 %213, i32* %2, align 4
  br label %218

214:                                              ; preds = %189
  %215 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %216 = load %struct.tps6598x*, %struct.tps6598x** %4, align 8
  %217 = call i32 @i2c_set_clientdata(%struct.i2c_client* %215, %struct.tps6598x* %216)
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %214, %206, %168, %152, %83, %75, %67, %49, %35, %15
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local %struct.tps6598x* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @tps6598x_read32(%struct.tps6598x*, i32, i32*) #1

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @tps6598x_check_mode(%struct.tps6598x*) #1

declare dso_local i32 @TPS_SYSCONF_PORTINFO(i32) #1

declare dso_local i32 @typec_register_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @tps6598x_connect(%struct.tps6598x*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.tps6598x*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @tps6598x_disconnect(%struct.tps6598x*, i32) #1

declare dso_local i32 @typec_unregister_port(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps6598x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
