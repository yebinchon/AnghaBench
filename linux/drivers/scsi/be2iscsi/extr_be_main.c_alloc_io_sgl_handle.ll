; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_alloc_io_sgl_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_alloc_io_sgl_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgl_handle = type { i32 }
%struct.beiscsi_hba = type { i64, i32, %struct.TYPE_2__, i64, %struct.sgl_handle** }
%struct.TYPE_2__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"BM_%d : In alloc_io_sgl_handle, io_sgl_alloc_index=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sgl_handle* (%struct.beiscsi_hba*)* @alloc_io_sgl_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sgl_handle* @alloc_io_sgl_handle(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.sgl_handle*, align 8
  %4 = alloca i64, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %5, i32 0, i32 1
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %10 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %1
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %18 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @beiscsi_log(%struct.beiscsi_hba* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %22 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %21, i32 0, i32 4
  %23 = load %struct.sgl_handle**, %struct.sgl_handle*** %22, align 8
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %23, i64 %26
  %28 = load %struct.sgl_handle*, %struct.sgl_handle** %27, align 8
  store %struct.sgl_handle* %28, %struct.sgl_handle** %3, align 8
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %30 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %29, i32 0, i32 4
  %31 = load %struct.sgl_handle**, %struct.sgl_handle*** %30, align 8
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %33 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %31, i64 %34
  store %struct.sgl_handle* null, %struct.sgl_handle** %35, align 8
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %37 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %41 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %44 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %42, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %13
  %51 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %52 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %58

53:                                               ; preds = %13
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %55 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %53, %50
  br label %60

59:                                               ; preds = %1
  store %struct.sgl_handle* null, %struct.sgl_handle** %3, align 8
  br label %60

60:                                               ; preds = %59, %58
  %61 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %62 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %61, i32 0, i32 1
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.sgl_handle*, %struct.sgl_handle** %3, align 8
  ret %struct.sgl_handle* %65
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
