; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_wq_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_wq_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_queue = type { i32, i32, %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"6085 Fast-path %s (%d) not allocated\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"WQ\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"CQ\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"EQ\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_MBOX = common dso_local global i64 0, align 8
@LPFC_MCQ = common dso_local global i32 0, align 4
@LPFC_WCQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"6086 Failed setup of CQ (%d), rc = 0x%x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"6087 CQ setup: cq[%d]-id=%d, parent eq[%d]-id=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"4618 Fail setup fastpath WQ (%d), rc = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"2593 WQ setup: wq[%d]-id=%d assoc=%d, cq[%d]-id=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"0539 Failed setup of slow-path MQ: rc = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"2589 MBX MQ setup: wq-id=%d, parent cq-id=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_queue*, %struct.lpfc_queue*, i32*, i32, i64)* @lpfc_create_wq_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_create_wq_cq(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.lpfc_queue* %2, %struct.lpfc_queue* %3, i32* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca %struct.lpfc_queue*, align 8
  %11 = alloca %struct.lpfc_queue*, align 8
  %12 = alloca %struct.lpfc_queue*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.lpfc_sli_ring*, align 8
  %17 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %9, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %10, align 8
  store %struct.lpfc_queue* %2, %struct.lpfc_queue** %11, align 8
  store %struct.lpfc_queue* %3, %struct.lpfc_queue** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %18 = load %struct.lpfc_queue*, %struct.lpfc_queue** %10, align 8
  %19 = icmp ne %struct.lpfc_queue* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = load %struct.lpfc_queue*, %struct.lpfc_queue** %11, align 8
  %22 = icmp ne %struct.lpfc_queue* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %25 = icmp ne %struct.lpfc_queue* %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23, %20, %7
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %28 = load i32, i32* @KERN_ERR, align 4
  %29 = load i32, i32* @LOG_INIT, align 4
  %30 = load %struct.lpfc_queue*, %struct.lpfc_queue** %10, align 8
  %31 = icmp ne %struct.lpfc_queue* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.lpfc_queue*, %struct.lpfc_queue** %11, align 8
  %34 = icmp ne %struct.lpfc_queue* %33, null
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i8* [ %36, %32 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %37 ]
  %40 = load i32, i32* %14, align 4
  %41 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %172

44:                                               ; preds = %23
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %46 = load %struct.lpfc_queue*, %struct.lpfc_queue** %11, align 8
  %47 = load %struct.lpfc_queue*, %struct.lpfc_queue** %10, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* @LPFC_MBOX, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @LPFC_MCQ, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @LPFC_WCQ, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @lpfc_cq_create(%struct.lpfc_hba* %45, %struct.lpfc_queue* %46, %struct.lpfc_queue* %47, i32 %56, i64 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %63 = load i32, i32* @KERN_ERR, align 4
  %64 = load i32, i32* @LOG_INIT, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %65, i64 %67)
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %8, align 4
  br label %172

70:                                               ; preds = %55
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* @LPFC_MBOX, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %139

74:                                               ; preds = %70
  %75 = load i32*, i32** %13, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.lpfc_queue*, %struct.lpfc_queue** %11, align 8
  %79 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %13, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %74
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %84 = load i32, i32* @KERN_INFO, align 4
  %85 = load i32, i32* @LOG_INIT, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.lpfc_queue*, %struct.lpfc_queue** %11, align 8
  %88 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.lpfc_queue*, %struct.lpfc_queue** %10, align 8
  %92 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32 %89, i32 %90, i32 %93)
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %96 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %97 = load %struct.lpfc_queue*, %struct.lpfc_queue** %11, align 8
  %98 = load i64, i64* %15, align 8
  %99 = call i32 @lpfc_wq_create(%struct.lpfc_hba* %95, %struct.lpfc_queue* %96, %struct.lpfc_queue* %97, i64 %98)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %82
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %104 = load i32, i32* @KERN_ERR, align 4
  %105 = load i32, i32* @LOG_INIT, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %103, i32 %104, i32 %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %106, i64 %108)
  %110 = load i32, i32* %17, align 4
  store i32 %110, i32* %8, align 4
  br label %172

111:                                              ; preds = %82
  %112 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %113 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %112, i32 0, i32 2
  %114 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %113, align 8
  store %struct.lpfc_sli_ring* %114, %struct.lpfc_sli_ring** %16, align 8
  %115 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %116 = bitcast %struct.lpfc_queue* %115 to i8*
  %117 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %16, align 8
  %118 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i8* %116, i8** %120, align 8
  %121 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %16, align 8
  %122 = load %struct.lpfc_queue*, %struct.lpfc_queue** %11, align 8
  %123 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %122, i32 0, i32 2
  store %struct.lpfc_sli_ring* %121, %struct.lpfc_sli_ring** %123, align 8
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %125 = load i32, i32* @KERN_INFO, align 4
  %126 = load i32, i32* @LOG_INIT, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %129 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %132 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load %struct.lpfc_queue*, %struct.lpfc_queue** %11, align 8
  %136 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %124, i32 %125, i32 %126, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %127, i32 %130, i32 %133, i32 %134, i32 %137)
  br label %171

139:                                              ; preds = %70
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %141 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %142 = load %struct.lpfc_queue*, %struct.lpfc_queue** %11, align 8
  %143 = load i64, i64* @LPFC_MBOX, align 8
  %144 = call i32 @lpfc_mq_create(%struct.lpfc_hba* %140, %struct.lpfc_queue* %141, %struct.lpfc_queue* %142, i64 %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %139
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %149 = load i32, i32* @KERN_ERR, align 4
  %150 = load i32, i32* @LOG_INIT, align 4
  %151 = load i32, i32* %17, align 4
  %152 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %17, align 4
  store i32 %153, i32* %8, align 4
  br label %172

154:                                              ; preds = %139
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %156 = load i32, i32* @KERN_INFO, align 4
  %157 = load i32, i32* @LOG_INIT, align 4
  %158 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %159 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %165 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %155, i32 %156, i32 %157, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %163, i64 %169)
  br label %171

171:                                              ; preds = %154, %111
  store i32 0, i32* %8, align 4
  br label %172

172:                                              ; preds = %171, %147, %102, %61, %38
  %173 = load i32, i32* %8, align 4
  ret i32 %173
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_cq_create(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_queue*, i32, i64) #1

declare dso_local i32 @lpfc_wq_create(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_queue*, i64) #1

declare dso_local i32 @lpfc_mq_create(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_queue*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
