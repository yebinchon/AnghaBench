; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_els_dcmd2_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_els_dcmd2_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.els_plogi = type { i32, i64, i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_els_dcmd2_free(%struct.TYPE_7__* %0, %struct.els_plogi* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.els_plogi*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.els_plogi* %1, %struct.els_plogi** %4, align 8
  %5 = load %struct.els_plogi*, %struct.els_plogi** %4, align 8
  %6 = getelementptr inbounds %struct.els_plogi, %struct.els_plogi* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.els_plogi*, %struct.els_plogi** %4, align 8
  %17 = getelementptr inbounds %struct.els_plogi, %struct.els_plogi* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.els_plogi*, %struct.els_plogi** %4, align 8
  %20 = getelementptr inbounds %struct.els_plogi, %struct.els_plogi* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.els_plogi*, %struct.els_plogi** %4, align 8
  %23 = getelementptr inbounds %struct.els_plogi, %struct.els_plogi* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_free_coherent(i32* %15, i32 %18, i64 %21, i32 %24)
  br label %26

26:                                               ; preds = %9, %2
  %27 = load %struct.els_plogi*, %struct.els_plogi** %4, align 8
  %28 = getelementptr inbounds %struct.els_plogi, %struct.els_plogi* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.els_plogi*, %struct.els_plogi** %4, align 8
  %39 = getelementptr inbounds %struct.els_plogi, %struct.els_plogi* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.els_plogi*, %struct.els_plogi** %4, align 8
  %42 = getelementptr inbounds %struct.els_plogi, %struct.els_plogi* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.els_plogi*, %struct.els_plogi** %4, align 8
  %45 = getelementptr inbounds %struct.els_plogi, %struct.els_plogi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dma_free_coherent(i32* %37, i32 %40, i64 %43, i32 %46)
  br label %48

48:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
