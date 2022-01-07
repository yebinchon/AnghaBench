; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_pool_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_pool_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.knav_pool = type { i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@knav_dev_lock = common dso_local global i32 0, align 4
@kdev = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @knav_pool_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.knav_pool*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.knav_pool*
  store %struct.knav_pool* %5, %struct.knav_pool** %3, align 8
  %6 = load %struct.knav_pool*, %struct.knav_pool** %3, align 8
  %7 = icmp ne %struct.knav_pool* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %46

9:                                                ; preds = %1
  %10 = load %struct.knav_pool*, %struct.knav_pool** %3, align 8
  %11 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %46

15:                                               ; preds = %9
  %16 = load %struct.knav_pool*, %struct.knav_pool** %3, align 8
  %17 = call i32 @kdesc_empty_pool(%struct.knav_pool* %16)
  %18 = call i32 @mutex_lock(i32* @knav_dev_lock)
  %19 = load %struct.knav_pool*, %struct.knav_pool** %3, align 8
  %20 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.knav_pool*, %struct.knav_pool** %3, align 8
  %23 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %21
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load %struct.knav_pool*, %struct.knav_pool** %3, align 8
  %31 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %30, i32 0, i32 2
  %32 = call i32 @list_del(i32* %31)
  %33 = load %struct.knav_pool*, %struct.knav_pool** %3, align 8
  %34 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %33, i32 0, i32 1
  %35 = call i32 @list_del(i32* %34)
  %36 = call i32 @mutex_unlock(i32* @knav_dev_lock)
  %37 = load %struct.knav_pool*, %struct.knav_pool** %3, align 8
  %38 = getelementptr inbounds %struct.knav_pool, %struct.knav_pool* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @kfree(i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kdev, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.knav_pool*, %struct.knav_pool** %3, align 8
  %45 = call i32 @devm_kfree(i32 %43, %struct.knav_pool* %44)
  br label %46

46:                                               ; preds = %15, %14, %8
  ret void
}

declare dso_local i32 @kdesc_empty_pool(%struct.knav_pool*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.knav_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
