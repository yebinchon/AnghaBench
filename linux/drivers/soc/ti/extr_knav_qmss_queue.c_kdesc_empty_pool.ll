; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_kdesc_empty_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_kdesc_empty_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_pool = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"couldn't unmap desc, continuing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knav_pool*)* @kdesc_empty_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdesc_empty_pool(%struct.knav_pool* %0) #0 {
  %2 = alloca %struct.knav_pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.knav_pool* %0, %struct.knav_pool** %2, align 8
  %7 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %8 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %50

12:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %35, %12
  %14 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %15 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @knav_queue_pop(i32 %16, i32* %4)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %38

21:                                               ; preds = %13
  %22 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @knav_pool_desc_dma_to_virt(%struct.knav_pool* %22, i32 %23)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %29 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %13

38:                                               ; preds = %20
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %41 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load %struct.knav_pool*, %struct.knav_pool** %2, align 8
  %47 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @knav_queue_close(i32 %48)
  br label %50

50:                                               ; preds = %38, %11
  ret void
}

declare dso_local i32 @knav_queue_pop(i32, i32*) #1

declare dso_local i8* @knav_pool_desc_dma_to_virt(%struct.knav_pool*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @knav_queue_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
