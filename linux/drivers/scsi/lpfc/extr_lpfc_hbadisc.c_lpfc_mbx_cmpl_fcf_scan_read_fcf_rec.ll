; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_fcf_scan_read_fcf_rec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_fcf_scan_read_fcf_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec }
%struct.lpfc_fcf_rec = type { i64, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fcf_record = type { i64 }

@LPFC_FCOE_NULL_VID = common dso_local global i64 0, align 8
@LPFC_SKIP_UNREG_FCF = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"2765 Mailbox command READ_FCF_RECORD failed to retrieve a FCF record.\0A\00", align 1
@FCF_TS_INPROG = common dso_local global i32 0, align 4
@lpfc_fcf_record_fcf_index = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"2781 FCF (x%x) failed connection list check: (x%x/x%x/%x)\0A\00", align 1
@lpfc_fcf_record_fcf_avail = common dso_local global i32 0, align 4
@lpfc_fcf_record_fcf_valid = common dso_local global i32 0, align 4
@lpfc_fcf_record_fcf_sol = common dso_local global i32 0, align 4
@FCF_IN_USE = common dso_local global i32 0, align 4
@LPFC_FCOE_IGNORE_VID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"2862 FCF (x%x) matches property of in-use FCF (x%x)\0A\00", align 1
@FCF_REDISC_PEND = common dso_local global i32 0, align 4
@FCF_REDISC_FOV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"2835 Invalid in-use FCF (x%x), enter FCF failover table scan.\0A\00", align 1
@LPFC_FCOE_FCF_GET_FIRST = common dso_local global i64 0, align 8
@LPFC_FCF_FOV = common dso_local global i64 0, align 8
@FCF_AVAILABLE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"2836 New FCF matches in-use FCF (x%x), port_state:x%x, fc_flag:x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"2863 New FCF (x%x) matches property of in-use FCF (x%x)\0A\00", align 1
@BOOT_ENABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [64 x i8] c"2837 Update current FCF record (x%x) with new FCF record (x%x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"2838 Update current FCF record (x%x) with new FCF record (x%x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"2839 Update current FCF record (x%x) with new FCF record (x%x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"2840 Update initial FCF candidate with FCF (x%x)\0A\00", align 1
@LPFC_FCOE_FCF_NEXT_NONE = common dso_local global i64 0, align 8
@RECORD_VALID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"2782 No suitable FCF found: (x%x/x%x)\0A\00", align 1
@HBA_DEVLOSS_TMO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [59 x i8] c"2864 On devloss tmo unreg in-use FCF and rescan FCF table\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"2842 Replace in-use FCF (x%x) with failover FCF (x%x)\0A\00", align 1
@FCF_REDISC_EVT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [86 x i8] c"2841 In-use FCF record (x%x) not reported, entering fast FCF failover mode scanning.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_fcf_scan_read_fcf_rec(%struct.lpfc_hba* %0, i32* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fcf_record*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lpfc_fcf_rec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.lpfc_fcf_rec* null, %struct.lpfc_fcf_rec** %10, align 8
  %14 = load i64, i64* @LPFC_FCOE_NULL_VID, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = load i32, i32* @LPFC_SKIP_UNREG_FCF, align 4
  %17 = call i64 @lpfc_check_pending_fcoe_event(%struct.lpfc_hba* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %20, i32* %21)
  br label %661

23:                                               ; preds = %2
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call %struct.fcf_record* @lpfc_sli4_fcf_rec_mbox_parse(%struct.lpfc_hba* %24, i32* %25, i64* %9)
  store %struct.fcf_record* %26, %struct.fcf_record** %5, align 8
  %27 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %28 = icmp ne %struct.fcf_record* %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %23
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @LOG_FIP, align 4
  %33 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 2
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load i32, i32* @FCF_TS_INPROG, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 2
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %46, i32* %47)
  br label %661

49:                                               ; preds = %23
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %51 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %52 = call i32 @lpfc_match_fcf_conn_list(%struct.lpfc_hba* %50, %struct.fcf_record* %51, i64* %6, i64* %7, i64* %11)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @lpfc_sli4_log_fcf_record_info(%struct.lpfc_hba* %53, %struct.fcf_record* %54, i64 %55, i64 %56)
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %167, label %60

60:                                               ; preds = %49
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %62 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %63 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %64 = call i64 @bf_get(i32 %62, %struct.fcf_record* %63)
  %65 = call i32 @lpfc_sli4_fcf_pri_list_del(%struct.lpfc_hba* %61, i64 %64)
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = load i32, i32* @KERN_WARNING, align 4
  %68 = load i32, i32* @LOG_FIP, align 4
  %69 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %70 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %71 = call i64 @bf_get(i32 %69, %struct.fcf_record* %70)
  %72 = load i32, i32* @lpfc_fcf_record_fcf_avail, align 4
  %73 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %74 = call i64 @bf_get(i32 %72, %struct.fcf_record* %73)
  %75 = load i32, i32* @lpfc_fcf_record_fcf_valid, align 4
  %76 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %77 = call i64 @bf_get(i32 %75, %struct.fcf_record* %76)
  %78 = load i32, i32* @lpfc_fcf_record_fcf_sol, align 4
  %79 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %80 = call i64 @bf_get(i32 %78, %struct.fcf_record* %79)
  %81 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %71, i64 %74, i64 %77, i64 %80)
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FCF_IN_USE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %166

