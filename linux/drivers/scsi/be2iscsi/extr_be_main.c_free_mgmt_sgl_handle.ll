; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_free_mgmt_sgl_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_free_mgmt_sgl_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64, i32, %struct.TYPE_2__, i32, %struct.sgl_handle** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sgl_handle = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"BM_%d : In  free_mgmt_sgl_handle,eh_sgl_free_index=%d\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"BM_%d : Double Free in eh SGL ,eh_sgl_free_index=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mgmt_sgl_handle(%struct.beiscsi_hba* %0, %struct.sgl_handle* %1) #0 {
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.sgl_handle*, align 8
  %5 = alloca i64, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store %struct.sgl_handle* %1, %struct.sgl_handle** %4, align 8
  %6 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %7 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %11 = load i32, i32* @KERN_INFO, align 4
  %12 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @beiscsi_log(%struct.beiscsi_hba* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %17, i32 0, i32 4
  %19 = load %struct.sgl_handle**, %struct.sgl_handle*** %18, align 8
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %21 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %19, i64 %22
  %24 = load %struct.sgl_handle*, %struct.sgl_handle** %23, align 8
  %25 = icmp ne %struct.sgl_handle* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %28 = load i32, i32* @KERN_WARNING, align 4
  %29 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @beiscsi_log(%struct.beiscsi_hba* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %35 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %34, i32 0, i32 1
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  br label %79

38:                                               ; preds = %2
  %39 = load %struct.sgl_handle*, %struct.sgl_handle** %4, align 8
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %41 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %40, i32 0, i32 4
  %42 = load %struct.sgl_handle**, %struct.sgl_handle*** %41, align 8
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %44 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %42, i64 %45
  store %struct.sgl_handle* %39, %struct.sgl_handle** %46, align 8
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %48 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %52 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %55 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %59 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %57, %61
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %53, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %38
  %67 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %68 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %74

69:                                               ; preds = %38
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %71 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %69, %66
  %75 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %76 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %75, i32 0, i32 1
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  br label %79

79:                                               ; preds = %74, %26
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
