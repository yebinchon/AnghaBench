; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i32, i64, %struct.lpfc_vport*, i32, i32, %struct.TYPE_4__ }
%struct.lpfc_vport = type { i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32* }

@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"0458 Bring Adapter online\0A\00", align 1
@LPFC_MBX_WAIT = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_ENABLE_NVME = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"6132 NVME restore reg failed on nvmei error x%x\0A\00", align 1
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_REG_VPI = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_INIT_VPI = common dso_local global i32 0, align 4
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_online(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_vport**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = icmp ne %struct.lpfc_hba* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %212

13:                                               ; preds = %1
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 5
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %15, align 8
  store %struct.lpfc_vport* %16, %struct.lpfc_vport** %4, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %212

24:                                               ; preds = %13
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = load i32, i32* @KERN_WARNING, align 4
  %27 = load i32, i32* @LOG_INIT, align 4
  %28 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %30 = load i32, i32* @LPFC_MBX_WAIT, align 4
  %31 = call i32 @lpfc_block_mgmt_io(%struct.lpfc_hba* %29, i32 %30)
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LPFC_SLI_REV4, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %24
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = call i64 @lpfc_sli4_hba_setup(%struct.lpfc_hba* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %42)
  store i32 1, i32* %2, align 4
  br label %212

44:                                               ; preds = %37
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 7
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 7
  %58 = call i32 @spin_unlock_irq(i32* %57)
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %55
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 5
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %72, align 8
  %74 = call i32 @lpfc_nvme_create_localport(%struct.lpfc_vport* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %79 = load i32, i32* @KERN_ERR, align 4
  %80 = load i32, i32* @LOG_INIT, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %70
  br label %84

84:                                               ; preds = %83, %65, %55
  br label %95

85:                                               ; preds = %24
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %87 = call i32 @lpfc_sli_queue_init(%struct.lpfc_hba* %86)
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %89 = call i64 @lpfc_sli_hba_setup(%struct.lpfc_hba* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %93 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %92)
  store i32 1, i32* %2, align 4
  br label %212

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %84
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %97 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %96)
  store %struct.lpfc_vport** %97, %struct.lpfc_vport*** %5, align 8
  %98 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %99 = icmp ne %struct.lpfc_vport** %98, null
  br i1 %99, label %100, label %198

100:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %194, %100
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp sle i32 %102, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %108, i64 %110
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %111, align 8
  %113 = icmp ne %struct.lpfc_vport* %112, null
  br label %114

114:                                              ; preds = %107, %101
  %115 = phi i1 [ false, %101 ], [ %113, %107 ]
  br i1 %115, label %116, label %197

116:                                              ; preds = %114
  %117 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %117, i64 %119
  %121 = load %struct.lpfc_vport*, %struct.lpfc_vport** %120, align 8
  %122 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %121)
  store %struct.Scsi_Host* %122, %struct.Scsi_Host** %9, align 8
  %123 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %124 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @spin_lock_irq(i32* %125)
  %127 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %129, i64 %131
  %133 = load %struct.lpfc_vport*, %struct.lpfc_vport** %132, align 8
  %134 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %128
  store i32 %136, i32* %134, align 8
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %116
  %144 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %145 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %145, i64 %147
  %149 = load %struct.lpfc_vport*, %struct.lpfc_vport** %148, align 8
  %150 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %144
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %143, %116
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %155 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @LPFC_SLI_REV4, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %189

159:                                              ; preds = %153
  %160 = load i32, i32* @FC_VPORT_NEEDS_INIT_VPI, align 4
  %161 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %161, i64 %163
  %165 = load %struct.lpfc_vport*, %struct.lpfc_vport** %164, align 8
  %166 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %160
  store i32 %168, i32* %166, align 8
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %159
  %172 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %172, i64 %174
  %176 = load %struct.lpfc_vport*, %struct.lpfc_vport** %175, align 8
  %177 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %171
  %182 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %182, i64 %184
  %186 = load %struct.lpfc_vport*, %struct.lpfc_vport** %185, align 8
  %187 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %186, i32 0, i32 2
  store i64 0, i64* %187, align 8
  br label %188

188:                                              ; preds = %181, %171, %159
  br label %189

189:                                              ; preds = %188, %153
  %190 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %191 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @spin_unlock_irq(i32* %192)
  br label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %101

197:                                              ; preds = %114
  br label %198

198:                                              ; preds = %197, %95
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %200 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %201 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %199, %struct.lpfc_vport** %200)
  %202 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %203 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %198
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %208 = call i32 @lpfc_create_multixri_pools(%struct.lpfc_hba* %207)
  br label %209

209:                                              ; preds = %206, %198
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %211 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %210)
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %209, %91, %41, %23, %12
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_block_mgmt_io(%struct.lpfc_hba*, i32) #1

declare dso_local i64 @lpfc_sli4_hba_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_nvme_create_localport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_sli_queue_init(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_sli_hba_setup(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @lpfc_create_multixri_pools(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
