; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_alloc_mcc_wrb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_alloc_mcc_wrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_mcc_wrb = type { i32 }
%struct.beiscsi_hba = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32*, i64, i32, %struct.TYPE_5__*, i64*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.TYPE_4__ = type { %struct.be_queue_info }
%struct.be_queue_info = type { i64, i64, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"BC_%d : MCC queue full: WRB used %u tag avail %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"BC_%d : MCC tag 0 allocated: tag avail %u alloc index %u\0A\00", align 1
@MAX_MCC_CMD = common dso_local global i32 0, align 4
@MCC_Q_WRB_IDX_SHIFT = common dso_local global i32 0, align 4
@MCC_Q_WRB_IDX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba* %0, i32* %1) #0 {
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.be_queue_info*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %9 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.be_queue_info* %11, %struct.be_queue_info** %5, align 8
  store %struct.be_mcc_wrb* null, %struct.be_mcc_wrb** %6, align 8
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %17 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %20 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %27 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %32 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %35 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @beiscsi_log(%struct.beiscsi_hba* %24, i32 %25, i32 %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %37)
  br label %159

39:                                               ; preds = %2
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %41 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %159

46:                                               ; preds = %39
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %48 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %52 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %46
  %60 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %61 = load i32, i32* @KERN_ERR, align 4
  %62 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %63 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %68 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %72 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @beiscsi_log(%struct.beiscsi_hba* %60, i32 %61, i32 %66, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %70, i64 %74)
  br label %159

76:                                               ; preds = %46
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** %4, align 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %80 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %84 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  store i32 0, i32* %87, align 4
  %88 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %89 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 5
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 0, i64* %94, align 8
  %95 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %96 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %104 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32* null, i32** %110, align 8
  %111 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %112 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, -1
  store i64 %115, i64* %113, align 8
  %116 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %117 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @MAX_MCC_CMD, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %76
  %125 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %126 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  br label %134

128:                                              ; preds = %76
  %129 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %130 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %128, %124
  %135 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %136 = call %struct.be_mcc_wrb* @queue_head_node(%struct.be_queue_info* %135)
  store %struct.be_mcc_wrb* %136, %struct.be_mcc_wrb** %6, align 8
  %137 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %138 = call i32 @memset(%struct.be_mcc_wrb* %137, i32 0, i32 4)
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %141 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %143 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @MCC_Q_WRB_IDX_SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = load i32, i32* @MCC_Q_WRB_IDX_MASK, align 4
  %148 = and i32 %146, %147
  %149 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %150 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %154 = call i32 @queue_head_inc(%struct.be_queue_info* %153)
  %155 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %156 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %156, align 8
  br label %159

159:                                              ; preds = %134, %59, %45, %23
  %160 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %161 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 3
  %163 = call i32 @spin_unlock(i32* %162)
  %164 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  ret %struct.be_mcc_wrb* %164
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i64, i64) #1

declare dso_local %struct.be_mcc_wrb* @queue_head_node(%struct.be_queue_info*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @queue_head_inc(%struct.be_queue_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
