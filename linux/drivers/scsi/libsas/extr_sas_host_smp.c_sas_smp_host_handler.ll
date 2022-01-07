; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_host_smp.c_sas_smp_host_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_host_smp.c_sas_smp_host_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.Scsi_Host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.sas_ha_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SMP_REQUEST = common dso_local global i32 0, align 4
@SMP_RESPONSE = common dso_local global i32 0, align 4
@SMP_RESP_FUNC_UNK = common dso_local global i32 0, align 4
@SMP_RESP_FUNC_ACC = common dso_local global i32 0, align 4
@SAS_EXPANDER_VENDOR_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"libsas virt phy\00", align 1
@SAS_EXPANDER_PRODUCT_ID_LEN = common dso_local global i32 0, align 4
@SMP_RESP_INV_FRM_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_smp_host_handler(%struct.bsg_job* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %12)
  store %struct.sas_ha_struct* %13, %struct.sas_ha_struct** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %23 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %2
  br label %224

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %32 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @kzalloc(i32 %34, i32 %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %224

40:                                               ; preds = %28
  %41 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %42 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %46 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %51 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sg_copy_to_buffer(i32 %44, i32 %48, i32* %49, i32 %53)
  %55 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %56 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @max(i32 %58, i32 128)
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32* @kzalloc(i32 %59, i32 %60)
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %40
  br label %221

65:                                               ; preds = %40
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SMP_REQUEST, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %218

74:                                               ; preds = %65
  %75 = load i32, i32* @SMP_RESPONSE, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @SMP_RESP_FUNC_UNK, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %202 [
    i32 133, label %89
    i32 132, label %98
    i32 134, label %115
    i32 137, label %116
    i32 131, label %130
    i32 130, label %131
    i32 129, label %145
    i32 128, label %146
    i32 138, label %175
    i32 136, label %176
    i32 135, label %201
  ]

89:                                               ; preds = %74
  %90 = load i32, i32* @SMP_RESP_FUNC_ACC, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %94 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 9
  store i32 %95, i32* %97, align 4
  store i32 32, i32* %8, align 4
  br label %203

98:                                               ; preds = %74
  %99 = load i32, i32* @SMP_RESP_FUNC_ACC, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 12
  %104 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %105 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* @SAS_EXPANDER_VENDOR_ID_LEN, align 4
  %110 = call i32 @memcpy(i32* %103, i8* %108, i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 20
  %113 = load i32, i32* @SAS_EXPANDER_PRODUCT_ID_LEN, align 4
  %114 = call i32 @memcpy(i32* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %113)
  store i32 64, i32* %8, align 4
  br label %203

115:                                              ; preds = %74
  br label %203

116:                                              ; preds = %74
  %117 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %118 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %120, 16
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %218

123:                                              ; preds = %116
  %124 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 9
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @sas_host_smp_discover(%struct.sas_ha_struct* %124, i32* %125, i32 %128)
  store i32 56, i32* %8, align 4
  br label %203

130:                                              ; preds = %74
  br label %203

131:                                              ; preds = %74
  %132 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %133 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %135, 16
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %218

138:                                              ; preds = %131
  %139 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 9
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @sas_report_phy_sata(%struct.sas_ha_struct* %139, i32* %140, i32 %143)
  store i32 60, i32* %8, align 4
  br label %203

145:                                              ; preds = %74
  br label %203

146:                                              ; preds = %74
  store i32 11, i32* %10, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 4
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %11, align 4
  %150 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %151 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %11, align 4
  %155 = mul nsw i32 %154, 4
  %156 = add nsw i32 11, %155
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %146
  %159 = load i32, i32* @SMP_RESP_INV_FRM_LEN, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32 %159, i32* %161, align 4
  br label %203

162:                                              ; preds = %146
  %163 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 8
  %174 = call i32 @sas_host_smp_write_gpio(%struct.sas_ha_struct* %163, i32* %164, i32 %167, i32 %170, i32 %171, i32* %173)
  store i32 %174, i32* %11, align 4
  store i32 8, i32* %8, align 4
  br label %203

175:                                              ; preds = %74
  br label %203

176:                                              ; preds = %74
  %177 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %178 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %180, 44
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %218

183:                                              ; preds = %176
  %184 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 9
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %6, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 10
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %6, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 32
  %193 = load i32, i32* %192, align 4
  %194 = ashr i32 %193, 4
  %195 = load i32*, i32** %6, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 33
  %197 = load i32, i32* %196, align 4
  %198 = ashr i32 %197, 4
  %199 = load i32*, i32** %7, align 8
  %200 = call i32 @sas_phy_control(%struct.sas_ha_struct* %184, i32 %187, i32 %190, i32 %194, i32 %198, i32* %199)
  store i32 8, i32* %8, align 4
  br label %203

201:                                              ; preds = %74
  br label %203

202:                                              ; preds = %74
  br label %203

203:                                              ; preds = %202, %201, %183, %175, %162, %158, %145, %138, %130, %123, %115, %98, %89
  %204 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %205 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %209 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %7, align 8
  %213 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %214 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @sg_copy_from_buffer(i32 %207, i32 %211, i32* %212, i32 %216)
  store i32 0, i32* %9, align 4
  br label %218

218:                                              ; preds = %203, %182, %137, %122, %73
  %219 = load i32*, i32** %7, align 8
  %220 = call i32 @kfree(i32* %219)
  br label %221

221:                                              ; preds = %218, %64
  %222 = load i32*, i32** %6, align 8
  %223 = call i32 @kfree(i32* %222)
  br label %224

224:                                              ; preds = %221, %39, %27
  %225 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @bsg_job_done(%struct.bsg_job* %225, i32 %226, i32 %227)
  ret void
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @sas_host_smp_discover(%struct.sas_ha_struct*, i32*, i32) #1

declare dso_local i32 @sas_report_phy_sata(%struct.sas_ha_struct*, i32*, i32) #1

declare dso_local i32 @sas_host_smp_write_gpio(%struct.sas_ha_struct*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @sas_phy_control(%struct.sas_ha_struct*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
