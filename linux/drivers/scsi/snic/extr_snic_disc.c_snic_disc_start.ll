; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_disc.c_snic_disc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_disc.c_snic_disc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, i32, i64, %struct.snic_disc }
%struct.snic_disc = type { i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Discovery Start.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"snic driver removal in progress ...\0A\00", align 1
@SNIC_DISC_PENDING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Discovery Failed, err=%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_disc_start(%struct.snic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snic*, align 8
  %4 = alloca %struct.snic_disc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %3, align 8
  %7 = load %struct.snic*, %struct.snic** %3, align 8
  %8 = getelementptr inbounds %struct.snic, %struct.snic* %7, i32 0, i32 3
  store %struct.snic_disc* %8, %struct.snic_disc** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.snic*, %struct.snic** %3, align 8
  %10 = getelementptr inbounds %struct.snic, %struct.snic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @SNIC_SCSI_DBG(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.snic*, %struct.snic** %3, align 8
  %14 = getelementptr inbounds %struct.snic, %struct.snic* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.snic*, %struct.snic** %3, align 8
  %18 = getelementptr inbounds %struct.snic, %struct.snic* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.snic*, %struct.snic** %3, align 8
  %23 = getelementptr inbounds %struct.snic, %struct.snic* %22, i32 0, i32 1
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = call i32 @SNIC_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %69

28:                                               ; preds = %1
  %29 = load %struct.snic*, %struct.snic** %3, align 8
  %30 = getelementptr inbounds %struct.snic, %struct.snic* %29, i32 0, i32 1
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.snic_disc*, %struct.snic_disc** %4, align 8
  %34 = getelementptr inbounds %struct.snic_disc, %struct.snic_disc* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.snic_disc*, %struct.snic_disc** %4, align 8
  %37 = getelementptr inbounds %struct.snic_disc, %struct.snic_disc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SNIC_DISC_PENDING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %28
  %42 = load %struct.snic_disc*, %struct.snic_disc** %4, align 8
  %43 = getelementptr inbounds %struct.snic_disc, %struct.snic_disc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.snic_disc*, %struct.snic_disc** %4, align 8
  %47 = getelementptr inbounds %struct.snic_disc, %struct.snic_disc* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %69

50:                                               ; preds = %28
  %51 = load i64, i64* @SNIC_DISC_PENDING, align 8
  %52 = load %struct.snic_disc*, %struct.snic_disc** %4, align 8
  %53 = getelementptr inbounds %struct.snic_disc, %struct.snic_disc* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.snic_disc*, %struct.snic_disc** %4, align 8
  %55 = getelementptr inbounds %struct.snic_disc, %struct.snic_disc* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.snic*, %struct.snic** %3, align 8
  %58 = call i32 @snic_queue_report_tgt_req(%struct.snic* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load %struct.snic*, %struct.snic** %3, align 8
  %63 = getelementptr inbounds %struct.snic, %struct.snic* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @SNIC_HOST_INFO(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %50
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %41, %21
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @SNIC_ERR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snic_queue_report_tgt_req(%struct.snic*) #1

declare dso_local i32 @SNIC_HOST_INFO(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
