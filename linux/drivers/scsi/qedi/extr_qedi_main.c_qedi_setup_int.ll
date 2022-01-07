; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_setup_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_setup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)*, i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.qedi_ctx**, i32, i32)* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.qedi_ctx = type { %struct.TYPE_5__, i32, i32 }

@qedi_ops = common dso_local global %struct.TYPE_6__* null, align 8
@QEDI_LOG_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Number of msix_cnt = 0x%x num of cpus = 0x%x\0A\00", align 1
@QEDI_SIMD_HANDLER_NUM = common dso_local global i32 0, align 4
@qedi_simd_int_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_setup_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_setup_int(%struct.qedi_ctx* %0) #0 {
  %2 = alloca %struct.qedi_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %9 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (...) @num_online_cpus()
  %13 = call i32 %8(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.TYPE_5__*)** %17, align 8
  %19 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %22, i32 0, i32 0
  %24 = call i32 %18(i32 %21, %struct.TYPE_5__* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %62

28:                                               ; preds = %1
  %29 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %29, i32 0, i32 2
  %31 = load i32, i32* @QEDI_LOG_DISC, align 4
  %32 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (...) @num_online_cpus()
  %37 = call i32 @QEDI_INFO(i32* %30, i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %36)
  %38 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %45 = call i32 @qedi_request_msix_irq(%struct.qedi_ctx* %44)
  store i32 %45, i32* %3, align 4
  br label %62

46:                                               ; preds = %28
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32 (i32, %struct.qedi_ctx**, i32, i32)*, i32 (i32, %struct.qedi_ctx**, i32, i32)** %50, align 8
  %52 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @QEDI_SIMD_HANDLER_NUM, align 4
  %56 = load i32, i32* @qedi_simd_int_handler, align 4
  %57 = call i32 %51(i32 %54, %struct.qedi_ctx** %2, i32 %55, i32 %56)
  %58 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %43, %27
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i64, i32) #1

declare dso_local i32 @qedi_request_msix_irq(%struct.qedi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
