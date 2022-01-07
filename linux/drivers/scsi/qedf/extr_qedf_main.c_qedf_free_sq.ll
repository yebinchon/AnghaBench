; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_free_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_free_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qedf_rport = type { i32, i64, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*, %struct.qedf_rport*)* @qedf_free_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_free_sq(%struct.qedf_ctx* %0, %struct.qedf_rport* %1) #0 {
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.qedf_rport*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store %struct.qedf_rport* %1, %struct.qedf_rport** %4, align 8
  %5 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %6 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %15 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %18 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %21 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dma_free_coherent(i32* %13, i32 %16, i64 %19, i32 %22)
  br label %24

24:                                               ; preds = %9, %2
  %25 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %26 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %35 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %38 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.qedf_rport*, %struct.qedf_rport** %4, align 8
  %41 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dma_free_coherent(i32* %33, i32 %36, i64 %39, i32 %42)
  br label %44

44:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
