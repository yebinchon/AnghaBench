; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_drop_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_drop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_card = type { i32 }
%struct.zcrypt_queue = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.module = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zcrypt_card*, %struct.zcrypt_queue*, %struct.module*, i32)* @zcrypt_drop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zcrypt_drop_queue(%struct.zcrypt_card* %0, %struct.zcrypt_queue* %1, %struct.module* %2, i32 %3) #0 {
  %5 = alloca %struct.zcrypt_card*, align 8
  %6 = alloca %struct.zcrypt_queue*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca i32, align 4
  store %struct.zcrypt_card* %0, %struct.zcrypt_card** %5, align 8
  store %struct.zcrypt_queue* %1, %struct.zcrypt_queue** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %6, align 8
  %10 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %15 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %14, i32 0, i32 0
  %16 = call i32 @atomic_sub(i32 %13, i32* %15)
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %6, align 8
  %19 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %18, i32 0, i32 1
  %20 = call i32 @atomic_sub(i32 %17, i32* %19)
  %21 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %6, align 8
  %22 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @put_device(i32* %25)
  %27 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %6, align 8
  %28 = call i32 @zcrypt_queue_put(%struct.zcrypt_queue* %27)
  %29 = load %struct.module*, %struct.module** %7, align 8
  %30 = call i32 @module_put(%struct.module* %29)
  ret void
}

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @zcrypt_queue_put(%struct.zcrypt_queue*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
