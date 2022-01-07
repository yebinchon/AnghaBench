; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.gb_bundle = type { i32, %struct.greybus_descriptor_cport* }
%struct.greybus_descriptor_cport = type { i64, i32 }
%struct.greybus_bundle_id = type { i32 }
%struct.gb_connection = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gb_loopback = type { i32, i32, i32, %struct.gb_connection*, i32, %struct.gb_connection*, i8*, i8*, i32, i32, i32, %struct.gb_connection* }
%struct.device = type { %struct.TYPE_3__* }

@DEBUGFS_NAMELEN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GREYBUS_PROTOCOL_LOOPBACK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_loopback_request_handler = common dso_local global i32 0, align 4
@GB_LOOPBACK_TIMEOUT_MIN = common dso_local global i32 0, align 4
@GB_LOOPBACK_TIMEOUT_MAX = common dso_local global i32 0, align 4
@gb_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"raw_latency_%s\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@gb_loopback_dbgfs_latency_fops = common dso_local global i32 0, align 4
@loopback_ida = common dso_local global i32 0, align 4
@loopback_class = common dso_local global i32 0, align 4
@loopback_groups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"gb_loopback%d\00", align 1
@kfifo_depth = common dso_local global i32 0, align 4
@gb_loopback_fn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"gb_loopback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @gb_loopback_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_loopback_probe(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  %6 = alloca %struct.greybus_descriptor_cport*, align 8
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca %struct.gb_loopback*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_bundle_id* %1, %struct.greybus_bundle_id** %5, align 8
  %15 = load i32, i32* @DEBUGFS_NAMELEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %20 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %232

26:                                               ; preds = %2
  %27 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %28 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %27, i32 0, i32 1
  %29 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %28, align 8
  %30 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %29, i64 0
  store %struct.greybus_descriptor_cport* %30, %struct.greybus_descriptor_cport** %6, align 8
  %31 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %32 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GREYBUS_PROTOCOL_LOOPBACK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %232

39:                                               ; preds = %26
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.gb_loopback* @kzalloc(i32 80, i32 %40)
  store %struct.gb_loopback* %41, %struct.gb_loopback** %8, align 8
  %42 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %43 = icmp ne %struct.gb_loopback* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %232

47:                                               ; preds = %39
  %48 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %49 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %50 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load i32, i32* @gb_loopback_request_handler, align 4
  %54 = call %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %48, i32 %52, i32 %53)
  store %struct.gb_connection* %54, %struct.gb_connection** %7, align 8
  %55 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %56 = call i64 @IS_ERR(%struct.gb_connection* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %60 = call i32 @PTR_ERR(%struct.gb_connection* %59)
  store i32 %60, i32* %10, align 4
  br label %228

61:                                               ; preds = %47
  %62 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %63 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %64 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %63, i32 0, i32 11
  store %struct.gb_connection* %62, %struct.gb_connection** %64, align 8
  %65 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %66 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %67 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %65, %struct.gb_loopback* %66)
  %68 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %69 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %68, i32 0, i32 10
  %70 = call i32 @init_waitqueue_head(i32* %69)
  %71 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %72 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %71, i32 0, i32 9
  %73 = call i32 @init_waitqueue_head(i32* %72)
  %74 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %75 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %74, i32 0, i32 8
  %76 = call i32 @atomic_set(i32* %75, i32 0)
  %77 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %78 = call i32 @gb_loopback_reset_stats(%struct.gb_loopback* %77)
  %79 = load i32, i32* @GB_LOOPBACK_TIMEOUT_MIN, align 4
  %80 = call i8* @jiffies_to_usecs(i32 %79)
  %81 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %82 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @GB_LOOPBACK_TIMEOUT_MAX, align 4
  %84 = call i8* @jiffies_to_usecs(i32 %83)
  %85 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %86 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gb_dev, i32 0, i32 2), align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %61
  %90 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %91 = call i32 @gb_operation_get_payload_size_max(%struct.gb_connection* %90)
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gb_dev, i32 0, i32 0), align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gb_dev, i32 0, i32 0), align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ule i64 %93, 4
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %225

98:                                               ; preds = %89
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gb_dev, i32 0, i32 0), align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 %100, 4
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gb_dev, i32 0, i32 0), align 4
  br label %103

103:                                              ; preds = %98, %61
  %104 = trunc i64 %16 to i32
  %105 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %106 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = call i8* @dev_name(i32* %108)
  %110 = call i32 @snprintf(i8* %18, i32 %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %109)
  %111 = load i32, i32* @S_IFREG, align 4
  %112 = or i32 %111, 292
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gb_dev, i32 0, i32 3), align 4
  %114 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %115 = call i32 @debugfs_create_file(i8* %18, i32 %112, i32 %113, %struct.gb_loopback* %114, i32* @gb_loopback_dbgfs_latency_fops)
  %116 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %117 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i32 @ida_simple_get(i32* @loopback_ida, i32 0, i32 0, i32 %118)
  %120 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %121 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %123 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %103
  %127 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %128 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %10, align 4
  br label %220

