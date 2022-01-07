; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_fcp_cpu_map_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_fcp_cpu_map_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.lpfc_vector_map_info* }
%struct.lpfc_vector_map_info = type { i32, i32, i32, i32, i32, i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@MSIX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"fcp_cpu_map: No mapping (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"fcp_cpu_map: HBA centric mapping (%d): %d of %d CPUs online from %d possible CPUs\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"CPU %02d not present\0A\00", align 1
@LPFC_VECTOR_MAP_EMPTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"CPU %02d hdwq None physid %d coreid %d ht %d ua %d\0A\00", align 1
@LPFC_CPU_MAP_HYPER = common dso_local global i32 0, align 4
@LPFC_CPU_MAP_UNASSIGN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"CPU %02d EQ %04d hdwq %04d physid %d coreid %d ht %d ua %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"CPU %02d hdwq None physid %d coreid %d ht %d ua %d IRQ %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"CPU %02d EQ %04d hdwq %04d physid %d coreid %d ht %d ua %d IRQ %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"more...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lpfc_fcp_cpu_map_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_fcp_cpu_map_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_vport*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.lpfc_vector_map_info*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %8, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %18, %struct.lpfc_vport** %9, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 0
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  store %struct.lpfc_hba* %21, %struct.lpfc_hba** %10, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LPFC_SLI_REV4, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MSIX, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %3
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %343

35:                                               ; preds = %27
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %78 [
    i32 0, label %39
    i32 1, label %56
  ]

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %43, i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %343

56:                                               ; preds = %35
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (...) @num_online_cpus()
  %68 = call i32 (...) @num_present_cpus()
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %60, i32 %63, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i32 %68, i64 %72)
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %35, %56
  br label %79

79:                                               ; preds = %326, %78
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %83, %87
  br i1 %88, label %89, label %327

89:                                               ; preds = %79
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %92, align 8
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %93, i64 %97
  store %struct.lpfc_vector_map_info* %98, %struct.lpfc_vector_map_info** %11, align 8
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @cpu_present(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %122, label %105

105:                                              ; preds = %89
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %109, i32 %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %116)
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %12, align 4
  br label %293

122:                                              ; preds = %89
  %123 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %124 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @LPFC_VECTOR_MAP_EMPTY, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %207

128:                                              ; preds = %122
  %129 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %130 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @LPFC_VECTOR_MAP_EMPTY, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %167

134:                                              ; preds = %128
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i32, i32* @PAGE_SIZE, align 4
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %147 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %150 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %153 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @LPFC_CPU_MAP_HYPER, align 4
  %156 = and i32 %154, %155
  %157 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %158 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @LPFC_CPU_MAP_UNASSIGN, align 4
  %161 = and i32 %159, %160
  %162 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %138, i32 %141, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %145, i32 %148, i32 %151, i32 %156, i32 %161)
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %12, align 4
  br label %206

167:                                              ; preds = %128
  %168 = load i8*, i8** %7, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i32, i32* @PAGE_SIZE, align 4
  %173 = load i32, i32* %12, align 4
  %174 = sub nsw i32 %172, %173
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %180 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %183 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %186 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %189 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %192 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @LPFC_CPU_MAP_HYPER, align 4
  %195 = and i32 %193, %194
  %196 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %197 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @LPFC_CPU_MAP_UNASSIGN, align 4
  %200 = and i32 %198, %199
  %201 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %171, i32 %174, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i64 %178, i32 %181, i32 %184, i32 %187, i32 %190, i32 %195, i32 %200)
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %167, %134
  br label %292

207:                                              ; preds = %122
  %208 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %209 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @LPFC_VECTOR_MAP_EMPTY, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %249

213:                                              ; preds = %207
  %214 = load i8*, i8** %7, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i32, i32* @PAGE_SIZE, align 4
  %219 = load i32, i32* %12, align 4
  %220 = sub nsw i32 %218, %219
  %221 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %222 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %226 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %229 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %232 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @LPFC_CPU_MAP_HYPER, align 4
  %235 = and i32 %233, %234
  %236 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %237 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @LPFC_CPU_MAP_UNASSIGN, align 4
  %240 = and i32 %238, %239
  %241 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %242 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %217, i32 %220, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i64 %224, i32 %227, i32 %230, i32 %235, i32 %240, i32 %243)
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %244
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %12, align 4
  br label %291

249:                                              ; preds = %207
  %250 = load i8*, i8** %7, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i32, i32* @PAGE_SIZE, align 4
  %255 = load i32, i32* %12, align 4
  %256 = sub nsw i32 %254, %255
  %257 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %258 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %262 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %265 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %268 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %271 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %274 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @LPFC_CPU_MAP_HYPER, align 4
  %277 = and i32 %275, %276
  %278 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %279 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @LPFC_CPU_MAP_UNASSIGN, align 4
  %282 = and i32 %280, %281
  %283 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %284 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %253, i32 %256, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i64 %260, i32 %263, i32 %266, i32 %269, i32 %272, i32 %277, i32 %282, i32 %285)
  %287 = load i32, i32* %12, align 4
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %288, %286
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %12, align 4
  br label %291

291:                                              ; preds = %249, %213
  br label %292

292:                                              ; preds = %291, %206
  br label %293

293:                                              ; preds = %292, %105
  %294 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %295 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = add i64 %297, 1
  store i64 %298, i64* %296, align 8
  %299 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %300 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %304 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ult i64 %302, %306
  br i1 %307, label %308, label %326

308:                                              ; preds = %293
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* @PAGE_SIZE, align 4
  %311 = sub nsw i32 %310, 64
  %312 = icmp sge i32 %309, %311
  br i1 %312, label %313, label %326

313:                                              ; preds = %308
  %314 = load i8*, i8** %7, align 8
  %315 = load i32, i32* %12, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  %318 = load i32, i32* @PAGE_SIZE, align 4
  %319 = load i32, i32* %12, align 4
  %320 = sub nsw i32 %318, %319
  %321 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %317, i32 %320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %322 = load i32, i32* %12, align 4
  %323 = sext i32 %322 to i64
  %324 = add nsw i64 %323, %321
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %12, align 4
  br label %327

326:                                              ; preds = %308, %293
  br label %79

327:                                              ; preds = %313, %79
  %328 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %329 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %333 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = icmp eq i64 %331, %335
  br i1 %336, label %337, label %341

337:                                              ; preds = %327
  %338 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %339 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 1
  store i64 0, i64* %340, align 8
  br label %341

341:                                              ; preds = %337, %327
  %342 = load i32, i32* %12, align 4
  store i32 %342, i32* %4, align 4
  br label %343

343:                                              ; preds = %341, %39, %33
  %344 = load i32, i32* %4, align 4
  ret i32 %344
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @num_present_cpus(...) #1

declare dso_local i32 @cpu_present(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
