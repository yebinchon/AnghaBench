; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_fsl_qman_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_fsl_qman_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@__qman_probed = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can't get %pOF property 'IORESOURCE_MEM'\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@qm_ccsr_start = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Rev1.0 on P4080 rev1 is not supported!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@QMAN_REV11 = common dso_local global i32 0, align 4
@qman_ip_rev = common dso_local global i32 0, align 4
@QMAN_REV12 = common dso_local global i32 0, align 4
@QMAN_REV20 = common dso_local global i32 0, align 4
@QMAN_REV30 = common dso_local global i32 0, align 4
@QMAN_REV31 = common dso_local global i32 0, align 4
@QMAN_REV32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Unknown QMan version\0A\00", align 1
@QMAN_CHANNEL_POOL1_REV3 = common dso_local global i32 0, align 4
@qm_channel_pool1 = common dso_local global i32 0, align 4
@QMAN_CHANNEL_CAAM_REV3 = common dso_local global i32 0, align 4
@qm_channel_caam = common dso_local global i32 0, align 4
@fqd_a = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [62 x i8] c"Unexpected architecture using non shared-dma-mem reservations\00", align 1
@fqd_sz = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"qbman_init_private_mem() for FQD failed 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Allocated FQD 0x%llx 0x%zx\0A\00", align 1
@pfdr_a = common dso_local global i64 0, align 8
@pfdr_sz = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"qbman_init_private_mem() for PFDR failed 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Allocated PFDR 0x%llx 0x%zx\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"CCSR setup failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Can't get %pOF property 'interrupts'\0A\00", align 1
@qman_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"qman-err\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"devm_request_irq() failed %d for '%pOF'\0A\00", align 1
@REG_ERR_ISR = common dso_local global i32 0, align 4
@REG_ERR_IER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"qman-fqalloc\00", align 1
@qm_fqalloc = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"qman-fqalloc pool init failed (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"qman-qpalloc\00", align 1
@qm_qpalloc = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"qman-qpalloc pool init failed (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"qman-cgralloc\00", align 1
@qm_cgralloc = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [37 x i8] c"qman-cgralloc pool init failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_qman_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_qman_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  store i32 -1, i32* @__qman_probed, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %6, align 8
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = icmp ne %struct.resource* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.device_node* %24)
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %259

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.resource*, %struct.resource** %6, align 8
  %34 = call i32 @resource_size(%struct.resource* %33)
  %35 = call i32 @devm_ioremap(%struct.device* %29, i32 %32, i32 %34)
  store i32 %35, i32* @qm_ccsr_start, align 4
  %36 = load i32, i32* @qm_ccsr_start, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %259

41:                                               ; preds = %28
  %42 = call i32 @qm_get_version(i32* %9, i32* %10, i32* %11)
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %259

53:                                               ; preds = %45, %41
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @QMAN_REV11, align 4
  store i32 %60, i32* @qman_ip_rev, align 4
  br label %111

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @QMAN_REV12, align 4
  store i32 %68, i32* @qman_ip_rev, align 4
  br label %110

69:                                               ; preds = %64, %61
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @QMAN_REV20, align 4
  store i32 %76, i32* @qman_ip_rev, align 4
  br label %109

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @QMAN_REV30, align 4
  store i32 %84, i32* @qman_ip_rev, align 4
  br label %108

85:                                               ; preds = %80, %77
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @QMAN_REV31, align 4
  store i32 %92, i32* @qman_ip_rev, align 4
  br label %107

93:                                               ; preds = %88, %85
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @QMAN_REV32, align 4
  store i32 %100, i32* @qman_ip_rev, align 4
  br label %106

101:                                              ; preds = %96, %93
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %259

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %91
  br label %108

108:                                              ; preds = %107, %83
  br label %109

109:                                              ; preds = %108, %75
  br label %110

110:                                              ; preds = %109, %67
  br label %111

111:                                              ; preds = %110, %59
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* @qman_ip_rev, align 4
  %114 = and i32 %113, 65280
  %115 = load i32, i32* @QMAN_REV30, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* @QMAN_CHANNEL_POOL1_REV3, align 4
  store i32 %118, i32* @qm_channel_pool1, align 4
  %119 = load i32, i32* @QMAN_CHANNEL_CAAM_REV3, align 4
  store i32 %119, i32* @qm_channel_caam, align 4
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i64, i64* @fqd_a, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %137

125:                                              ; preds = %120
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = call i32 @qbman_init_private_mem(%struct.device* %126, i32 0, i64* @fqd_a, i32* @fqd_sz)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %259

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %123
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = load i64, i64* @fqd_a, align 8
  %140 = load i32, i32* @fqd_sz, align 4
  %141 = call i32 @dev_dbg(%struct.device* %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %139, i32 %140)
  %142 = load i64, i64* @pfdr_a, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %137
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = call i32 @qbman_init_private_mem(%struct.device* %145, i32 1, i64* @pfdr_a, i32* @pfdr_sz)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %150, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %259

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %137
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = load i64, i64* @pfdr_a, align 8
  %159 = load i32, i32* @pfdr_sz, align 4
  %160 = call i32 @dev_dbg(%struct.device* %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %158, i32 %159)
  %161 = load %struct.device*, %struct.device** %4, align 8
  %162 = call i32 @qman_init_ccsr(%struct.device* %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %156
  %166 = load %struct.device*, %struct.device** %4, align 8
  %167 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %2, align 4
  br label %259

169:                                              ; preds = %156
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = call i32 @platform_get_irq(%struct.platform_device* %170, i32 0)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp sle i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.device*, %struct.device** %4, align 8
  %176 = load %struct.device_node*, %struct.device_node** %5, align 8
  %177 = call i32 @dev_info(%struct.device* %175, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), %struct.device_node* %176)
  %178 = load i32, i32* @ENODEV, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %259

