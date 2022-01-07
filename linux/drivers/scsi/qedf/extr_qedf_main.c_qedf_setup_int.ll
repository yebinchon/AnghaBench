; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_setup_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_setup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)*, i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.qedf_ctx**, i32, i32)* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.qedf_ctx = type { i32, %struct.TYPE_5__, i32 }

@qed_ops = common dso_local global %struct.TYPE_6__* null, align 8
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Number of msix_cnt = 0x%x num of cpus = 0x%x\0A\00", align 1
@QEDF_SIMD_HANDLER_NUM = common dso_local global i32 0, align 4
@qedf_simd_int_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Cannot load driver due to a lack of MSI-X vectors.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ctx*)* @qedf_setup_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_setup_int(%struct.qedf_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qed_ops, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %8, align 8
  %10 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (...) @num_online_cpus()
  %14 = call i32 %9(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qed_ops, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.TYPE_5__*)** %22, align 8
  %24 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %27, i32 0, i32 1
  %29 = call i32 %23(i32 %26, %struct.TYPE_5__* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %71

33:                                               ; preds = %18
  %34 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* @QEDF_LOG_DISC, align 4
  %37 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (...) @num_online_cpus()
  %42 = call i32 @QEDF_INFO(i32* %35, i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %41)
  %43 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %50 = call i32 @qedf_request_msix_irq(%struct.qedf_ctx* %49)
  store i32 %50, i32* %2, align 4
  br label %71

51:                                               ; preds = %33
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qed_ops, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32 (i32, %struct.qedf_ctx**, i32, i32)*, i32 (i32, %struct.qedf_ctx**, i32, i32)** %55, align 8
  %57 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @QEDF_SIMD_HANDLER_NUM, align 4
  %61 = load i32, i32* @qedf_simd_int_handler, align 4
  %62 = call i32 %56(i32 %59, %struct.qedf_ctx** %3, i32 %60, i32 %61)
  %63 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %66, i32 0, i32 0
  %68 = call i32 @QEDF_ERR(i32* %67, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %51, %48, %32, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i64, i32) #1

declare dso_local i32 @qedf_request_msix_irq(%struct.qedf_ctx*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
