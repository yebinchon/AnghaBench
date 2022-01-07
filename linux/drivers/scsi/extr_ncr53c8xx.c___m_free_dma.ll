; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ncr53c8xx.c___m_free_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ncr53c8xx.c___m_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_pool = type { i32 }

@ncr53c8xx_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i8*)* @__m_free_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__m_free_dma(i32 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.m_pool*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @spin_lock_irqsave(i32* @ncr53c8xx_lock, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.m_pool* @___get_dma_pool(i32 %13)
  store %struct.m_pool* %14, %struct.m_pool** %10, align 8
  %15 = load %struct.m_pool*, %struct.m_pool** %10, align 8
  %16 = icmp ne %struct.m_pool* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.m_pool*, %struct.m_pool** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @__m_free(%struct.m_pool* %18, i8* %19, i32 %20, i8* %21)
  br label %23

23:                                               ; preds = %17, %4
  %24 = load %struct.m_pool*, %struct.m_pool** %10, align 8
  %25 = icmp ne %struct.m_pool* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.m_pool*, %struct.m_pool** %10, align 8
  %28 = getelementptr inbounds %struct.m_pool, %struct.m_pool* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.m_pool*, %struct.m_pool** %10, align 8
  %33 = call i32 @___del_dma_pool(%struct.m_pool* %32)
  br label %34

34:                                               ; preds = %31, %26, %23
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @spin_unlock_irqrestore(i32* @ncr53c8xx_lock, i32 %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local %struct.m_pool* @___get_dma_pool(i32) #1

declare dso_local i32 @__m_free(%struct.m_pool*, i8*, i32, i8*) #1

declare dso_local i32 @___del_dma_pool(%struct.m_pool*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
