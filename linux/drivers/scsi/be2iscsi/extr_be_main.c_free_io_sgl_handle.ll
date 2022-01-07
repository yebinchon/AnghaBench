; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_free_io_sgl_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_free_io_sgl_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64, i32, %struct.TYPE_2__, i32, %struct.sgl_handle** }
%struct.TYPE_2__ = type { i32 }
%struct.sgl_handle = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"BM_%d : In free_,io_sgl_free_index=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"BM_%d : Double Free in IO SGL io_sgl_free_index=%d, value there=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*, %struct.sgl_handle*)* @free_io_sgl_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_io_sgl_handle(%struct.beiscsi_hba* %0, %struct.sgl_handle* %1) #0 {
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
  %12 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %17, i32 0, i32 4
  %19 = load %struct.sgl_handle**, %struct.sgl_handle*** %18, align 8
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %21 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %19, i64 %22
  %24 = load %struct.sgl_handle*, %struct.sgl_handle** %23, align 8
  %25 = icmp ne %struct.sgl_handle* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %2
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %28 = load i32, i32* @KERN_INFO, align 4
  %29 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %34 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %33, i32 0, i32 4
  %35 = load %struct.sgl_handle**, %struct.sgl_handle*** %34, align 8
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %37 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %35, i64 %38
  %40 = load %struct.sgl_handle*, %struct.sgl_handle** %39, align 8
  %41 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) @beiscsi_log(%struct.beiscsi_hba* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %32, %struct.sgl_handle* %40)
  %42 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %43 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %42, i32 0, i32 1
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %82

46:                                               ; preds = %2
  %47 = load %struct.sgl_handle*, %struct.sgl_handle** %4, align 8
  %48 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %49 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %48, i32 0, i32 4
  %50 = load %struct.sgl_handle**, %struct.sgl_handle*** %49, align 8
  %51 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %52 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.sgl_handle*, %struct.sgl_handle** %50, i64 %53
  store %struct.sgl_handle* %47, %struct.sgl_handle** %54, align 8
  %55 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %56 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %60 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %63 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %61, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %46
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %71 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %77

72:                                               ; preds = %46
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %74 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %72, %69
  %78 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %79 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %78, i32 0, i32 1
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  br label %82

82:                                               ; preds = %77, %26
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
