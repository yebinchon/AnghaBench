; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_set_nvmd_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_set_nvmd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_4__, %struct.pm8001_ccb_info*, %struct.inbound_queue_table* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pm8001_ccb_info = type { i64, %struct.fw_control_ex* }
%struct.fw_control_ex = type { i32 }
%struct.inbound_queue_table = type { i32 }
%struct.set_nvm_data_req = type { i8*, i8*, i8**, i8*, i8*, i8* }
%struct.pm8001_ioctl_payload = type { i64, i32, i32 }

@OPC_INB_SET_NVMD_DATA = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVMD = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@IPMode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_chip_set_nvmd_req(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pm8001_ccb_info*, align 8
  %11 = alloca %struct.inbound_queue_table*, align 8
  %12 = alloca %struct.set_nvm_data_req, align 8
  %13 = alloca %struct.fw_control_ex*, align 8
  %14 = alloca %struct.pm8001_ioctl_payload*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i64, i64* @OPC_INB_SET_NVMD_DATA, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.pm8001_ioctl_payload*
  store %struct.pm8001_ioctl_payload* %19, %struct.pm8001_ioctl_payload** %14, align 8
  %20 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %21 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.fw_control_ex* @kzalloc(i32 4, i32 %23)
  store %struct.fw_control_ex* %24, %struct.fw_control_ex** %13, align 8
  %25 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %26 = icmp ne %struct.fw_control_ex* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %238

30:                                               ; preds = %2
  %31 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %32 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %31, i32 0, i32 2
  %33 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %32, align 8
  %34 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %33, i64 0
  store %struct.inbound_queue_table* %34, %struct.inbound_queue_table** %11, align 8
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %36 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i64, i64* @NVMD, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %44 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %43, i32 0, i32 2
  %45 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %46 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i32 %42, i32* %44, i32 %47)
  %49 = call i32 @memset(%struct.set_nvm_data_req* %12, i32 0, i32 48)
  %50 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %51 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %50, i64* %9)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %30
  %55 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %56 = call i32 @kfree(%struct.fw_control_ex* %55)
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %238

59:                                               ; preds = %30
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %61 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %60, i32 0, i32 1
  %62 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %62, i64 %63
  store %struct.pm8001_ccb_info* %64, %struct.pm8001_ccb_info** %10, align 8
  %65 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %66 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %10, align 8
  %67 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %66, i32 0, i32 1
  store %struct.fw_control_ex* %65, %struct.fw_control_ex** %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %10, align 8
  %70 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 5
  store i8* %73, i8** %74, align 8
  %75 = load i64, i64* %7, align 8
  switch i64 %75, label %222 [
    i64 129, label %76
    i64 131, label %117
    i64 128, label %152
    i64 130, label %187
  ]

76:                                               ; preds = %59
  store i64 168, i64* %15, align 8
  store i64 2, i64* %16, align 8
  %77 = call i8* @cpu_to_le32(i32 -19088744)
  %78 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 2
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  store i8* %77, i8** %80, align 8
  %81 = load i64, i64* @IPMode, align 8
  %82 = load i64, i64* %15, align 8
  %83 = shl i64 %82, 16
  %84 = or i64 %81, %83
  %85 = load i64, i64* %16, align 8
  %86 = shl i64 %85, 8
  %87 = or i64 %84, %86
  %88 = or i64 %87, 129
  %89 = trunc i64 %88 to i32
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 4
  store i8* %90, i8** %91, align 8
  %92 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %93 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 3
  store i8* %95, i8** %96, align 8
  %97 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %98 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i64, i64* @NVMD, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 1
  store i8* %105, i8** %106, align 8
  %107 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %108 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i64, i64* @NVMD, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @cpu_to_le32(i32 %114)
  %116 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 0
  store i8* %115, i8** %116, align 8
  br label %223

117:                                              ; preds = %59
  %118 = load i64, i64* @IPMode, align 8
  %119 = or i64 %118, 131
  %120 = trunc i64 %119 to i32
  %121 = call i8* @cpu_to_le32(i32 %120)
  %122 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 4
  store i8* %121, i8** %122, align 8
  %123 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %124 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @cpu_to_le32(i32 %125)
  %127 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 3
  store i8* %126, i8** %127, align 8
  %128 = call i8* @cpu_to_le32(i32 -19088744)
  %129 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 2
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  store i8* %128, i8** %131, align 8
  %132 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %133 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i64, i64* @NVMD, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 1
  store i8* %140, i8** %141, align 8
  %142 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %143 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = load i64, i64* @NVMD, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @cpu_to_le32(i32 %149)
  %151 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 0
  store i8* %150, i8** %151, align 8
  br label %223

152:                                              ; preds = %59
  %153 = load i64, i64* @IPMode, align 8
  %154 = or i64 %153, 128
  %155 = trunc i64 %154 to i32
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 4
  store i8* %156, i8** %157, align 8
  %158 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %159 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i8* @cpu_to_le32(i32 %160)
  %162 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 3
  store i8* %161, i8** %162, align 8
  %163 = call i8* @cpu_to_le32(i32 -19088744)
  %164 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 2
  %165 = load i8**, i8*** %164, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  store i8* %163, i8** %166, align 8
  %167 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %168 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = load i64, i64* @NVMD, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @cpu_to_le32(i32 %174)
  %176 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 1
  store i8* %175, i8** %176, align 8
  %177 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %178 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = load i64, i64* @NVMD, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @cpu_to_le32(i32 %184)
  %186 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 0
  store i8* %185, i8** %186, align 8
  br label %223

187:                                              ; preds = %59
  %188 = load i64, i64* @IPMode, align 8
  %189 = or i64 %188, 130
  %190 = trunc i64 %189 to i32
  %191 = call i8* @cpu_to_le32(i32 %190)
  %192 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 4
  store i8* %191, i8** %192, align 8
  %193 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %194 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = call i8* @cpu_to_le32(i32 %195)
  %197 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 3
  store i8* %196, i8** %197, align 8
  %198 = call i8* @cpu_to_le32(i32 -19088744)
  %199 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 2
  %200 = load i8**, i8*** %199, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 0
  store i8* %198, i8** %201, align 8
  %202 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %203 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = load i64, i64* @NVMD, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @cpu_to_le32(i32 %209)
  %211 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 1
  store i8* %210, i8** %211, align 8
  %212 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %213 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %214, align 8
  %216 = load i64, i64* @NVMD, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @cpu_to_le32(i32 %219)
  %221 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 0
  store i8* %220, i8** %221, align 8
  br label %223

222:                                              ; preds = %59
  br label %223

223:                                              ; preds = %222, %187, %152, %117, %76
  %224 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %225 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %11, align 8
  %226 = load i64, i64* %6, align 8
  %227 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %224, %struct.inbound_queue_table* %225, i64 %226, %struct.set_nvm_data_req* %12, i32 0)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %223
  %231 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %232 = call i32 @kfree(%struct.fw_control_ex* %231)
  %233 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %234 = load i64, i64* %9, align 8
  %235 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %233, i64 %234)
  br label %236

236:                                              ; preds = %230, %223
  %237 = load i32, i32* %8, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %236, %54, %27
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.fw_control_ex* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.set_nvm_data_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i64*) #1

declare dso_local i32 @kfree(%struct.fw_control_ex*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i64, %struct.set_nvm_data_req*, i32) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
