; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_free_fcoe_pf_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_free_fcoe_pf_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*)* @qedf_free_fcoe_pf_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_free_fcoe_pf_param(%struct.qedf_ctx* %0) #0 {
  %2 = alloca %struct.qedf_ctx*, align 8
  %3 = alloca i64, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  store i64 %13, i64* %3, align 8
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dma_free_coherent(i32* %17, i64 %18, i64 %21, i32 %24)
  br label %26

26:                                               ; preds = %8, %1
  %27 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %28 = call i32 @qedf_free_global_queues(%struct.qedf_ctx* %27)
  %29 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kfree(i32 %31)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i64, i32) #1

declare dso_local i32 @qedf_free_global_queues(%struct.qedf_ctx*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