89:                                               ; preds = %60
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %95 = load i64, i64* @LPFC_FCOE_IGNORE_VID, align 8
  %96 = call i64 @lpfc_sli4_fcf_record_match(%struct.lpfc_hba* %90, %struct.lpfc_fcf_rec* %93, %struct.fcf_record* %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %166

98:                                               ; preds = %89
  %99 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %100 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %101 = call i64 @bf_get(i32 %99, %struct.fcf_record* %100)
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %101, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %98
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %110 = load i32, i32* @KERN_ERR, align 4
  %111 = load i32, i32* @LOG_FIP, align 4
  %112 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %113 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %114 = call i64 @bf_get(i32 %112, %struct.fcf_record* %113)
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %114, i64 %119)
  br label %478

121:                                              ; preds = %98
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @FCF_REDISC_PEND, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %165, label %129

129:                                              ; preds = %121
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %131 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @FCF_REDISC_FOV, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %165, label %137

137:                                              ; preds = %129
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %139 = load i32, i32* @KERN_WARNING, align 4
  %140 = load i32, i32* @LOG_FIP, align 4
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %138, i32 %139, i32 %140, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i64 %145)
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %148 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %147, i32 0, i32 2
  %149 = call i32 @spin_lock_irq(i32* %148)
  %150 = load i32, i32* @FCF_REDISC_FOV, align 4
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %150
  store i32 %155, i32* %153, align 8
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 2
  %158 = call i32 @spin_unlock_irq(i32* %157)
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %159, i32* %160)
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %163 = load i64, i64* @LPFC_FCOE_FCF_GET_FIRST, align 8
  %164 = call i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba* %162, i64 %163)
  br label %661

165:                                              ; preds = %129, %121
  br label %166

166:                                              ; preds = %165, %89, %60
  br label %478

167:                                              ; preds = %49
  %168 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %169 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %170 = call i64 @bf_get(i32 %168, %struct.fcf_record* %169)
  store i64 %170, i64* %8, align 8
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %172 = load i64, i64* %8, align 8
  %173 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %174 = call i32 @lpfc_sli4_fcf_pri_list_add(%struct.lpfc_hba* %171, i64 %172, %struct.fcf_record* %173)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  br label %478

178:                                              ; preds = %167
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %181 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %180, i32 0, i32 2
  %182 = call i32 @spin_lock_irq(i32* %181)
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @FCF_IN_USE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %299

190:                                              ; preds = %179
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %192 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @LPFC_FCF_FOV, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %286

