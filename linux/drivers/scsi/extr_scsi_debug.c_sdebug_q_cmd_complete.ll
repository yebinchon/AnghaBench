; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_sdebug_q_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_sdebug_q_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_queue = type { i32, i32, %struct.sdebug_queued_cmd* }
%struct.sdebug_queued_cmd = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sdebug_defer = type { i32, i32, i32, i64, i32 }
%struct.sdebug_dev_info = type { i32 }

@SDEB_DEFER_NONE = common dso_local global i32 0, align 4
@sdebug_q_arr = common dso_local global %struct.sdebug_queue* null, align 8
@sdebug_statistics = common dso_local global i64 0, align 8
@sdebug_completions = common dso_local global i32 0, align 4
@sdebug_miss_cpus = common dso_local global i32 0, align 4
@SDEBUG_CANQUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wild qc_idx=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"scp is NULL, sqa_idx=%d, qc_idx=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"devip=NULL\0A\00", align 1
@retired_max_queue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unexpected completion\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"index %d too large\0A\00", align 1
@sdebug_max_queue = common dso_local global i32 0, align 4
@sdebug_verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"bypassing scsi_done() due to aborted cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdebug_defer*)* @sdebug_q_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdebug_q_cmd_complete(%struct.sdebug_defer* %0) #0 {
  %2 = alloca %struct.sdebug_defer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sdebug_queue*, align 8
  %8 = alloca %struct.sdebug_queued_cmd*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.sdebug_dev_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sdebug_defer* %0, %struct.sdebug_defer** %2, align 8
  %13 = load %struct.sdebug_defer*, %struct.sdebug_defer** %2, align 8
  %14 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* @SDEB_DEFER_NONE, align 4
  %17 = load %struct.sdebug_defer*, %struct.sdebug_defer** %2, align 8
  %18 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.sdebug_defer*, %struct.sdebug_defer** %2, align 8
  %24 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.sdebug_defer*, %struct.sdebug_defer** %2, align 8
  %27 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load %struct.sdebug_queue*, %struct.sdebug_queue** @sdebug_q_arr, align 8
  %30 = load %struct.sdebug_defer*, %struct.sdebug_defer** %2, align 8
  %31 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %29, i64 %33
  store %struct.sdebug_queue* %34, %struct.sdebug_queue** %7, align 8
  %35 = load i64, i64* @sdebug_statistics, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %25
  %38 = call i32 @atomic_inc(i32* @sdebug_completions)
  %39 = call i64 (...) @raw_smp_processor_id()
  %40 = load %struct.sdebug_defer*, %struct.sdebug_defer** %2, align 8
  %41 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @atomic_inc(i32* @sdebug_miss_cpus)
  br label %46

46:                                               ; preds = %44, %37
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SDEBUG_CANQUEUE, align 4
  %53 = icmp sge i32 %51, %52
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ true, %47 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %189

62:                                               ; preds = %54
  %63 = load %struct.sdebug_queue*, %struct.sdebug_queue** %7, align 8
  %64 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %63, i32 0, i32 0
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.sdebug_queue*, %struct.sdebug_queue** %7, align 8
  %68 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %67, i32 0, i32 2
  %69 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %69, i64 %71
  store %struct.sdebug_queued_cmd* %72, %struct.sdebug_queued_cmd** %8, align 8
  %73 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %8, align 8
  %74 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %73, i32 0, i32 0
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %74, align 8
  store %struct.scsi_cmnd* %75, %struct.scsi_cmnd** %9, align 8
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %77 = icmp eq %struct.scsi_cmnd* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %62
  %82 = load %struct.sdebug_queue*, %struct.sdebug_queue** %7, align 8
  %83 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %82, i32 0, i32 0
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.sdebug_defer*, %struct.sdebug_defer** %2, align 8
  %87 = getelementptr inbounds %struct.sdebug_defer, %struct.sdebug_defer* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89)
  br label %189

91:                                               ; preds = %62
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.sdebug_dev_info*
  store %struct.sdebug_dev_info* %97, %struct.sdebug_dev_info** %10, align 8
  %98 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %99 = call i64 @likely(%struct.sdebug_dev_info* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %103 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %102, i32 0, i32 0
  %104 = call i32 @atomic_dec(i32* %103)
  br label %107

105:                                              ; preds = %91
  %106 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %101
  %108 = call i32 @atomic_read(i32* @retired_max_queue)
  %109 = icmp sgt i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 1, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %107
  %115 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %8, align 8
  %116 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %115, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %116, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load %struct.sdebug_queue*, %struct.sdebug_queue** %7, align 8
  %119 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @test_and_clear_bit(i32 %117, i32 %120)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %114
  %128 = load %struct.sdebug_queue*, %struct.sdebug_queue** %7, align 8
  %129 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %128, i32 0, i32 0
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  %132 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %189

133:                                              ; preds = %114
  %134 = load i32, i32* %5, align 4
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %169

137:                                              ; preds = %133
  %138 = call i32 @atomic_read(i32* @retired_max_queue)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.sdebug_queue*, %struct.sdebug_queue** %7, align 8
  %144 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %143, i32 0, i32 0
  %145 = load i64, i64* %6, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  %147 = load i32, i32* %12, align 4
  %148 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  br label %189

149:                                              ; preds = %137
  %150 = load %struct.sdebug_queue*, %struct.sdebug_queue** %7, align 8
  %151 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @find_last_bit(i32 %152, i32 %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @sdebug_max_queue, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158, %149
  %163 = call i32 @atomic_set(i32* @retired_max_queue, i32 0)
  br label %168

164:                                              ; preds = %158
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  %167 = call i32 @atomic_set(i32* @retired_max_queue, i32 %166)
  br label %168

168:                                              ; preds = %164, %162
  br label %169

169:                                              ; preds = %168, %133
  %170 = load %struct.sdebug_queue*, %struct.sdebug_queue** %7, align 8
  %171 = getelementptr inbounds %struct.sdebug_queue, %struct.sdebug_queue* %170, i32 0, i32 0
  %172 = load i64, i64* %6, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  %174 = load i32, i32* %3, align 4
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %169
  %178 = load i64, i64* @sdebug_verbose, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %177
  br label %189

183:                                              ; preds = %169
  %184 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %185 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %184, i32 0, i32 0
  %186 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %185, align 8
  %187 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %188 = call i32 %186(%struct.scsi_cmnd* %187)
  br label %189

189:                                              ; preds = %183, %182, %142, %127, %81, %59
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @raw_smp_processor_id(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @likely(%struct.sdebug_dev_info*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @find_last_bit(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
