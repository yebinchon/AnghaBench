; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hosts.c_scsi_add_host_with_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hosts.c_scsi_add_host_with_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device* }
%struct.Scsi_Host = type { i32, %struct.device, %struct.device, i32*, i64, i32, %struct.TYPE_2__*, %struct.device*, i32, %struct.scsi_host_template* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.scsi_host_template = type { i32, i32 (%struct.Scsi_Host.0*)* }
%struct.Scsi_Host.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"can_queue = 0 no longer supported\0A\00", align 1
@platform_bus = common dso_local global %struct.device zeroinitializer, align 8
@SHOST_RUNNING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"scsi_wq_%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_add_host_with_dma(%struct.Scsi_Host* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.scsi_host_template*, align 8
  %9 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 9
  %12 = load %struct.scsi_host_template*, %struct.scsi_host_template** %11, align 8
  store %struct.scsi_host_template* %12, %struct.scsi_host_template** %8, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %17 = load %struct.scsi_host_template*, %struct.scsi_host_template** %8, align 8
  %18 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %17, i32 0, i32 1
  %19 = load i32 (%struct.Scsi_Host.0*)*, i32 (%struct.Scsi_Host.0*)** %18, align 8
  %20 = icmp ne i32 (%struct.Scsi_Host.0*)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.scsi_host_template*, %struct.scsi_host_template** %8, align 8
  %23 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %22, i32 0, i32 1
  %24 = load i32 (%struct.Scsi_Host.0*)*, i32 (%struct.Scsi_Host.0*)** %23, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %26 = bitcast %struct.Scsi_Host* %25 to %struct.Scsi_Host.0*
  %27 = call i32 %24(%struct.Scsi_Host.0* %26)
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.scsi_host_template*, %struct.scsi_host_template** %8, align 8
  %30 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i32 [ %27, %21 ], [ %31, %28 ]
  %34 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %15, %struct.Scsi_Host* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %42 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %40, %struct.Scsi_Host* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %228

43:                                               ; preds = %32
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %45 = call i32 @scsi_init_sense_cache(%struct.Scsi_Host* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %228

49:                                               ; preds = %43
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %51 = call i32 @scsi_mq_setup_tags(%struct.Scsi_Host* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %228

55:                                               ; preds = %49
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load %struct.device*, %struct.device** %58, align 8
  %60 = icmp ne %struct.device* %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %55
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = icmp ne %struct.device* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load %struct.device*, %struct.device** %6, align 8
  br label %67

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi %struct.device* [ %65, %64 ], [ @platform_bus, %66 ]
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 0
  store %struct.device* %68, %struct.device** %71, align 8
  br label %72

72:                                               ; preds = %67, %55
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = icmp ne %struct.device* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %77 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.device, %struct.device* %77, i32 0, i32 0
  %79 = load %struct.device*, %struct.device** %78, align 8
  store %struct.device* %79, %struct.device** %7, align 8
  br label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %83 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %82, i32 0, i32 7
  store %struct.device* %81, %struct.device** %83, align 8
  %84 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %85 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %84, i32 0, i32 1
  %86 = call i32 @pm_runtime_get_noresume(%struct.device* %85)
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 1
  %89 = call i32 @pm_runtime_set_active(%struct.device* %88)
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %91 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %90, i32 0, i32 1
  %92 = call i32 @pm_runtime_enable(%struct.device* %91)
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %94 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %93, i32 0, i32 1
  %95 = call i32 @device_enable_async_suspend(%struct.device* %94)
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %97 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %96, i32 0, i32 1
  %98 = call i32 @device_add(%struct.device* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %80
  br label %213

102:                                              ; preds = %80
  %103 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %104 = load i32, i32* @SHOST_RUNNING, align 4
  %105 = call i32 @scsi_host_set_state(%struct.Scsi_Host* %103, i32 %104)
  %106 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %107 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.device, %struct.device* %107, i32 0, i32 0
  %109 = load %struct.device*, %struct.device** %108, align 8
  %110 = call i32 @get_device(%struct.device* %109)
  %111 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %112 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %111, i32 0, i32 2
  %113 = call i32 @device_enable_async_suspend(%struct.device* %112)
  %114 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %115 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %114, i32 0, i32 2
  %116 = call i32 @device_add(%struct.device* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %102
  br label %209

120:                                              ; preds = %102
  %121 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %122 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %121, i32 0, i32 1
  %123 = call i32 @get_device(%struct.device* %122)
  %124 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %125 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %124, i32 0, i32 6
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %120
  %131 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %132 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %131, i32 0, i32 6
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i32* @kzalloc(i64 %135, i32 %136)
  %138 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %139 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %138, i32 0, i32 3
  store i32* %137, i32** %139, align 8
  %140 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %141 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %130
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %9, align 4
  br label %205

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %147, %120
  %149 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %150 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %149, i32 0, i32 6
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %148
  %156 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %157 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %160 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @snprintf(i32 %158, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  %163 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %164 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @create_singlethread_workqueue(i32 %165)
  %167 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %168 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %167, i32 0, i32 4
  store i64 %166, i64* %168, align 8
  %169 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %170 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %155
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %9, align 4
  br label %200

176:                                              ; preds = %155
  br label %177

177:                                              ; preds = %176, %148
  %178 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %179 = call i32 @scsi_sysfs_add_host(%struct.Scsi_Host* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %189

183:                                              ; preds = %177
  %184 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %185 = call i32 @scsi_proc_host_add(%struct.Scsi_Host* %184)
  %186 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %187 = call i32 @scsi_autopm_put_host(%struct.Scsi_Host* %186)
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %4, align 4
  br label %230

189:                                              ; preds = %182
  %190 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %191 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %196 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @destroy_workqueue(i64 %197)
  br label %199

199:                                              ; preds = %194, %189
  br label %200

200:                                              ; preds = %199, %173
  %201 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %202 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @kfree(i32* %203)
  br label %205

205:                                              ; preds = %200, %144
  %206 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %207 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %206, i32 0, i32 2
  %208 = call i32 @device_del(%struct.device* %207)
  br label %209

209:                                              ; preds = %205, %119
  %210 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %211 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %210, i32 0, i32 1
  %212 = call i32 @device_del(%struct.device* %211)
  br label %213

213:                                              ; preds = %209, %101
  %214 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %215 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %214, i32 0, i32 1
  %216 = call i32 @device_disable_async_suspend(%struct.device* %215)
  %217 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %218 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %217, i32 0, i32 1
  %219 = call i32 @pm_runtime_disable(%struct.device* %218)
  %220 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %221 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %220, i32 0, i32 1
  %222 = call i32 @pm_runtime_set_suspended(%struct.device* %221)
  %223 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %224 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %223, i32 0, i32 1
  %225 = call i32 @pm_runtime_put_noidle(%struct.device* %224)
  %226 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %227 = call i32 @scsi_mq_destroy_tags(%struct.Scsi_Host* %226)
  br label %228

228:                                              ; preds = %213, %54, %48, %39
  %229 = load i32, i32* %9, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %228, %183
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, ...) #1

declare dso_local i32 @scsi_init_sense_cache(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_mq_setup_tags(%struct.Scsi_Host*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.device*) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @scsi_host_set_state(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @scsi_sysfs_add_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_proc_host_add(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_autopm_put_host(%struct.Scsi_Host*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @device_del(%struct.device*) #1

declare dso_local i32 @device_disable_async_suspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @scsi_mq_destroy_tags(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