196:                                              ; preds = %190
  %197 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %198 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %199 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %202 = load i64, i64* %11, align 8
  %203 = call i64 @lpfc_sli4_fcf_record_match(%struct.lpfc_hba* %197, %struct.lpfc_fcf_rec* %200, %struct.fcf_record* %201, i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %286

205:                                              ; preds = %196
  %206 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %207 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %208 = call i64 @bf_get(i32 %206, %struct.fcf_record* %207)
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %210 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %208, %213
  br i1 %214, label %215, label %272

215:                                              ; preds = %205
  %216 = load i32, i32* @FCF_AVAILABLE, align 4
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %218 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %216
  store i32 %221, i32* %219, align 8
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %223 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @FCF_REDISC_PEND, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %215
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %231 = call i32 @__lpfc_sli4_stop_fcf_redisc_wait_timer(%struct.lpfc_hba* %230)
  br label %249

232:                                              ; preds = %215
  %233 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %234 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @FCF_REDISC_FOV, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %232
  %241 = load i32, i32* @FCF_REDISC_FOV, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %244 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = and i32 %246, %242
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %240, %232
  br label %249

249:                                              ; preds = %248, %229
  %250 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %251 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %250, i32 0, i32 2
  %252 = call i32 @spin_unlock_irq(i32* %251)
  %253 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %254 = load i32, i32* @KERN_INFO, align 4
  %255 = load i32, i32* @LOG_FIP, align 4
  %256 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %257 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %262 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %261, i32 0, i32 5
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %267 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %266, i32 0, i32 5
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %253, i32 %254, i32 %255, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i64 %260, i32 %265, i32 %270)
  br label %655

272:                                              ; preds = %205
  %273 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %274 = load i32, i32* @KERN_ERR, align 4
  %275 = load i32, i32* @LOG_FIP, align 4
  %276 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %277 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %278 = call i64 @bf_get(i32 %276, %struct.fcf_record* %277)
  %279 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %280 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %273, i32 %274, i32 %275, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i64 %278, i64 %283)
  br label %285

285:                                              ; preds = %272
  br label %286

286:                                              ; preds = %285, %196, %190
  %287 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %288 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @FCF_REDISC_FOV, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %298, label %294

294:                                              ; preds = %286
  %295 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %296 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %295, i32 0, i32 2
  %297 = call i32 @spin_unlock_irq(i32* %296)
  br label %478

298:                                              ; preds = %286
  br label %299

299:                                              ; preds = %298, %179
  %300 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %301 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @FCF_REDISC_FOV, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %299
  %308 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %309 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 3
  store %struct.lpfc_fcf_rec* %310, %struct.lpfc_fcf_rec** %10, align 8
  br label %315

311:                                              ; preds = %299
  %312 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %313 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 2
  store %struct.lpfc_fcf_rec* %314, %struct.lpfc_fcf_rec** %10, align 8
  br label %315

315:                                              ; preds = %311, %307
  %316 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %317 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @FCF_AVAILABLE, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %441

323:                                              ; preds = %315
  %324 = load i64, i64* %6, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %354

326:                                              ; preds = %323
  %327 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %328 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @BOOT_ENABLE, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %354, label %333

333:                                              ; preds = %326
  %334 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %335 = load i32, i32* @KERN_INFO, align 4
  %336 = load i32, i32* @LOG_FIP, align 4
  %337 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %338 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %341 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %342 = call i64 @bf_get(i32 %340, %struct.fcf_record* %341)
  %343 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %334, i32 %335, i32 %336, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i64 %339, i64 %342)
  %344 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %345 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %346 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %347 = load i64, i64* %7, align 8
  %348 = load i64, i64* %11, align 8
  %349 = load i32, i32* @BOOT_ENABLE, align 4
  %350 = call i32 @__lpfc_update_fcf_record(%struct.lpfc_hba* %344, %struct.lpfc_fcf_rec* %345, %struct.fcf_record* %346, i64 %347, i64 %348, i32 %349)
  %351 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %352 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %351, i32 0, i32 2
  %353 = call i32 @spin_unlock_irq(i32* %352)
  br label %478

354:                                              ; preds = %326, %323
  %355 = load i64, i64* %6, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %368, label %357

357:                                              ; preds = %354
  %358 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %359 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @BOOT_ENABLE, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %357
  %365 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %366 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %365, i32 0, i32 2
  %367 = call i32 @spin_unlock_irq(i32* %366)
  br label %478

368:                                              ; preds = %357, %354
  %369 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %370 = getelementptr inbounds %struct.fcf_record, %struct.fcf_record* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %373 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = icmp slt i64 %371, %374
  br i1 %375, label %376, label %396

