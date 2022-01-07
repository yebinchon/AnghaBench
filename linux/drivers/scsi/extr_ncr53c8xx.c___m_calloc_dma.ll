; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ncr53c8xx.c___m_calloc_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ncr53c8xx.c___m_calloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_pool = type { i32 }

@ncr53c8xx_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i8*)* @__m_calloc_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__m_calloc_dma(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.m_pool*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @spin_lock_irqsave(i32* @ncr53c8xx_lock, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.m_pool* @___get_dma_pool(i32 %12)
  store %struct.m_pool* %13, %struct.m_pool** %8, align 8
  %14 = load %struct.m_pool*, %struct.m_pool** %8, align 8
  %15 = icmp ne %struct.m_pool* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.m_pool* @___cre_dma_pool(i32 %17)
  store %struct.m_pool* %18, %struct.m_pool** %8, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.m_pool*, %struct.m_pool** %8, align 8
  %21 = icmp ne %struct.m_pool* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.m_pool*, %struct.m_pool** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @__m_calloc(%struct.m_pool* %23, i32 %24, i8* %25)
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.m_pool*, %struct.m_pool** %8, align 8
  %29 = icmp ne %struct.m_pool* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.m_pool*, %struct.m_pool** %8, align 8
  %32 = getelementptr inbounds %struct.m_pool, %struct.m_pool* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.m_pool*, %struct.m_pool** %8, align 8
  %37 = call i32 @___del_dma_pool(%struct.m_pool* %36)
  br label %38

38:                                               ; preds = %35, %30, %27
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @spin_unlock_irqrestore(i32* @ncr53c8xx_lock, i32 %39)
  %41 = load i8*, i8** %9, align 8
  ret i8* %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local %struct.m_pool* @___get_dma_pool(i32) #1

declare dso_local %struct.m_pool* @___cre_dma_pool(i32) #1

declare dso_local i8* @__m_calloc(%struct.m_pool*, i32, i8*) #1

declare dso_local i32 @___del_dma_pool(%struct.m_pool*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
