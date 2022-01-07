; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_debugfs.h_lpfc_debug_dump_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_debugfs.h_lpfc_debug_dump_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.lpfc_queue*, %struct.lpfc_queue*, %struct.lpfc_queue*, %struct.lpfc_queue*, %struct.lpfc_queue*, %struct.lpfc_queue* }
%struct.TYPE_3__ = type { %struct.lpfc_queue*, %struct.lpfc_queue*, %struct.lpfc_queue* }
%struct.lpfc_queue = type { i64, i64 }

@DUMP_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@DUMP_MBX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"MBX\00", align 1
@DUMP_ELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ELS\00", align 1
@DUMP_NVMELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"NVMELS\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Couldn't find EQ for CQ. Using EQ[0]\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"%s CQ: WQ[Idx:%d|Qid%d]->CQ[Idx%d|Qid%d]->EQ[Idx:%d|Qid:%d]:\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"%s CQ: WQ[Qid:%d]->CQ[Qid:%d]->EQ[Idx:%d|Qid:%d]:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, i32, i32)* @lpfc_debug_dump_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_debug_dump_cq(%struct.lpfc_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_queue*, align 8
  %8 = alloca %struct.lpfc_queue*, align 8
  %9 = alloca %struct.lpfc_queue*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.lpfc_queue* null, %struct.lpfc_queue** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DUMP_IO, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load %struct.lpfc_queue*, %struct.lpfc_queue** %23, align 8
  store %struct.lpfc_queue* %24, %struct.lpfc_queue** %7, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.lpfc_queue*, %struct.lpfc_queue** %32, align 8
  store %struct.lpfc_queue* %33, %struct.lpfc_queue** %8, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %77

34:                                               ; preds = %3
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @DUMP_MBX, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  %42 = load %struct.lpfc_queue*, %struct.lpfc_queue** %41, align 8
  store %struct.lpfc_queue* %42, %struct.lpfc_queue** %7, align 8
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = load %struct.lpfc_queue*, %struct.lpfc_queue** %45, align 8
  store %struct.lpfc_queue* %46, %struct.lpfc_queue** %8, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %76

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @DUMP_ELS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = load %struct.lpfc_queue*, %struct.lpfc_queue** %54, align 8
  store %struct.lpfc_queue* %55, %struct.lpfc_queue** %7, align 8
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load %struct.lpfc_queue*, %struct.lpfc_queue** %58, align 8
  store %struct.lpfc_queue* %59, %struct.lpfc_queue** %8, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %75

60:                                               ; preds = %47
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @DUMP_NVMELS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.lpfc_queue*, %struct.lpfc_queue** %67, align 8
  store %struct.lpfc_queue* %68, %struct.lpfc_queue** %7, align 8
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.lpfc_queue*, %struct.lpfc_queue** %71, align 8
  store %struct.lpfc_queue* %72, %struct.lpfc_queue** %8, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %74

73:                                               ; preds = %60
  br label %156

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75, %38
  br label %77

77:                                               ; preds = %76, %15
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %103, %77
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %78
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load %struct.lpfc_queue*, %struct.lpfc_queue** %92, align 8
  store %struct.lpfc_queue* %93, %struct.lpfc_queue** %9, align 8
  %94 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %95 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %98 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %84
  br label %106

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %78

106:                                              ; preds = %101, %78
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load %struct.lpfc_queue*, %struct.lpfc_queue** %119, align 8
  store %struct.lpfc_queue* %120, %struct.lpfc_queue** %9, align 8
  br label %121

121:                                              ; preds = %112, %106
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @DUMP_IO, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %121
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %129 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %133 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %137 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* %126, i32 %127, i64 %130, i32 %131, i64 %134, i32 %135, i64 %138)
  br label %153

140:                                              ; preds = %121
  %141 = load i8*, i8** %10, align 8
  %142 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %143 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %146 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.lpfc_queue*, %struct.lpfc_queue** %9, align 8
  %150 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %141, i64 %144, i64 %147, i32 %148, i64 %151)
  br label %153

153:                                              ; preds = %140, %125
  %154 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %155 = call i32 @lpfc_debug_dump_q(%struct.lpfc_queue* %154)
  br label %156

156:                                              ; preds = %153, %73
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @lpfc_debug_dump_q(%struct.lpfc_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
