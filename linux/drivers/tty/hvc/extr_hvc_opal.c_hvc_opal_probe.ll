; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_opal.c_hvc_opal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_opal.c_hvc_opal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ops = type { i32 }
%struct.hvc_opal_priv = type { i32, i64 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hvc_struct = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"ibm,opal-console-raw\00", align 1
@HV_PROTOCOL_RAW = common dso_local global i64 0, align 8
@hvc_opal_raw_ops = common dso_local global %struct.hv_ops zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ibm,opal-console-hvsi\00", align 1
@HV_PROTOCOL_HVSI = common dso_local global i64 0, align 8
@hvc_opal_hvsi_ops = common dso_local global %struct.hv_ops zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"hvc_opal: Unknown protocol for %pOF\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@hvc_opal_privs = common dso_local global %struct.hvc_opal_priv** null, align 8
@hvc_opal_boot_priv = common dso_local global %struct.hvc_opal_priv zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opal_get_chars = common dso_local global i32 0, align 4
@opal_put_chars_atomic = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"hvc_opal: Device %pOF has duplicate terminal number #%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"hvc%d: %s protocol on %pOF%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"hvsi\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c" (boot console)\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"hvc%d: No interrupts property, using OPAL event\0A\00", align 1
@OPAL_EVENT_CONSOLE_INPUT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"hvc_opal: Unable to map interrupt for device %pOF\0A\00", align 1
@MAX_VIO_PUT_CHARS = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hvc_opal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_opal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hv_ops*, align 8
  %5 = alloca %struct.hvc_struct*, align 8
  %6 = alloca %struct.hvc_opal_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @of_device_is_compatible(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @HV_PROTOCOL_RAW, align 8
  store i64 %19, i64* %7, align 8
  store %struct.hv_ops* @hvc_opal_raw_ops, %struct.hv_ops** %4, align 8
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @of_device_is_compatible(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @HV_PROTOCOL_HVSI, align 8
  store i64 %28, i64* %7, align 8
  store %struct.hv_ops* @hvc_opal_hvsi_ops, %struct.hv_ops** %4, align 8
  br label %37

29:                                               ; preds = %20
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %172

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %18
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @of_get_property(i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @be32_to_cpup(i32* %47)
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32 [ %48, %46 ], [ 0, %49 ]
  store i32 %51, i32* %8, align 4
  %52 = load %struct.hvc_opal_priv**, %struct.hvc_opal_priv*** @hvc_opal_privs, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %52, i64 %54
  %56 = load %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %55, align 8
  %57 = icmp eq %struct.hvc_opal_priv* %56, @hvc_opal_boot_priv
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.hvc_opal_priv**, %struct.hvc_opal_priv*** @hvc_opal_privs, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %59, i64 %61
  %63 = load %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %62, align 8
  store %struct.hvc_opal_priv* %63, %struct.hvc_opal_priv** %6, align 8
  store i32 1, i32* %10, align 4
  br label %113

64:                                               ; preds = %50
  %65 = load %struct.hvc_opal_priv**, %struct.hvc_opal_priv*** @hvc_opal_privs, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %65, i64 %67
  %69 = load %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %68, align 8
  %70 = icmp eq %struct.hvc_opal_priv* %69, null
  br i1 %70, label %71, label %103

71:                                               ; preds = %64
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.hvc_opal_priv* @kzalloc(i32 16, i32 %72)
  store %struct.hvc_opal_priv* %73, %struct.hvc_opal_priv** %6, align 8
  %74 = load %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %6, align 8
  %75 = icmp ne %struct.hvc_opal_priv* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %172

79:                                               ; preds = %71
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %6, align 8
  %82 = getelementptr inbounds %struct.hvc_opal_priv, %struct.hvc_opal_priv* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %6, align 8
  %84 = load %struct.hvc_opal_priv**, %struct.hvc_opal_priv*** @hvc_opal_privs, align 8
  %85 = load i32, i32* %8, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %84, i64 %86
  store %struct.hvc_opal_priv* %83, %struct.hvc_opal_priv** %87, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @HV_PROTOCOL_HVSI, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %79
  %92 = load %struct.hvc_opal_priv*, %struct.hvc_opal_priv** %6, align 8
  %93 = getelementptr inbounds %struct.hvc_opal_priv, %struct.hvc_opal_priv* %92, i32 0, i32 0
  %94 = load i32, i32* @opal_get_chars, align 4
  %95 = load i32, i32* @opal_put_chars_atomic, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @hvsilib_init(i32* %93, i32 %94, i32 %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %91, %79
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.hv_ops*, %struct.hv_ops** %4, align 8
  %102 = call i32 @hvc_instantiate(i32 %99, i32 %100, %struct.hv_ops* %101)
  br label %112

103:                                              ; preds = %64
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* @ENXIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %172

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %112, %58
  %114 = load i32, i32* %8, align 4
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @HV_PROTOCOL_RAW, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %128 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %114, i8* %119, i32 %123, i8* %127)
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @irq_of_parse_and_map(i32 %132, i32 0)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %113
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @OPAL_EVENT_CONSOLE_INPUT, align 4
  %140 = call i32 @ilog2(i32 %139)
  %141 = call i32 @opal_event_request(i32 %140)
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %136, %113
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %142
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %2, align 4
  br label %172

152:                                              ; preds = %142
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.hv_ops*, %struct.hv_ops** %4, align 8
  %156 = load i32, i32* @MAX_VIO_PUT_CHARS, align 4
  %157 = call %struct.hvc_struct* @hvc_alloc(i32 %153, i32 %154, %struct.hv_ops* %155, i32 %156)
  store %struct.hvc_struct* %157, %struct.hvc_struct** %5, align 8
  %158 = load %struct.hvc_struct*, %struct.hvc_struct** %5, align 8
  %159 = call i64 @IS_ERR(%struct.hvc_struct* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load %struct.hvc_struct*, %struct.hvc_struct** %5, align 8
  %163 = call i32 @PTR_ERR(%struct.hvc_struct* %162)
  store i32 %163, i32* %2, align 4
  br label %172

164:                                              ; preds = %152
  %165 = load i32, i32* @IRQF_SHARED, align 4
  %166 = load %struct.hvc_struct*, %struct.hvc_struct** %5, align 8
  %167 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = load %struct.hvc_struct*, %struct.hvc_struct** %5, align 8
  %171 = call i32 @dev_set_drvdata(%struct.TYPE_2__* %169, %struct.hvc_struct* %170)
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %164, %161, %145, %103, %76, %29
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local %struct.hvc_opal_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @hvsilib_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @hvc_instantiate(i32, i32, %struct.hv_ops*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @opal_event_request(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local %struct.hvc_struct* @hvc_alloc(i32, i32, %struct.hv_ops*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hvc_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.hvc_struct*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_2__*, %struct.hvc_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
