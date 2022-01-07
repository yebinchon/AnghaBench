; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_alloc_mgmt_sgl_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_alloc_mgmt_sgl_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgl_handle = type { i32 }
%struct.beiscsi_hba = type { i64, i32, %struct.TYPE_2__, i64, %struct.sgl_handle** }
%struct.TYPE_2__ = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BM_%d : mgmt_sgl_alloc_index=%d=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sgl_handle* (%struct.beiscsi_hba*)* @alloc_mgmt_sgl_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sgl_handle* @alloc_mgmt_sgl_handle(%struct.beiscsi_hba* %0) #0 {
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
  br i1 %12, label %13, label %67

13:                                               ; preds = %1
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 4
  %16 = load %struct.sgl_handle**, %struct.sgl_handle*** %15, align 8
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %18 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %16, i64 %19
  %21 = load %struct.sgl_handle*, %struct.sgl_handle** %20, align 8
  store %struct.sgl_handle* %21, %struct.sgl_handle** %3, align 8
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 4
  %24 = load %struct.sgl_handle**, %struct.sgl_handle*** %23, align 8
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %26 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %24, i64 %27
  store %struct.sgl_handle* null, %struct.sgl_handle** %28, align 8
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %30 = load i32, i32* @KERN_INFO, align 4
  %31 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %33 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %36 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @beiscsi_log(%struct.beiscsi_hba* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %37)
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %40 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %44 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %47 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %51 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %49, %53
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = icmp eq i64 %45, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %13
  %59 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %60 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %66

61:                                               ; preds = %13
  %62 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %63 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %61, %58
  br label %68

67:                                               ; preds = %1
  store %struct.sgl_handle* null, %struct.sgl_handle** %3, align 8
  br label %68

68:                                               ; preds = %67, %66
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %70 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %69, i32 0, i32 1
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.sgl_handle*, %struct.sgl_handle** %3, align 8
  ret %struct.sgl_handle* %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
