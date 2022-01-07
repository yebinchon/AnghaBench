; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_debugfs.h_lpfc_debug_dump_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_debugfs.h_lpfc_debug_dump_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.lpfc_queue*, %struct.lpfc_queue*, %struct.lpfc_queue*, %struct.TYPE_4__* }
%struct.lpfc_queue = type { i32 }
%struct.TYPE_4__ = type { %struct.lpfc_queue* }

@DUMP_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@DUMP_MBX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"MBX\00", align 1
@DUMP_ELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ELS\00", align 1
@DUMP_NVMELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"NVMELS\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s WQ: WQ[Idx:%d|Qid:%d]\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s WQ: WQ[Qid:%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, i32, i32)* @lpfc_debug_dump_wq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_debug_dump_wq(%struct.lpfc_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_queue*, align 8
  %8 = alloca i8*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DUMP_IO, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.lpfc_queue*, %struct.lpfc_queue** %20, align 8
  store %struct.lpfc_queue* %21, %struct.lpfc_queue** %7, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %53

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DUMP_MBX, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load %struct.lpfc_queue*, %struct.lpfc_queue** %29, align 8
  store %struct.lpfc_queue* %30, %struct.lpfc_queue** %7, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %52

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @DUMP_ELS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load %struct.lpfc_queue*, %struct.lpfc_queue** %38, align 8
  store %struct.lpfc_queue* %39, %struct.lpfc_queue** %7, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %51

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @DUMP_NVMELS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.lpfc_queue*, %struct.lpfc_queue** %47, align 8
  store %struct.lpfc_queue* %48, %struct.lpfc_queue** %7, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %50

49:                                               ; preds = %40
  br label %73

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52, %12
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @DUMP_IO, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %61 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %58, i32 %59, i32 %62)
  br label %70

64:                                               ; preds = %53
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %67 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %72 = call i32 @lpfc_debug_dump_q(%struct.lpfc_queue* %71)
  br label %73

73:                                               ; preds = %70, %49
  ret void
}

declare dso_local i32 @pr_err(i8*, i8*, i32, ...) #1

declare dso_local i32 @lpfc_debug_dump_q(%struct.lpfc_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
