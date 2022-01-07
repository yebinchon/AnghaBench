; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_fcf_rr_read_fcf_rec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_fcf_rr_read_fcf_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.fcf_record = type { i32 }

@LPFC_LINK_UP = common dso_local global i64 0, align 8
@FCF_DISCOVERY = common dso_local global i64 0, align 8
@FCF_RR_INPROG = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"2766 Mailbox command READ_FCF_RECORD failed to retrieve a FCF record. hba_flg x%x fcf_flg x%x\0A\00", align 1
@lpfc_fcf_record_fcf_index = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"2848 Remove ineligible FCF (x%x) from from roundrobin bmask\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"2760 Perform FLOGI roundrobin FCF failover: FCF (x%x) back to FCF (x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"2834 Update current FCF (x%x) with new FCF (x%x)\0A\00", align 1
@BOOT_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"2783 Perform FLOGI roundrobin FCF failover: FCF (x%x) to FCF (x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_fcf_rr_read_fcf_rec(%struct.lpfc_hba* %0, i32* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fcf_record*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LPFC_LINK_UP, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 3
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load i64, i64* @FCF_DISCOVERY, align 8
  %23 = xor i64 %22, -1
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, %23
  store i64 %28, i64* %26, align 8
  %29 = load i64, i64* @FCF_RR_INPROG, align 8
  %30 = xor i64 %29, -1
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 3
  %37 = call i32 @spin_unlock_irq(i32* %36)
  br label %171

38:                                               ; preds = %2
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call %struct.fcf_record* @lpfc_sli4_fcf_rec_mbox_parse(%struct.lpfc_hba* %39, i32* %40, i64* %8)
  store %struct.fcf_record* %41, %struct.fcf_record** %5, align 8
  %42 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %43 = icmp ne %struct.fcf_record* %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %38
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = load i32, i32* @KERN_WARNING, align 4
  %47 = load i32, i32* @LOG_FIP, align 4
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %54)
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %57 = call i32 @lpfc_unregister_fcf_rescan(%struct.lpfc_hba* %56)
  br label %171

58:                                               ; preds = %38
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %61 = call i32 @lpfc_match_fcf_conn_list(%struct.lpfc_hba* %59, %struct.fcf_record* %60, i64* %6, i64* %7, i64* %11)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %63 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @lpfc_sli4_log_fcf_record_info(%struct.lpfc_hba* %62, %struct.fcf_record* %63, i64 %64, i64 %65)
  %67 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %68 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %69 = call i64 @bf_get(i32 %67, %struct.fcf_record* %68)
  store i64 %69, i64* %9, align 8
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %58
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %74 = load i32, i32* @KERN_INFO, align 4
  %75 = load i32, i32* @LOG_FIP, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @lpfc_sli4_fcf_rr_index_clear(%struct.lpfc_hba* %78, i64 %79)
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %82 = call i64 @lpfc_sli4_fcf_rr_next_index_get(%struct.lpfc_hba* %81)
  store i64 %82, i64* %9, align 8
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @lpfc_sli4_fcf_rr_next_proc(i32 %85, i64 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  br label %171

91:                                               ; preds = %72
  br label %168

92:                                               ; preds = %58
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %93, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %92
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %102 = load i32, i32* @KERN_INFO, align 4
  %103 = load i32, i32* @LOG_FIP, align 4
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %101, i32 %102, i32 %103, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i64 %108, i64 %109)
  %111 = call i32 @msleep(i32 500)
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @lpfc_issue_init_vfi(i32 %114)
  br label %171

116:                                              ; preds = %92
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %118 = load i32, i32* @KERN_INFO, align 4
  %119 = load i32, i32* @LOG_FIP, align 4
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %124, i64 %125)
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 3
  %129 = call i32 @spin_lock_irq(i32* %128)
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %6, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %116
  %140 = load i32, i32* @BOOT_ENABLE, align 4
  br label %142

141:                                              ; preds = %116
  br label %142

142:                                              ; preds = %141, %139
  %143 = phi i32 [ %140, %139 ], [ 0, %141 ]
  %144 = call i32 @__lpfc_update_fcf_record(%struct.lpfc_hba* %130, %struct.TYPE_7__* %133, %struct.fcf_record* %134, i64 %135, i64 %136, i32 %143)
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %146 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %145, i32 0, i32 3
  %147 = call i32 @spin_unlock_irq(i32* %146)
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %10, align 8
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %154 = call i32 @lpfc_unregister_fcf(%struct.lpfc_hba* %153)
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %156 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %159 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = call i32 @memcpy(%struct.TYPE_6__* %157, %struct.TYPE_7__* %160, i32 4)
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %163 = load i32, i32* @KERN_INFO, align 4
  %164 = load i32, i32* @LOG_FIP, align 4
  %165 = load i64, i64* %10, align 8
  %166 = load i64, i64* %9, align 8
  %167 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %162, i32 %163, i32 %164, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i64 %165, i64 %166)
  br label %168

168:                                              ; preds = %142, %91
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %170 = call i32 @lpfc_register_fcf(%struct.lpfc_hba* %169)
  br label %171

171:                                              ; preds = %168, %100, %90, %44, %18
  %172 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %172, i32* %173)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.fcf_record* @lpfc_sli4_fcf_rec_mbox_parse(%struct.lpfc_hba*, i32*, i64*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @lpfc_unregister_fcf_rescan(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_match_fcf_conn_list(%struct.lpfc_hba*, %struct.fcf_record*, i64*, i64*, i64*) #1

declare dso_local i32 @lpfc_sli4_log_fcf_record_info(%struct.lpfc_hba*, %struct.fcf_record*, i64, i64) #1

declare dso_local i64 @bf_get(i32, %struct.fcf_record*) #1

declare dso_local i32 @lpfc_sli4_fcf_rr_index_clear(%struct.lpfc_hba*, i64) #1

declare dso_local i64 @lpfc_sli4_fcf_rr_next_index_get(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_fcf_rr_next_proc(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_issue_init_vfi(i32) #1

declare dso_local i32 @__lpfc_update_fcf_record(%struct.lpfc_hba*, %struct.TYPE_7__*, %struct.fcf_record*, i64, i64, i32) #1

declare dso_local i32 @lpfc_unregister_fcf(%struct.lpfc_hba*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @lpfc_register_fcf(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
