; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_submit_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_submit_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.uas_dev_info = type { i32, i32, i32 }
%struct.uas_cmd_info = type { i32, i32*, i32*, i32* }
%struct.urb = type { i32 }

@SUBMIT_STATUS_URB = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@ALLOC_DATA_IN_URB = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SUBMIT_DATA_IN_URB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"data in submit err\00", align 1
@DATA_IN_URB_INFLIGHT = common dso_local global i32 0, align 4
@ALLOC_DATA_OUT_URB = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SUBMIT_DATA_OUT_URB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"data out submit err\00", align 1
@DATA_OUT_URB_INFLIGHT = common dso_local global i32 0, align 4
@ALLOC_CMD_URB = common dso_local global i32 0, align 4
@SUBMIT_CMD_URB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"cmd submit err\00", align 1
@COMMAND_INFLIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.uas_dev_info*)* @uas_submit_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uas_submit_urbs(%struct.scsi_cmnd* %0, %struct.uas_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.uas_dev_info*, align 8
  %6 = alloca %struct.uas_cmd_info*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.uas_dev_info* %1, %struct.uas_dev_info** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.uas_cmd_info*
  store %struct.uas_cmd_info* %12, %struct.uas_cmd_info** %6, align 8
  %13 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %14 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %13, i32 0, i32 2
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %17 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SUBMIT_STATUS_URB, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.urb* @uas_submit_sense_urb(%struct.scsi_cmnd* %23, i32 %24)
  store %struct.urb* %25, %struct.urb** %7, align 8
  %26 = load %struct.urb*, %struct.urb** %7, align 8
  %27 = icmp ne %struct.urb* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %29, i32* %3, align 4
  br label %251

30:                                               ; preds = %22
  %31 = load i32, i32* @SUBMIT_STATUS_URB, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %34 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %30, %2
  %38 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %39 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ALLOC_DATA_IN_URB, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %37
  %45 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %49 = call i8* @uas_alloc_data_urb(%struct.uas_dev_info* %45, i32 %46, %struct.scsi_cmnd* %47, i32 %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %52 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %51, i32 0, i32 3
  store i32* %50, i32** %52, align 8
  %53 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %54 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %58, i32* %3, align 4
  br label %251

59:                                               ; preds = %44
  %60 = load i32, i32* @ALLOC_DATA_IN_URB, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %63 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %37
  %67 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %68 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SUBMIT_DATA_IN_URB, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %66
  %74 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %75 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %78 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %77, i32 0, i32 1
  %79 = call i32 @usb_anchor_urb(i32* %76, i32* %78)
  %80 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %81 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @GFP_ATOMIC, align 4
  %84 = call i32 @usb_submit_urb(i32* %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %73
  %88 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %89 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @usb_unanchor_urb(i32* %90)
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @uas_log_cmd_state(%struct.scsi_cmnd* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %95, i32* %3, align 4
  br label %251

96:                                               ; preds = %73
  %97 = load i32, i32* @SUBMIT_DATA_IN_URB, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %100 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @DATA_IN_URB_INFLIGHT, align 4
  %104 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %105 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %96, %66
  %109 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %110 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ALLOC_DATA_OUT_URB, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %137

115:                                              ; preds = %108
  %116 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %117 = load i32, i32* @GFP_ATOMIC, align 4
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %119 = load i32, i32* @DMA_TO_DEVICE, align 4
  %120 = call i8* @uas_alloc_data_urb(%struct.uas_dev_info* %116, i32 %117, %struct.scsi_cmnd* %118, i32 %119)
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %123 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %122, i32 0, i32 2
  store i32* %121, i32** %123, align 8
  %124 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %125 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %115
  %129 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %129, i32* %3, align 4
  br label %251

130:                                              ; preds = %115
  %131 = load i32, i32* @ALLOC_DATA_OUT_URB, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %134 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %130, %108
  %138 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %139 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @SUBMIT_DATA_OUT_URB, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %179

144:                                              ; preds = %137
  %145 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %146 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %149 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %148, i32 0, i32 1
  %150 = call i32 @usb_anchor_urb(i32* %147, i32* %149)
  %151 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %152 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @GFP_ATOMIC, align 4
  %155 = call i32 @usb_submit_urb(i32* %153, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %144
  %159 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %160 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @usb_unanchor_urb(i32* %161)
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @uas_log_cmd_state(%struct.scsi_cmnd* %163, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %166, i32* %3, align 4
  br label %251

167:                                              ; preds = %144
  %168 = load i32, i32* @SUBMIT_DATA_OUT_URB, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %171 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* @DATA_OUT_URB_INFLIGHT, align 4
  %175 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %176 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %167, %137
  %180 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %181 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @ALLOC_CMD_URB, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %179
  %187 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %188 = load i32, i32* @GFP_ATOMIC, align 4
  %189 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %190 = call i32* @uas_alloc_cmd_urb(%struct.uas_dev_info* %187, i32 %188, %struct.scsi_cmnd* %189)
  %191 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %192 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %191, i32 0, i32 1
  store i32* %190, i32** %192, align 8
  %193 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %194 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %186
  %198 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %198, i32* %3, align 4
  br label %251

199:                                              ; preds = %186
  %200 = load i32, i32* @ALLOC_CMD_URB, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %203 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %199, %179
  %207 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %208 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @SUBMIT_CMD_URB, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %250

213:                                              ; preds = %206
  %214 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %215 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %218 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %217, i32 0, i32 0
  %219 = call i32 @usb_anchor_urb(i32* %216, i32* %218)
  %220 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %221 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* @GFP_ATOMIC, align 4
  %224 = call i32 @usb_submit_urb(i32* %222, i32 %223)
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %213
  %228 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %229 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @usb_unanchor_urb(i32* %230)
  %232 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @uas_log_cmd_state(%struct.scsi_cmnd* %232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %235, i32* %3, align 4
  br label %251

236:                                              ; preds = %213
  %237 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %238 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %237, i32 0, i32 1
  store i32* null, i32** %238, align 8
  %239 = load i32, i32* @SUBMIT_CMD_URB, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %242 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load i32, i32* @COMMAND_INFLIGHT, align 4
  %246 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %247 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %236, %206
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %250, %227, %197, %158, %128, %87, %57, %28
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.urb* @uas_submit_sense_urb(%struct.scsi_cmnd*, i32) #1

declare dso_local i8* @uas_alloc_data_urb(%struct.uas_dev_info*, i32, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @usb_anchor_urb(i32*, i32*) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @usb_unanchor_urb(i32*) #1

declare dso_local i32 @uas_log_cmd_state(%struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32* @uas_alloc_cmd_urb(%struct.uas_dev_info*, i32, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
