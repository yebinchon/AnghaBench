; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_handle_cuir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_handle_cuir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*, i32)* }
%struct.dasd_cuir_message = type { i64, i32 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"CUIR request: %016llx %016llx %016llx %08x\00", align 1
@CUIR_QUIESCE = common dso_local global i64 0, align 8
@PSF_CUIR_LAST_PATH = common dso_local global i32 0, align 4
@PSF_CUIR_COMPLETED = common dso_local global i32 0, align 4
@CUIR_RESUME = common dso_local global i64 0, align 8
@PSF_CUIR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"CUIR response: %d on message ID %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, i8*, i32)* @dasd_eckd_handle_cuir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_handle_cuir(%struct.dasd_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dasd_cuir_message*, align 8
  %8 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.dasd_cuir_message*
  store %struct.dasd_cuir_message* %10, %struct.dasd_cuir_message** %7, align 8
  %11 = load i32, i32* @DBF_WARNING, align 4
  %12 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %13 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %14 = bitcast %struct.dasd_cuir_message* %13 to i32*
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %18 = bitcast %struct.dasd_cuir_message* %17 to i32*
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %22 = bitcast %struct.dasd_cuir_message* %21 to i32*
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %26 = bitcast %struct.dasd_cuir_message* %25 to i32*
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, %struct.dasd_device*, i8*, i32, i32, ...) @DBF_DEV_EVENT(i32 %11, %struct.dasd_device* %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %24, i32 %28)
  %30 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %31 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CUIR_QUIESCE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %3
  %36 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %39 = call i64 @dasd_eckd_cuir_quiesce(%struct.dasd_device* %36, i32 %37, %struct.dasd_cuir_message* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @PSF_CUIR_LAST_PATH, align 4
  store i32 %42, i32* %8, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @PSF_CUIR_COMPLETED, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %41
  br label %61

46:                                               ; preds = %3
  %47 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %48 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CUIR_RESUME, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %56 = call i32 @dasd_eckd_cuir_resume(%struct.dasd_device* %53, i32 %54, %struct.dasd_cuir_message* %55)
  %57 = load i32, i32* @PSF_CUIR_COMPLETED, align 4
  store i32 %57, i32* %8, align 4
  br label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @PSF_CUIR_NOT_SUPPORTED, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %52
  br label %61

61:                                               ; preds = %60, %45
  %62 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %65 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dasd_eckd_psf_cuir_response(%struct.dasd_device* %62, i32 %63, i32 %66, i32 %67)
  %69 = load i32, i32* @DBF_WARNING, align 4
  %70 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %73 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, %struct.dasd_device*, i8*, i32, i32, ...) @DBF_DEV_EVENT(i32 %69, %struct.dasd_device* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %77 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (%struct.dasd_device*, i32)*, i32 (%struct.dasd_device*, i32)** %79, align 8
  %81 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 %80(%struct.dasd_device* %81, i32 %82)
  ret void
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32, i32, ...) #1

declare dso_local i64 @dasd_eckd_cuir_quiesce(%struct.dasd_device*, i32, %struct.dasd_cuir_message*) #1

declare dso_local i32 @dasd_eckd_cuir_resume(%struct.dasd_device*, i32, %struct.dasd_cuir_message*) #1

declare dso_local i32 @dasd_eckd_psf_cuir_response(%struct.dasd_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