130:                                              ; preds = %103
  %131 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %132 = call i32 @gb_connection_enable(%struct.gb_connection* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %215

136:                                              ; preds = %130
  %137 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %138 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %137, i32 0, i32 0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = call i32 @MKDEV(i32 0, i32 0)
  %142 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %143 = load i32, i32* @loopback_groups, align 4
  %144 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %145 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call %struct.gb_connection* @device_create_with_groups(i32* @loopback_class, i32* %140, i32 %141, %struct.gb_loopback* %142, i32 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = bitcast %struct.gb_connection* %147 to %struct.device*
  store %struct.device* %148, %struct.device** %9, align 8
  %149 = load %struct.device*, %struct.device** %9, align 8
  %150 = bitcast %struct.device* %149 to %struct.gb_connection*
  %151 = call i64 @IS_ERR(%struct.gb_connection* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %136
  %154 = load %struct.device*, %struct.device** %9, align 8
  %155 = bitcast %struct.device* %154 to %struct.gb_connection*
  %156 = call i32 @PTR_ERR(%struct.gb_connection* %155)
  store i32 %156, i32* %10, align 4
  br label %212

157:                                              ; preds = %136
  %158 = load %struct.device*, %struct.device** %9, align 8
  %159 = bitcast %struct.device* %158 to %struct.gb_connection*
  %160 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %161 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %160, i32 0, i32 5
  store %struct.gb_connection* %159, %struct.gb_connection** %161, align 8
  %162 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %163 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %162, i32 0, i32 2
  %164 = load i32, i32* @kfifo_depth, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 4
  %167 = trunc i64 %166 to i32
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call i64 @kfifo_alloc(i32* %163, i32 %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %157
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %10, align 4
  br label %208

174:                                              ; preds = %157
  %175 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %176 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %175, i32 0, i32 4
  %177 = call i32 @mutex_init(i32* %176)
  %178 = load i32, i32* @gb_loopback_fn, align 4
  %179 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %180 = call %struct.gb_connection* @kthread_run(i32 %178, %struct.gb_loopback* %179, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %181 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %182 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %181, i32 0, i32 3
  store %struct.gb_connection* %180, %struct.gb_connection** %182, align 8
  %183 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %184 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %183, i32 0, i32 3
  %185 = load %struct.gb_connection*, %struct.gb_connection** %184, align 8
  %186 = call i64 @IS_ERR(%struct.gb_connection* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %174
  %189 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %190 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %189, i32 0, i32 3
  %191 = load %struct.gb_connection*, %struct.gb_connection** %190, align 8
  %192 = call i32 @PTR_ERR(%struct.gb_connection* %191)
  store i32 %192, i32* %10, align 4
  br label %204

193:                                              ; preds = %174
  %194 = load i64, i64* %13, align 8
  %195 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gb_dev, i32 0, i32 1), i64 %194)
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gb_dev, i32 0, i32 2), align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gb_dev, i32 0, i32 2), align 4
  %198 = load i64, i64* %13, align 8
  %199 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gb_dev, i32 0, i32 1), i64 %198)
  %200 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %201 = call i32 @gb_connection_latency_tag_enable(%struct.gb_connection* %200)
  %202 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %203 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %202)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %232

204:                                              ; preds = %188
  %205 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %206 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %205, i32 0, i32 2
  %207 = call i32 @kfifo_free(i32* %206)
  br label %208

208:                                              ; preds = %204, %171
  %209 = load %struct.device*, %struct.device** %9, align 8
  %210 = bitcast %struct.device* %209 to %struct.gb_connection*
  %211 = call i32 @device_unregister(%struct.gb_connection* %210)
  br label %212

212:                                              ; preds = %208, %153
  %213 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %214 = call i32 @gb_connection_disable(%struct.gb_connection* %213)
  br label %215

215:                                              ; preds = %212, %135
  %216 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %217 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @ida_simple_remove(i32* @loopback_ida, i32 %218)
  br label %220

220:                                              ; preds = %215, %126
  %221 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %222 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @debugfs_remove(i32 %223)
  br label %225

225:                                              ; preds = %220, %95
  %226 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %227 = call i32 @gb_connection_destroy(%struct.gb_connection* %226)
  br label %228

228:                                              ; preds = %225, %58
  %229 = load %struct.gb_loopback*, %struct.gb_loopback** %8, align 8
  %230 = call i32 @kfree(%struct.gb_loopback* %229)
  %231 = load i32, i32* %10, align 4
  store i32 %231, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %232

232:                                              ; preds = %228, %193, %44, %36, %23
  %233 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %233)
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.gb_loopback* @kzalloc(i32, i32) #2

declare dso_local %struct.gb_connection* @gb_connection_create(%struct.gb_bundle*, i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #2

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #2

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gb_loopback*) #2

declare dso_local i32 @init_waitqueue_head(i32*) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @gb_loopback_reset_stats(%struct.gb_loopback*) #2

declare dso_local i8* @jiffies_to_usecs(i32) #2

declare dso_local i32 @gb_operation_get_payload_size_max(%struct.gb_connection*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dev_name(i32*) #2

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.gb_loopback*, i32*) #2

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #2

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #2

declare dso_local %struct.gb_connection* @device_create_with_groups(i32*, i32*, i32, %struct.gb_loopback*, i32, i8*, i32) #2

declare dso_local i32 @MKDEV(i32, i32) #2

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local %struct.gb_connection* @kthread_run(i32, %struct.gb_loopback*, i8*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @gb_connection_latency_tag_enable(%struct.gb_connection*) #2

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #2

declare dso_local i32 @kfifo_free(i32*) #2

declare dso_local i32 @device_unregister(%struct.gb_connection*) #2

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #2

declare dso_local i32 @ida_simple_remove(i32*, i32) #2

declare dso_local i32 @debugfs_remove(i32) #2

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #2

declare dso_local i32 @kfree(%struct.gb_loopback*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