180:                                              ; preds = %169
  %181 = load %struct.device*, %struct.device** %4, align 8
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @qman_isr, align 4
  %184 = load i32, i32* @IRQF_SHARED, align 4
  %185 = load %struct.device*, %struct.device** %4, align 8
  %186 = call i32 @devm_request_irq(%struct.device* %181, i32 %182, i32 %183, i32 %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), %struct.device* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %180
  %190 = load %struct.device*, %struct.device** %4, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load %struct.device_node*, %struct.device_node** %5, align 8
  %193 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %190, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %191, %struct.device_node* %192)
  %194 = load i32, i32* %7, align 4
  store i32 %194, i32* %2, align 4
  br label %259

195:                                              ; preds = %180
  %196 = load i32, i32* @REG_ERR_ISR, align 4
  %197 = call i32 @qm_ccsr_out(i32 %196, i32 -1)
  %198 = load i32, i32* @REG_ERR_IER, align 4
  %199 = call i32 @qm_ccsr_out(i32 %198, i32 -1)
  %200 = load %struct.device*, %struct.device** %4, align 8
  %201 = call i32 @devm_gen_pool_create(%struct.device* %200, i32 0, i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i32 %201, i32* @qm_fqalloc, align 4
  %202 = load i32, i32* @qm_fqalloc, align 4
  %203 = call i64 @IS_ERR(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %195
  %206 = load i32, i32* @qm_fqalloc, align 4
  %207 = call i32 @PTR_ERR(i32 %206)
  store i32 %207, i32* %7, align 4
  %208 = load %struct.device*, %struct.device** %4, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %208, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %7, align 4
  store i32 %211, i32* %2, align 4
  br label %259

212:                                              ; preds = %195
  %213 = load %struct.device*, %struct.device** %4, align 8
  %214 = call i32 @devm_gen_pool_create(%struct.device* %213, i32 0, i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32 %214, i32* @qm_qpalloc, align 4
  %215 = load i32, i32* @qm_qpalloc, align 4
  %216 = call i64 @IS_ERR(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %212
  %219 = load i32, i32* @qm_qpalloc, align 4
  %220 = call i32 @PTR_ERR(i32 %219)
  store i32 %220, i32* %7, align 4
  %221 = load %struct.device*, %struct.device** %4, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %221, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %7, align 4
  store i32 %224, i32* %2, align 4
  br label %259

225:                                              ; preds = %212
  %226 = load %struct.device*, %struct.device** %4, align 8
  %227 = call i32 @devm_gen_pool_create(%struct.device* %226, i32 0, i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  store i32 %227, i32* @qm_cgralloc, align 4
  %228 = load i32, i32* @qm_cgralloc, align 4
  %229 = call i64 @IS_ERR(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %225
  %232 = load i32, i32* @qm_cgralloc, align 4
  %233 = call i32 @PTR_ERR(i32 %232)
  store i32 %233, i32* %7, align 4
  %234 = load %struct.device*, %struct.device** %4, align 8
  %235 = load i32, i32* %7, align 4
  %236 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %234, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %7, align 4
  store i32 %237, i32* %2, align 4
  br label %259

238:                                              ; preds = %225
  %239 = load %struct.device*, %struct.device** %4, align 8
  %240 = call i32 @qman_resource_init(%struct.device* %239)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i32, i32* %7, align 4
  store i32 %244, i32* %2, align 4
  br label %259

245:                                              ; preds = %238
  %246 = call i32 (...) @qm_get_fqid_maxcnt()
  %247 = call i32 @qman_alloc_fq_table(i32 %246)
  store i32 %247, i32* %7, align 4
  %248 = load i32, i32* %7, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load i32, i32* %7, align 4
  store i32 %251, i32* %2, align 4
  br label %259

252:                                              ; preds = %245
  %253 = call i32 (...) @qman_wq_alloc()
  store i32 %253, i32* %7, align 4
  %254 = load i32, i32* %7, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = load i32, i32* %7, align 4
  store i32 %257, i32* %2, align 4
  br label %259

258:                                              ; preds = %252
  store i32 1, i32* @__qman_probed, align 4
  store i32 0, i32* %2, align 4
  br label %259

259:                                              ; preds = %258, %256, %250, %243, %231, %218, %205, %189, %174, %165, %149, %130, %101, %48, %38, %22
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @qm_get_version(i32*, i32*, i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @qbman_init_private_mem(%struct.device*, i32, i64*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @qman_init_ccsr(%struct.device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.device*) #1

declare dso_local i32 @qm_ccsr_out(i32, i32) #1

declare dso_local i32 @devm_gen_pool_create(%struct.device*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @qman_resource_init(%struct.device*) #1

declare dso_local i32 @qman_alloc_fq_table(i32) #1

declare dso_local i32 @qm_get_fqid_maxcnt(...) #1

declare dso_local i32 @qman_wq_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
