; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_megasas_get_best_arm_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_megasas_get_best_arm_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64 }
%struct.LD_LOAD_BALANCE_INFO = type { i64*, i32* }
%struct.IO_REQUEST_INFO = type { i64, i32, i32, i32, i32 }
%struct.MR_DRV_RAID_MAP_ALL = type { i32 }
%struct.MR_LD_RAID = type { i32 }

@RAID_CTX_SPANARM_SPAN_MASK = common dso_local global i32 0, align 4
@RAID_CTX_SPANARM_SPAN_SHIFT = common dso_local global i32 0, align 4
@RAID_CTX_SPANARM_ARM_MASK = common dso_local global i32 0, align 4
@MR_DEVHANDLE_INVALID = common dso_local global i64 0, align 8
@lb_pending_cmds = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_get_best_arm_pd(%struct.megasas_instance* %0, %struct.LD_LOAD_BALANCE_INFO* %1, %struct.IO_REQUEST_INFO* %2, %struct.MR_DRV_RAID_MAP_ALL* %3) #0 {
  %5 = alloca %struct.megasas_instance*, align 8
  %6 = alloca %struct.LD_LOAD_BALANCE_INFO*, align 8
  %7 = alloca %struct.IO_REQUEST_INFO*, align 8
  %8 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  %9 = alloca %struct.MR_LD_RAID*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %5, align 8
  store %struct.LD_LOAD_BALANCE_INFO* %1, %struct.LD_LOAD_BALANCE_INFO** %6, align 8
  store %struct.IO_REQUEST_INFO* %2, %struct.IO_REQUEST_INFO** %7, align 8
  store %struct.MR_DRV_RAID_MAP_ALL* %3, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %25 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %7, align 8
  %26 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %23, align 8
  %28 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %7, align 8
  %29 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %24, align 4
  %31 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %7, align 8
  %32 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RAID_CTX_SPANARM_SPAN_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %19, align 4
  %38 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %7, align 8
  %39 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RAID_CTX_SPANARM_ARM_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %20, align 4
  %43 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %7, align 8
  %44 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %47 = call i64 @MR_TargetIdToLdGet(i32 %45, %struct.MR_DRV_RAID_MAP_ALL* %46)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %50 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i64 %48, %struct.MR_DRV_RAID_MAP_ALL* %49)
  store %struct.MR_LD_RAID* %50, %struct.MR_LD_RAID** %9, align 8
  %51 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %52 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %4
  %56 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @SPAN_ROW_SIZE(%struct.MR_DRV_RAID_MAP_ALL* %56, i64 %57, i32 %58)
  br label %64

60:                                               ; preds = %4
  %61 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %9, align 8
  %62 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i32 [ %59, %55 ], [ %63, %60 ]
  store i32 %65, i32* %22, align 4
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %69 = call i32 @MR_LdSpanArrayGet(i64 %66, i32 %67, %struct.MR_DRV_RAID_MAP_ALL* %68)
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %73 = call i32 @MR_ArPdGet(i32 %70, i32 %71, %struct.MR_DRV_RAID_MAP_ALL* %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %20, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %22, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %64
  %80 = load i32, i32* %20, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %22, align 4
  %83 = sub nsw i32 %81, %82
  br label %87

84:                                               ; preds = %64
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %85, 1
  br label %87

87:                                               ; preds = %84, %79
  %88 = phi i32 [ %83, %79 ], [ %86, %84 ]
  %89 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %90 = call i32 @MR_ArPdGet(i32 %74, i32 %88, %struct.MR_DRV_RAID_MAP_ALL* %89)
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %93 = call i64 @MR_PdDevHandleGet(i32 %91, %struct.MR_DRV_RAID_MAP_ALL* %92)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @MR_DEVHANDLE_INVALID, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32, i32* %20, align 4
  store i32 %98, i32* %16, align 4
  br label %183

99:                                               ; preds = %87
  %100 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %6, align 8
  %101 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = call i64 @atomic_read(i32* %105)
  store i64 %106, i64* %11, align 8
  %107 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %6, align 8
  %108 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = call i64 @atomic_read(i32* %112)
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %23, align 8
  %115 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %6, align 8
  %116 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @ABS_DIFF(i64 %114, i64 %121)
  store i64 %122, i64* %14, align 8
  %123 = load i64, i64* %23, align 8
  %124 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %6, align 8
  %125 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @ABS_DIFF(i64 %123, i64 %130)
  store i64 %131, i64* %15, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %15, align 8
  %134 = icmp sle i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %99
  %136 = load i32, i32* %20, align 4
  br label %140

137:                                              ; preds = %99
  %138 = load i32, i32* %20, align 4
  %139 = xor i32 %138, 1
  br label %140

140:                                              ; preds = %137, %135
  %141 = phi i32 [ %136, %135 ], [ %139, %137 ]
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %20, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* @lb_pending_cmds, align 8
  %149 = add nsw i64 %147, %148
  %150 = icmp sgt i64 %146, %149
  br i1 %150, label %161, label %151

151:                                              ; preds = %145, %140
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %20, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load i64, i64* %12, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* @lb_pending_cmds, align 8
  %159 = add nsw i64 %157, %158
  %160 = icmp sgt i64 %156, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %155, %145
  %162 = load i32, i32* %16, align 4
  %163 = xor i32 %162, 1
  store i32 %163, i32* %16, align 4
  br label %164

164:                                              ; preds = %161, %155, %151
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* @RAID_CTX_SPANARM_SPAN_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = load i32, i32* %16, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %7, align 8
  %171 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %20, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %164
  %176 = load i32, i32* %17, align 4
  br label %179

177:                                              ; preds = %164
  %178 = load i32, i32* %18, align 4
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %7, align 8
  %182 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %179, %97
  %184 = load i64, i64* %23, align 8
  %185 = load i32, i32* %24, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = sub nsw i64 %187, 1
  %189 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %6, align 8
  %190 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %7, align 8
  %193 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %191, i64 %195
  store i64 %188, i64* %196, align 8
  %197 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %7, align 8
  %198 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  ret i32 %199
}

declare dso_local i64 @MR_TargetIdToLdGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i64, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @SPAN_ROW_SIZE(%struct.MR_DRV_RAID_MAP_ALL*, i64, i32) #1

declare dso_local i32 @MR_LdSpanArrayGet(i64, i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @MR_ArPdGet(i32, i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i64 @MR_PdDevHandleGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @ABS_DIFF(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