376:                                              ; preds = %368
  %377 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %378 = load i32, i32* @KERN_INFO, align 4
  %379 = load i32, i32* @LOG_FIP, align 4
  %380 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %381 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %384 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %385 = call i64 @bf_get(i32 %383, %struct.fcf_record* %384)
  %386 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %377, i32 %378, i32 %379, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i64 %382, i64 %385)
  %387 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %388 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %389 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %390 = load i64, i64* %7, align 8
  %391 = load i64, i64* %11, align 8
  %392 = call i32 @__lpfc_update_fcf_record(%struct.lpfc_hba* %387, %struct.lpfc_fcf_rec* %388, %struct.fcf_record* %389, i64 %390, i64 %391, i32 0)
  %393 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %394 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %393, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 1
  store i32 1, i32* %395, align 4
  br label %437

396:                                              ; preds = %368
  %397 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %398 = getelementptr inbounds %struct.fcf_record, %struct.fcf_record* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %401 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %400, i32 0, i32 2
  %402 = load i64, i64* %401, align 8
  %403 = icmp eq i64 %399, %402
  br i1 %403, label %404, label %436

404:                                              ; preds = %396
  %405 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %406 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %405, i32 0, i32 3
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %407, align 4
  %410 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %411 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %412 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %411, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @lpfc_sli4_new_fcf_random_select(%struct.lpfc_hba* %410, i32 %414)
  store i32 %415, i32* %12, align 4
  %416 = load i32, i32* %12, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %435

418:                                              ; preds = %404
  %419 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %420 = load i32, i32* @KERN_INFO, align 4
  %421 = load i32, i32* @LOG_FIP, align 4
  %422 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %423 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %426 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %427 = call i64 @bf_get(i32 %425, %struct.fcf_record* %426)
  %428 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %419, i32 %420, i32 %421, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i64 %424, i64 %427)
  %429 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %430 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %431 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %432 = load i64, i64* %7, align 8
  %433 = load i64, i64* %11, align 8
  %434 = call i32 @__lpfc_update_fcf_record(%struct.lpfc_hba* %429, %struct.lpfc_fcf_rec* %430, %struct.fcf_record* %431, i64 %432, i64 %433, i32 0)
  br label %435

435:                                              ; preds = %418, %404
  br label %436

436:                                              ; preds = %435, %396
  br label %437

437:                                              ; preds = %436, %376
  %438 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %439 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %438, i32 0, i32 2
  %440 = call i32 @spin_unlock_irq(i32* %439)
  br label %478

441:                                              ; preds = %315
  %442 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %443 = icmp ne %struct.lpfc_fcf_rec* %442, null
  br i1 %443, label %444, label %474

444:                                              ; preds = %441
  %445 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %446 = load i32, i32* @KERN_INFO, align 4
  %447 = load i32, i32* @LOG_FIP, align 4
  %448 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %449 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %450 = call i64 @bf_get(i32 %448, %struct.fcf_record* %449)
  %451 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %445, i32 %446, i32 %447, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i64 %450)
  %452 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %453 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %10, align 8
  %454 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %455 = load i64, i64* %7, align 8
  %456 = load i64, i64* %11, align 8
  %457 = load i64, i64* %6, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %461

459:                                              ; preds = %444
  %460 = load i32, i32* @BOOT_ENABLE, align 4
  br label %462

461:                                              ; preds = %444
  br label %462

462:                                              ; preds = %461, %459
  %463 = phi i32 [ %460, %459 ], [ 0, %461 ]
  %464 = call i32 @__lpfc_update_fcf_record(%struct.lpfc_hba* %452, %struct.lpfc_fcf_rec* %453, %struct.fcf_record* %454, i64 %455, i64 %456, i32 %463)
  %465 = load i32, i32* @FCF_AVAILABLE, align 4
  %466 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %467 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %466, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = or i32 %469, %465
  store i32 %470, i32* %468, align 8
  %471 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %472 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %471, i32 0, i32 3
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 1
  store i32 1, i32* %473, align 4
  br label %474

474:                                              ; preds = %462, %441
  %475 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %476 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %475, i32 0, i32 2
  %477 = call i32 @spin_unlock_irq(i32* %476)
  br label %478

478:                                              ; preds = %474, %437, %364, %333, %294, %177, %166, %108
  %479 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %480 = load i32*, i32** %4, align 8
  %481 = call i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %479, i32* %480)
  %482 = load i64, i64* %9, align 8
  %483 = load i64, i64* @LPFC_FCOE_FCF_NEXT_NONE, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %488, label %485

