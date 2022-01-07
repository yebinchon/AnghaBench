; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_pick_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_pick_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_card = type { i32 }
%struct.zcrypt_queue = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.module* }
%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zcrypt_queue* (%struct.zcrypt_card*, %struct.zcrypt_queue*, %struct.module**, i32)* @zcrypt_pick_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zcrypt_queue* @zcrypt_pick_queue(%struct.zcrypt_card* %0, %struct.zcrypt_queue* %1, %struct.module** %2, i32 %3) #0 {
  %5 = alloca %struct.zcrypt_queue*, align 8
  %6 = alloca %struct.zcrypt_card*, align 8
  %7 = alloca %struct.zcrypt_queue*, align 8
  %8 = alloca %struct.module**, align 8
  %9 = alloca i32, align 4
  store %struct.zcrypt_card* %0, %struct.zcrypt_card** %6, align 8
  store %struct.zcrypt_queue* %1, %struct.zcrypt_queue** %7, align 8
  store %struct.module** %2, %struct.module*** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %7, align 8
  %11 = icmp ne %struct.zcrypt_queue* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %7, align 8
  %14 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.module*, %struct.module** %20, align 8
  %22 = call i32 @try_module_get(%struct.module* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12, %4
  store %struct.zcrypt_queue* null, %struct.zcrypt_queue** %5, align 8
  br label %57

25:                                               ; preds = %12
  %26 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %7, align 8
  %27 = call i32 @zcrypt_queue_get(%struct.zcrypt_queue* %26)
  %28 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %7, align 8
  %29 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = call i32 @get_device(i32* %32)
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.zcrypt_card*, %struct.zcrypt_card** %6, align 8
  %36 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %35, i32 0, i32 0
  %37 = call i32 @atomic_add(i32 %34, i32* %36)
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %7, align 8
  %40 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %39, i32 0, i32 2
  %41 = call i32 @atomic_add(i32 %38, i32* %40)
  %42 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %7, align 8
  %43 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %7, align 8
  %47 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.module*, %struct.module** %53, align 8
  %55 = load %struct.module**, %struct.module*** %8, align 8
  store %struct.module* %54, %struct.module** %55, align 8
  %56 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %7, align 8
  store %struct.zcrypt_queue* %56, %struct.zcrypt_queue** %5, align 8
  br label %57

57:                                               ; preds = %25, %24
  %58 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  ret %struct.zcrypt_queue* %58
}

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32 @zcrypt_queue_get(%struct.zcrypt_queue*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
