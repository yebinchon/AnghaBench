; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_util.c_vchiu_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_util.c_vchiu_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiu_queue = type { i32, i32, i32, i32, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiu_queue_init(%struct.vchiu_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vchiu_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.vchiu_queue* %0, %struct.vchiu_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @is_pow2(i32 %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.vchiu_queue*, %struct.vchiu_queue** %4, align 8
  %14 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.vchiu_queue*, %struct.vchiu_queue** %4, align 8
  %16 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.vchiu_queue*, %struct.vchiu_queue** %4, align 8
  %18 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.vchiu_queue*, %struct.vchiu_queue** %4, align 8
  %20 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.vchiu_queue*, %struct.vchiu_queue** %4, align 8
  %22 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %21, i32 0, i32 4
  %23 = call i32 @init_completion(i32* %22)
  %24 = load %struct.vchiu_queue*, %struct.vchiu_queue** %4, align 8
  %25 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %24, i32 0, i32 3
  %26 = call i32 @init_completion(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @kcalloc(i32 %27, i32 8, i32 %28)
  %30 = load %struct.vchiu_queue*, %struct.vchiu_queue** %4, align 8
  %31 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vchiu_queue*, %struct.vchiu_queue** %4, align 8
  %33 = getelementptr inbounds %struct.vchiu_queue, %struct.vchiu_queue* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load %struct.vchiu_queue*, %struct.vchiu_queue** %4, align 8
  %38 = call i32 @vchiu_queue_delete(%struct.vchiu_queue* %37)
  store i32 0, i32* %3, align 4
  br label %40

39:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_pow2(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @vchiu_queue_delete(%struct.vchiu_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