485:                                              ; preds = %478
  %486 = load i64, i64* %9, align 8
  %487 = icmp eq i64 %486, 0
  br i1 %487, label %488, label %650

488:                                              ; preds = %485, %478
  %489 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %490 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %489, i32 0, i32 3
  %491 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = load i32, i32* @FCF_REDISC_FOV, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %590

496:                                              ; preds = %488
  %497 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %498 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %497, i32 0, i32 3
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %498, i32 0, i32 3
  %500 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 8
  %502 = load i32, i32* @RECORD_VALID, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %551, label %505

505:                                              ; preds = %496
  %506 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %507 = load i32, i32* @KERN_WARNING, align 4
  %508 = load i32, i32* @LOG_FIP, align 4
  %509 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %510 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %509, i32 0, i32 4
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %513 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %514 = call i64 @bf_get(i32 %512, %struct.fcf_record* %513)
  %515 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %506, i32 %507, i32 %508, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %511, i64 %514)
  %516 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %517 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %516, i32 0, i32 2
  %518 = call i32 @spin_lock_irq(i32* %517)
  %519 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %520 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* @HBA_DEVLOSS_TMO, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %541

525:                                              ; preds = %505
  %526 = load i32, i32* @FCF_TS_INPROG, align 4
  %527 = xor i32 %526, -1
  %528 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %529 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 8
  %531 = and i32 %530, %527
  store i32 %531, i32* %529, align 8
  %532 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %533 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %532, i32 0, i32 2
  %534 = call i32 @spin_unlock_irq(i32* %533)
  %535 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %536 = load i32, i32* @KERN_INFO, align 4
  %537 = load i32, i32* @LOG_FIP, align 4
  %538 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %535, i32 %536, i32 %537, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0))
  %539 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %540 = call i32 @lpfc_unregister_fcf_rescan(%struct.lpfc_hba* %539)
  br label %661

541:                                              ; preds = %505
  %542 = load i32, i32* @FCF_TS_INPROG, align 4
  %543 = xor i32 %542, -1
  %544 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %545 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = and i32 %546, %543
  store i32 %547, i32* %545, align 8
  %548 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %549 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %548, i32 0, i32 2
  %550 = call i32 @spin_unlock_irq(i32* %549)
  br label %661

551:                                              ; preds = %496
  %552 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %553 = call i32 @lpfc_unregister_fcf(%struct.lpfc_hba* %552)
  %554 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %555 = load i32, i32* @KERN_INFO, align 4
  %556 = load i32, i32* @LOG_FIP, align 4
  %557 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %558 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %557, i32 0, i32 3
  %559 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %558, i32 0, i32 2
  %560 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %563 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %562, i32 0, i32 3
  %564 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %563, i32 0, i32 3
  %565 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %554, i32 %555, i32 %556, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i64 %561, i64 %566)
  %568 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %569 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %568, i32 0, i32 3
  %570 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %569, i32 0, i32 2
  %571 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %572 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %571, i32 0, i32 3
  %573 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %572, i32 0, i32 3
  %574 = call i32 @memcpy(%struct.lpfc_fcf_rec* %570, %struct.lpfc_fcf_rec* %573, i32 24)
  %575 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %576 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %575, i32 0, i32 2
  %577 = call i32 @spin_lock_irq(i32* %576)
  %578 = load i32, i32* @FCF_REDISC_FOV, align 4
  %579 = xor i32 %578, -1
  %580 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %581 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %580, i32 0, i32 3
  %582 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = and i32 %583, %579
  store i32 %584, i32* %582, align 8
  %585 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %586 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %585, i32 0, i32 2
  %587 = call i32 @spin_unlock_irq(i32* %586)
  %588 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %589 = call i32 @lpfc_register_fcf(%struct.lpfc_hba* %588)
  br label %649

590:                                              ; preds = %488
  %591 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %592 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %591, i32 0, i32 3
  %593 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = load i32, i32* @FCF_REDISC_EVT, align 4
  %596 = and i32 %594, %595
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %606, label %598

598:                                              ; preds = %590
  %599 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %600 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %599, i32 0, i32 3
  %601 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = load i32, i32* @FCF_REDISC_PEND, align 4
  %604 = and i32 %602, %603
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %607

