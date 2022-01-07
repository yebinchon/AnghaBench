; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ncr53c8xx.c____del_dma_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ncr53c8xx.c____del_dma_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.m_pool* }
%struct.m_pool = type { %struct.m_pool* }

@mp0 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"MPOOL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m_pool*)* @___del_dma_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @___del_dma_pool(%struct.m_pool* %0) #0 {
  %2 = alloca %struct.m_pool*, align 8
  %3 = alloca %struct.m_pool**, align 8
  store %struct.m_pool* %0, %struct.m_pool** %2, align 8
  store %struct.m_pool** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mp0, i32 0, i32 0), %struct.m_pool*** %3, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.m_pool**, %struct.m_pool*** %3, align 8
  %6 = load %struct.m_pool*, %struct.m_pool** %5, align 8
  %7 = icmp ne %struct.m_pool* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load %struct.m_pool**, %struct.m_pool*** %3, align 8
  %10 = load %struct.m_pool*, %struct.m_pool** %9, align 8
  %11 = load %struct.m_pool*, %struct.m_pool** %2, align 8
  %12 = icmp ne %struct.m_pool* %10, %11
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i1 [ false, %4 ], [ %12, %8 ]
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = load %struct.m_pool**, %struct.m_pool*** %3, align 8
  %17 = load %struct.m_pool*, %struct.m_pool** %16, align 8
  %18 = getelementptr inbounds %struct.m_pool, %struct.m_pool* %17, i32 0, i32 0
  store %struct.m_pool** %18, %struct.m_pool*** %3, align 8
  br label %4

19:                                               ; preds = %13
  %20 = load %struct.m_pool**, %struct.m_pool*** %3, align 8
  %21 = load %struct.m_pool*, %struct.m_pool** %20, align 8
  %22 = icmp ne %struct.m_pool* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.m_pool**, %struct.m_pool*** %3, align 8
  %25 = load %struct.m_pool*, %struct.m_pool** %24, align 8
  %26 = getelementptr inbounds %struct.m_pool, %struct.m_pool* %25, i32 0, i32 0
  %27 = load %struct.m_pool*, %struct.m_pool** %26, align 8
  %28 = load %struct.m_pool**, %struct.m_pool*** %3, align 8
  store %struct.m_pool* %27, %struct.m_pool** %28, align 8
  %29 = load %struct.m_pool*, %struct.m_pool** %2, align 8
  %30 = call i32 @__m_free(%struct.TYPE_3__* @mp0, %struct.m_pool* %29, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @__m_free(%struct.TYPE_3__*, %struct.m_pool*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
