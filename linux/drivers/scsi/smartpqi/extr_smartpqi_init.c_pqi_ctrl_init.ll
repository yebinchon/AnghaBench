; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i64, i32, i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"error obtaining controller properties\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"error obtaining controller capabilities\0A\00", align 1
@reset_devices = common dso_local global i64 0, align 8
@PQI_MAX_OUTSTANDING_REQUESTS_KDUMP = common dso_local global i64 0, align 8
@PQI_MAX_OUTSTANDING_REQUESTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to allocate PQI error buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"error initializing PQI mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"transition to PQI mode failed\0A\00", align 1
@PQI_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to allocate admin queues\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"error creating admin queues\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"obtaining device capability failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"failed to allocate operational queues\0A\00", align 1
@IRQ_MODE_MSIX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"error enabling events\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"error obtaining product details\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"error obtaining ctrl serial number\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"error enabling multi-lun rescan\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"error updating host wellness\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_ctrl_init(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %6 = call i32 @pqi_force_sis_mode(%struct.pqi_ctrl_info* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %299

11:                                               ; preds = %1
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %13 = call i32 @sis_wait_for_ctrl_ready(%struct.pqi_ctrl_info* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %299

18:                                               ; preds = %11
  %19 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %20 = call i32 @sis_get_ctrl_properties(%struct.pqi_ctrl_info* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %25 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %24, i32 0, i32 6
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %299

30:                                               ; preds = %18
  %31 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %32 = call i32 @sis_get_pqi_capabilities(%struct.pqi_ctrl_info* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %37 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %36, i32 0, i32 6
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %299

42:                                               ; preds = %30
  %43 = load i64, i64* @reset_devices, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %47 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PQI_MAX_OUTSTANDING_REQUESTS_KDUMP, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i64, i64* @PQI_MAX_OUTSTANDING_REQUESTS_KDUMP, align 8
  %53 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %54 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %45
  br label %67

56:                                               ; preds = %42
  %57 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %58 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PQI_MAX_OUTSTANDING_REQUESTS, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i64, i64* @PQI_MAX_OUTSTANDING_REQUESTS, align 8
  %64 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %65 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  br label %67

67:                                               ; preds = %66, %55
  %68 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %69 = call i32 @pqi_calculate_io_resources(%struct.pqi_ctrl_info* %68)
  %70 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %71 = call i32 @pqi_alloc_error_buffer(%struct.pqi_ctrl_info* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %76 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %75, i32 0, i32 6
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %299

81:                                               ; preds = %67
  %82 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %83 = call i32 @sis_init_base_struct_addr(%struct.pqi_ctrl_info* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %88 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %87, i32 0, i32 6
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %299

93:                                               ; preds = %81
  %94 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %95 = call i32 @pqi_wait_for_pqi_mode_ready(%struct.pqi_ctrl_info* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %100 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %99, i32 0, i32 6
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %299

105:                                              ; preds = %93
  %106 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %107 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %106, i32 0, i32 1
  store i32 1, i32* %107, align 8
  %108 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %109 = load i32, i32* @PQI_MODE, align 4
  %110 = call i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info* %108, i32 %109)
  %111 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %112 = call i32 @pqi_alloc_admin_queues(%struct.pqi_ctrl_info* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %105
  %116 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %117 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %116, i32 0, i32 6
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %299

122:                                              ; preds = %105
  %123 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %124 = call i32 @pqi_create_admin_queues(%struct.pqi_ctrl_info* %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %129 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %128, i32 0, i32 6
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %299

134:                                              ; preds = %122
  %135 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %136 = call i32 @pqi_report_device_capability(%struct.pqi_ctrl_info* %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %141 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %140, i32 0, i32 6
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = call i32 @dev_err(i32* %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %299

146:                                              ; preds = %134
  %147 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %148 = call i32 @pqi_validate_device_capability(%struct.pqi_ctrl_info* %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %2, align 4
  br label %299

153:                                              ; preds = %146
  %154 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %155 = call i32 @pqi_calculate_queue_resources(%struct.pqi_ctrl_info* %154)
  %156 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %157 = call i32 @pqi_enable_msix_interrupts(%struct.pqi_ctrl_info* %156)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i32, i32* %4, align 4
  store i32 %161, i32* %2, align 4
  br label %299

162:                                              ; preds = %153
  %163 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %164 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %167 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %165, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %162
  %171 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %172 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %175 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %174, i32 0, i32 4
  store i64 %173, i64* %175, align 8
  %176 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %177 = call i32 @pqi_calculate_queue_resources(%struct.pqi_ctrl_info* %176)
  br label %178

178:                                              ; preds = %170, %162
  %179 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %180 = call i32 @pqi_alloc_io_resources(%struct.pqi_ctrl_info* %179)
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %2, align 4
  br label %299

185:                                              ; preds = %178
  %186 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %187 = call i32 @pqi_alloc_operational_queues(%struct.pqi_ctrl_info* %186)
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %192 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %191, i32 0, i32 6
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = call i32 @dev_err(i32* %194, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %196 = load i32, i32* %4, align 4
  store i32 %196, i32* %2, align 4
  br label %299

197:                                              ; preds = %185
  %198 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %199 = call i32 @pqi_init_operational_queues(%struct.pqi_ctrl_info* %198)
  %200 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %201 = call i32 @pqi_request_irqs(%struct.pqi_ctrl_info* %200)
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* %4, align 4
  store i32 %205, i32* %2, align 4
  br label %299

206:                                              ; preds = %197
  %207 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %208 = call i32 @pqi_create_queues(%struct.pqi_ctrl_info* %207)
  store i32 %208, i32* %4, align 4
  %209 = load i32, i32* %4, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* %4, align 4
  store i32 %212, i32* %2, align 4
  br label %299

213:                                              ; preds = %206
  %214 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %215 = load i32, i32* @IRQ_MODE_MSIX, align 4
  %216 = call i32 @pqi_change_irq_mode(%struct.pqi_ctrl_info* %214, i32 %215)
  %217 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %218 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %217, i32 0, i32 5
  store i32 1, i32* %218, align 8
  %219 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %220 = call i32 @pqi_process_config_table(%struct.pqi_ctrl_info* %219)
  store i32 %220, i32* %4, align 4
  %221 = load i32, i32* %4, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %213
  %224 = load i32, i32* %4, align 4
  store i32 %224, i32* %2, align 4
  br label %299

225:                                              ; preds = %213
  %226 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %227 = call i32 @pqi_start_heartbeat_timer(%struct.pqi_ctrl_info* %226)
  %228 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %229 = call i32 @pqi_enable_events(%struct.pqi_ctrl_info* %228)
  store i32 %229, i32* %4, align 4
  %230 = load i32, i32* %4, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %225
  %233 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %234 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %233, i32 0, i32 6
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = call i32 @dev_err(i32* %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %238 = load i32, i32* %4, align 4
  store i32 %238, i32* %2, align 4
  br label %299

239:                                              ; preds = %225
  %240 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %241 = call i32 @pqi_register_scsi(%struct.pqi_ctrl_info* %240)
  store i32 %241, i32* %4, align 4
  %242 = load i32, i32* %4, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = load i32, i32* %4, align 4
  store i32 %245, i32* %2, align 4
  br label %299

246:                                              ; preds = %239
  %247 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %248 = call i32 @pqi_get_ctrl_product_details(%struct.pqi_ctrl_info* %247)
  store i32 %248, i32* %4, align 4
  %249 = load i32, i32* %4, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %246
  %252 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %253 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %252, i32 0, i32 6
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = call i32 @dev_err(i32* %255, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %257 = load i32, i32* %4, align 4
  store i32 %257, i32* %2, align 4
  br label %299

258:                                              ; preds = %246
  %259 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %260 = call i32 @pqi_get_ctrl_serial_number(%struct.pqi_ctrl_info* %259)
  store i32 %260, i32* %4, align 4
  %261 = load i32, i32* %4, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %258
  %264 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %265 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %264, i32 0, i32 6
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  %268 = call i32 @dev_err(i32* %267, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %269 = load i32, i32* %4, align 4
  store i32 %269, i32* %2, align 4
  br label %299

270:                                              ; preds = %258
  %271 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %272 = call i32 @pqi_set_diag_rescan(%struct.pqi_ctrl_info* %271)
  store i32 %272, i32* %4, align 4
  %273 = load i32, i32* %4, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %270
  %276 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %277 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %276, i32 0, i32 6
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = call i32 @dev_err(i32* %279, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %281 = load i32, i32* %4, align 4
  store i32 %281, i32* %2, align 4
  br label %299

282:                                              ; preds = %270
  %283 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %284 = call i32 @pqi_write_driver_version_to_host_wellness(%struct.pqi_ctrl_info* %283)
  store i32 %284, i32* %4, align 4
  %285 = load i32, i32* %4, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %282
  %288 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %289 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %288, i32 0, i32 6
  %290 = load %struct.TYPE_2__*, %struct.TYPE_2__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 0
  %292 = call i32 @dev_err(i32* %291, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %293 = load i32, i32* %4, align 4
  store i32 %293, i32* %2, align 4
  br label %299

294:                                              ; preds = %282
  %295 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %296 = call i32 @pqi_schedule_update_time_worker(%struct.pqi_ctrl_info* %295)
  %297 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %298 = call i32 @pqi_scan_scsi_devices(%struct.pqi_ctrl_info* %297)
  store i32 0, i32* %2, align 4
  br label %299

299:                                              ; preds = %294, %287, %275, %263, %251, %244, %232, %223, %211, %204, %190, %183, %160, %151, %139, %127, %115, %98, %86, %74, %35, %23, %16, %9
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local i32 @pqi_force_sis_mode(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @sis_wait_for_ctrl_ready(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @sis_get_ctrl_properties(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sis_get_pqi_capabilities(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_calculate_io_resources(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_alloc_error_buffer(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @sis_init_base_struct_addr(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_wait_for_pqi_mode_ready(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @pqi_alloc_admin_queues(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_create_admin_queues(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_report_device_capability(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_validate_device_capability(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_calculate_queue_resources(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_enable_msix_interrupts(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_alloc_io_resources(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_alloc_operational_queues(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_init_operational_queues(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_request_irqs(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_create_queues(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_change_irq_mode(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @pqi_process_config_table(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_start_heartbeat_timer(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_enable_events(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_register_scsi(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_get_ctrl_product_details(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_get_ctrl_serial_number(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_set_diag_rescan(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_write_driver_version_to_host_wellness(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_schedule_update_time_worker(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_scan_scsi_devices(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