606:                                              ; preds = %598, %590
  br label %661

607:                                              ; preds = %598
  %608 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %609 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %608, i32 0, i32 1
  %610 = load i64, i64* %609, align 8
  %611 = load i64, i64* @LPFC_FCF_FOV, align 8
  %612 = icmp eq i64 %610, %611
  br i1 %612, label %613, label %646

613:                                              ; preds = %607
  %614 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %615 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %614, i32 0, i32 3
  %616 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 8
  %618 = load i32, i32* @FCF_IN_USE, align 4
  %619 = and i32 %617, %618
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %646

621:                                              ; preds = %613
  %622 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %623 = load i32, i32* @KERN_INFO, align 4
  %624 = load i32, i32* @LOG_FIP, align 4
  %625 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %626 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %625, i32 0, i32 3
  %627 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %626, i32 0, i32 2
  %628 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %627, i32 0, i32 0
  %629 = load i64, i64* %628, align 8
  %630 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %622, i32 %623, i32 %624, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.13, i64 0, i64 0), i64 %629)
  %631 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %632 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %631, i32 0, i32 2
  %633 = call i32 @spin_lock_irq(i32* %632)
  %634 = load i32, i32* @FCF_REDISC_FOV, align 4
  %635 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %636 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %635, i32 0, i32 3
  %637 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  %639 = or i32 %638, %634
  store i32 %639, i32* %637, align 8
  %640 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %641 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %640, i32 0, i32 2
  %642 = call i32 @spin_unlock_irq(i32* %641)
  %643 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %644 = load i64, i64* @LPFC_FCOE_FCF_GET_FIRST, align 8
  %645 = call i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba* %643, i64 %644)
  br label %661

646:                                              ; preds = %613, %607
  %647 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %648 = call i32 @lpfc_register_fcf(%struct.lpfc_hba* %647)
  br label %649

649:                                              ; preds = %646, %551
  br label %654

650:                                              ; preds = %485
  %651 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %652 = load i64, i64* %9, align 8
  %653 = call i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba* %651, i64 %652)
  br label %654

654:                                              ; preds = %650, %649
  br label %661

655:                                              ; preds = %249
  %656 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %657 = load i32*, i32** %4, align 8
  %658 = call i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %656, i32* %657)
  %659 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %660 = call i32 @lpfc_register_fcf(%struct.lpfc_hba* %659)
  br label %661

661:                                              ; preds = %655, %654, %621, %606, %541, %525, %137, %29, %19
  ret void
}

declare dso_local i64 @lpfc_check_pending_fcoe_event(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba*, i32*) #1

declare dso_local %struct.fcf_record* @lpfc_sli4_fcf_rec_mbox_parse(%struct.lpfc_hba*, i32*, i64*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_match_fcf_conn_list(%struct.lpfc_hba*, %struct.fcf_record*, i64*, i64*, i64*) #1

declare dso_local i32 @lpfc_sli4_log_fcf_record_info(%struct.lpfc_hba*, %struct.fcf_record*, i64, i64) #1

declare dso_local i32 @lpfc_sli4_fcf_pri_list_del(%struct.lpfc_hba*, i64) #1

declare dso_local i64 @bf_get(i32, %struct.fcf_record*) #1

declare dso_local i64 @lpfc_sli4_fcf_record_match(%struct.lpfc_hba*, %struct.lpfc_fcf_rec*, %struct.fcf_record*, i64) #1

declare dso_local i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_sli4_fcf_pri_list_add(%struct.lpfc_hba*, i64, %struct.fcf_record*) #1

declare dso_local i32 @__lpfc_sli4_stop_fcf_redisc_wait_timer(%struct.lpfc_hba*) #1

declare dso_local i32 @__lpfc_update_fcf_record(%struct.lpfc_hba*, %struct.lpfc_fcf_rec*, %struct.fcf_record*, i64, i64, i32) #1

declare dso_local i32 @lpfc_sli4_new_fcf_random_select(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_unregister_fcf_rescan(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unregister_fcf(%struct.lpfc_hba*) #1

declare dso_local i32 @memcpy(%struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec*, i32) #1

declare dso_local i32 @lpfc_register_fcf(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
