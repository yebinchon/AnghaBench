; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_use_fwconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_use_fwconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.csio_hw*)* }
%struct.csio_mb = type { i64 }
%struct.fw_caps_config_cmd = type { i8*, i8*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"On FLASH\00", align 1
@FW_MEMTYPE_CF_FLASH = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@FW_CAPS_CONFIG_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_CAPS_CONFIG_CMD_CFVALID_F = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Firmware Default\00", align 1
@FW_SUCCESS = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"FW_CAPS_CONFIG_CMD returned %d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Config File checksum mismatch: csum=%#x, computed=%#x\0A\00", align 1
@CSIO_HWF_USING_SOFT_PARAMS = common dso_local global i32 0, align 4
@CSIO_HWE_INIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [97 x i8] c"Successfully configure using Firmware Configuration File %s, version %#x, computed checksum %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Configuration file error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i32, i32*)* @csio_hw_use_fwconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_use_fwconfig(%struct.csio_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.csio_mb*, align 8
  %9 = alloca %struct.fw_caps_config_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [64 x i8], align 16
  %17 = alloca i8*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.csio_mb* null, %struct.csio_mb** %8, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i8* null, i8** %17, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %24 = call i32 @csio_do_reset(%struct.csio_hw* %23, i32 1)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %244

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %31 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %30, i32 0, i32 4
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %36 = call i32 @csio_hw_flash_config(%struct.csio_hw* %33, i32* %34, i8* %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %38 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %37, i32 0, i32 4
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %29
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %43 = load i32, i32* @FW_MEMTYPE_CF_FLASH, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %45 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.csio_hw*)*, i32 (%struct.csio_hw*)** %47, align 8
  %49 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %50 = call i32 %48(%struct.csio_hw* %49)
  store i32 %50, i32* %11, align 4
  br label %60

51:                                               ; preds = %29
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  store i8* %52, i8** %17, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FW_PARAMS_PARAM_Y_G(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @FW_PARAMS_PARAM_Z_G(i32 %57)
  %59 = shl i32 %58, 16
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %51, %42
  %61 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %62 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.csio_mb* @mempool_alloc(i32 %63, i32 %64)
  store %struct.csio_mb* %65, %struct.csio_mb** %8, align 8
  %66 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %67 = icmp ne %struct.csio_mb* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %60
  %69 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %70 = load i32, i32* @n_err_nomem, align 4
  %71 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %69, i32 %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %264

74:                                               ; preds = %60
  %75 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %76 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.fw_caps_config_cmd*
  store %struct.fw_caps_config_cmd* %78, %struct.fw_caps_config_cmd** %9, align 8
  %79 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %80 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %81 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %82 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %83 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %79, %struct.fw_caps_config_cmd* %80, i32 %81, %struct.csio_hw* %82, i32* null, i32 1)
  %84 = load i32, i32* @FW_CAPS_CONFIG_CMD, align 4
  %85 = call i32 @FW_CMD_OP_V(i32 %84)
  %86 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @FW_CMD_READ_F, align 4
  %89 = or i32 %87, %88
  %90 = call i8* @htonl(i32 %89)
  %91 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %92 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @FW_CAPS_CONFIG_CMD_CFVALID_F, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @FW_CAPS_CONFIG_CMD_MEMTYPE_CF_V(i32 %94)
  %96 = or i32 %93, %95
  %97 = load i32, i32* %11, align 4
  %98 = lshr i32 %97, 16
  %99 = call i32 @FW_CAPS_CONFIG_CMD_MEMADDR64K_CF_V(i32 %98)
  %100 = or i32 %96, %99
  %101 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %102 = call i32 @FW_LEN16(%struct.fw_caps_config_cmd* byval(%struct.fw_caps_config_cmd) align 8 %101)
  %103 = or i32 %100, %102
  %104 = call i8* @htonl(i32 %103)
  %105 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %106 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %108 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %109 = call i64 @csio_mb_issue(%struct.csio_hw* %107, %struct.csio_mb* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %74
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %12, align 4
  br label %244

114:                                              ; preds = %74
  %115 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %116 = call i32 @csio_mb_fw_retval(%struct.csio_mb* %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @ENOENT, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %114
  %121 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %122 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %123 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %124 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %125 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %121, %struct.fw_caps_config_cmd* %122, i32 %123, %struct.csio_hw* %124, i32* null, i32 1)
  %126 = load i32, i32* @FW_CAPS_CONFIG_CMD, align 4
  %127 = call i32 @FW_CMD_OP_V(i32 %126)
  %128 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @FW_CMD_READ_F, align 4
  %131 = or i32 %129, %130
  %132 = call i8* @htonl(i32 %131)
  %133 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %134 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %136 = call i32 @FW_LEN16(%struct.fw_caps_config_cmd* byval(%struct.fw_caps_config_cmd) align 8 %135)
  %137 = call i8* @htonl(i32 %136)
  %138 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %139 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %141 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %142 = call i64 @csio_mb_issue(%struct.csio_hw* %140, %struct.csio_mb* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %120
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %12, align 4
  br label %244

147:                                              ; preds = %120
  %148 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %149 = call i32 @csio_mb_fw_retval(%struct.csio_mb* %148)
  store i32 %149, i32* %12, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %150

150:                                              ; preds = %147, %114
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @FW_SUCCESS, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %244

155:                                              ; preds = %150
  %156 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %157 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @ntohl(i32 %158)
  store i64 %159, i64* %13, align 8
  %160 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %161 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @ntohl(i32 %162)
  store i64 %163, i64* %14, align 8
  %164 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %165 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @ntohl(i32 %166)
  store i64 %167, i64* %15, align 8
  %168 = load i32, i32* @FW_CAPS_CONFIG_CMD, align 4
  %169 = call i32 @FW_CMD_OP_V(i32 %168)
  %170 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %173 = or i32 %171, %172
  %174 = call i8* @htonl(i32 %173)
  %175 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %176 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  %177 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %178 = call i32 @FW_LEN16(%struct.fw_caps_config_cmd* byval(%struct.fw_caps_config_cmd) align 8 %177)
  %179 = call i8* @htonl(i32 %178)
  %180 = load %struct.fw_caps_config_cmd*, %struct.fw_caps_config_cmd** %9, align 8
  %181 = getelementptr inbounds %struct.fw_caps_config_cmd, %struct.fw_caps_config_cmd* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %183 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %184 = call i64 @csio_mb_issue(%struct.csio_hw* %182, %struct.csio_mb* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %155
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %12, align 4
  br label %244

189:                                              ; preds = %155
  %190 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %191 = call i32 @csio_mb_fw_retval(%struct.csio_mb* %190)
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* @FW_SUCCESS, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @csio_dbg(%struct.csio_hw* %196, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %197)
  br label %244

199:                                              ; preds = %189
  %200 = load i64, i64* %14, align 8
  %201 = load i64, i64* %15, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %199
  %204 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %205 = load i64, i64* %14, align 8
  %206 = trunc i64 %205 to i32
  %207 = load i64, i64* %15, align 8
  %208 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_warn(%struct.csio_hw* %204, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %206, i64 %207)
  br label %209

209:                                              ; preds = %203, %199
  %210 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %211 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %212 = call i32 @csio_hw_validate_caps(%struct.csio_hw* %210, %struct.csio_mb* %211)
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %244

216:                                              ; preds = %209
  %217 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %218 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %219 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @mempool_free(%struct.csio_mb* %217, i32 %220)
  store %struct.csio_mb* null, %struct.csio_mb** %8, align 8
  %222 = load i32, i32* @CSIO_HWF_USING_SOFT_PARAMS, align 4
  %223 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %224 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %228 = call i32 @csio_get_device_params(%struct.csio_hw* %227)
  store i32 %228, i32* %12, align 4
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %216
  br label %244

232:                                              ; preds = %216
  %233 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %234 = call i32 @csio_wr_sge_init(%struct.csio_hw* %233)
  %235 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %236 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %235, i32 0, i32 2
  %237 = load i32, i32* @CSIO_HWE_INIT, align 4
  %238 = call i32 @csio_post_event(i32* %236, i32 %237)
  %239 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %240 = load i8*, i8** %17, align 8
  %241 = load i64, i64* %13, align 8
  %242 = load i64, i64* %15, align 8
  %243 = call i32 @csio_info(%struct.csio_hw* %239, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.4, i64 0, i64 0), i8* %240, i64 %241, i64 %242)
  store i32 0, i32* %4, align 4
  br label %264

244:                                              ; preds = %231, %215, %195, %186, %154, %144, %111, %27
  %245 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %246 = icmp ne %struct.csio_mb* %245, null
  br i1 %246, label %247, label %253

247:                                              ; preds = %244
  %248 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %249 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %250 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @mempool_free(%struct.csio_mb* %248, i32 %251)
  br label %253

253:                                              ; preds = %247, %244
  %254 = load i32, i32* @CSIO_HWF_USING_SOFT_PARAMS, align 4
  %255 = xor i32 %254, -1
  %256 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %257 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, %255
  store i32 %259, i32* %257, align 8
  %260 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %261 = load i32, i32* %12, align 4
  %262 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_warn(%struct.csio_hw* %260, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* %12, align 4
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %253, %232, %68
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local i32 @csio_do_reset(%struct.csio_hw*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_hw_flash_config(%struct.csio_hw*, i32*, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @FW_PARAMS_PARAM_Y_G(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_Z_G(i32) #1

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_caps_config_cmd*, i32, %struct.csio_hw*, i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_CAPS_CONFIG_CMD_MEMTYPE_CF_V(i32) #1

declare dso_local i32 @FW_CAPS_CONFIG_CMD_MEMADDR64K_CF_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_caps_config_cmd* byval(%struct.fw_caps_config_cmd) align 8) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_mb_fw_retval(%struct.csio_mb*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i32) #1

declare dso_local i32 @csio_warn(%struct.csio_hw*, i8*, i32, ...) #1

declare dso_local i32 @csio_hw_validate_caps(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_get_device_params(%struct.csio_hw*) #1

declare dso_local i32 @csio_wr_sge_init(%struct.csio_hw*) #1

declare dso_local i32 @csio_post_event(i32*, i32) #1

declare dso_local i32 @csio_info(%struct.csio_hw*, i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
