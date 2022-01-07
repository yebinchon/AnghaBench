; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.dcon_priv = type { i32, %struct.TYPE_9__, i32*, i32, i32, i32, %struct.i2c_client* }
%struct.TYPE_9__ = type { i32, i32 }

@pdata = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dcon_source_switch = common dso_local global i32 0, align 4
@dcon_reboot_notify = common dso_local global i32 0, align 4
@num_registered_fb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"DCON driver requires a registered fb\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@registered_fb = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"dcon\00", align 1
@dcon_device = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to create the DCON device\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to add the DCON device\0A\00", align 1
@dcon_device_files = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Cannot create sysfs file\0A\00", align 1
@DCON_REG_BRIGHT = common dso_local global i32 0, align 4
@dcon_bl_props = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"dcon-bl\00", align 1
@dcon_bl_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"cannot register backlight dev (%ld)\0A\00", align 1
@panic_notifier_list = common dso_local global i32 0, align 4
@dcon_panic_nb = common dso_local global i32 0, align 4
@DCON_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dcon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcon_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.dcon_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load i32, i32* @pdata, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %169

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dcon_priv* @kzalloc(i32 48, i32 %16)
  store %struct.dcon_priv* %17, %struct.dcon_priv** %6, align 8
  %18 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %19 = icmp ne %struct.dcon_priv* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %169

23:                                               ; preds = %15
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %26 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %25, i32 0, i32 6
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %28 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %27, i32 0, i32 5
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %31 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %30, i32 0, i32 4
  %32 = load i32, i32* @dcon_source_switch, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load i32, i32* @dcon_reboot_notify, align 4
  %35 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %36 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %39 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %43 = call i32 @i2c_set_clientdata(%struct.i2c_client* %41, %struct.dcon_priv* %42)
  %44 = load i32, i32* @num_registered_fb, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %23
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %165

52:                                               ; preds = %23
  %53 = load i32*, i32** @registered_fb, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %57 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %59 = call i32 @dcon_hw_init(%struct.dcon_priv* %58, i32 1)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %165

63:                                               ; preds = %52
  %64 = call %struct.TYPE_10__* @platform_device_alloc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** @dcon_device, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dcon_device, align 8
  %66 = icmp ne %struct.TYPE_10__* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %161

71:                                               ; preds = %63
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dcon_device, align 8
  %73 = call i32 @platform_device_add(%struct.TYPE_10__* %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dcon_device, align 8
  %75 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %76 = call i32 @platform_set_drvdata(%struct.TYPE_10__* %74, %struct.dcon_priv* %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %158

81:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %102, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32*, i32** @dcon_device_files, align 8
  %85 = call i32 @ARRAY_SIZE(i32* %84)
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %82
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dcon_device, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32*, i32** @dcon_device_files, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @device_create_file(i32* %89, i32* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dcon_device, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %141

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %82

105:                                              ; preds = %82
  %106 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %107 = load i32, i32* @DCON_REG_BRIGHT, align 4
  %108 = call i32 @dcon_read(%struct.dcon_priv* %106, i32 %107)
  %109 = and i32 %108, 15
  %110 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %111 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %113 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dcon_bl_props, i32 0, i32 0), align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dcon_device, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %118 = call i32* @backlight_device_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %116, %struct.dcon_priv* %117, i32* @dcon_bl_ops, %struct.TYPE_11__* @dcon_bl_props)
  %119 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %120 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  %121 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %122 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @IS_ERR(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %105
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %130 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @PTR_ERR(i32* %131)
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %135 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %134, i32 0, i32 2
  store i32* null, i32** %135, align 8
  br label %136

136:                                              ; preds = %126, %105
  %137 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %138 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %137, i32 0, i32 1
  %139 = call i32 @register_reboot_notifier(%struct.TYPE_9__* %138)
  %140 = call i32 @atomic_notifier_chain_register(i32* @panic_notifier_list, i32* @dcon_panic_nb)
  store i32 0, i32* %3, align 4
  br label %169

141:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %154, %141
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dcon_device, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32*, i32** @dcon_device_files, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i32 @device_remove_file(i32* %148, i32* %152)
  br label %154

154:                                              ; preds = %146
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %142

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157, %79
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dcon_device, align 8
  %160 = call i32 @platform_device_unregister(%struct.TYPE_10__* %159)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @dcon_device, align 8
  br label %161

161:                                              ; preds = %158, %67
  %162 = load i32, i32* @DCON_IRQ, align 4
  %163 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %164 = call i32 @free_irq(i32 %162, %struct.dcon_priv* %163)
  br label %165

165:                                              ; preds = %161, %62, %46
  %166 = load %struct.dcon_priv*, %struct.dcon_priv** %6, align 8
  %167 = call i32 @kfree(%struct.dcon_priv* %166)
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %136, %20, %12
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.dcon_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.dcon_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dcon_hw_init(%struct.dcon_priv*, i32) #1

declare dso_local %struct.TYPE_10__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.TYPE_10__*, %struct.dcon_priv*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dcon_read(%struct.dcon_priv*, i32) #1

declare dso_local i32* @backlight_device_register(i8*, i32*, %struct.dcon_priv*, i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @register_reboot_notifier(%struct.TYPE_9__*) #1

declare dso_local i32 @atomic_notifier_chain_register(i32*, i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @free_irq(i32, %struct.dcon_priv*) #1

declare dso_local i32 @kfree(%struct.dcon_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
