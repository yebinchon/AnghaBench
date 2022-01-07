; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iss_device* @omap4iss_get(%struct.iss_device* %0) #0 {
  %2 = alloca %struct.iss_device*, align 8
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca %struct.iss_device*, align 8
  store %struct.iss_device* %0, %struct.iss_device** %3, align 8
  %5 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  store %struct.iss_device* %5, %struct.iss_device** %4, align 8
  %6 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %7 = icmp ne %struct.iss_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.iss_device* null, %struct.iss_device** %2, align 8
  br label %39

9:                                                ; preds = %1
  %10 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %11 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %14 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %26

18:                                               ; preds = %9
  %19 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %20 = call i64 @iss_enable_clocks(%struct.iss_device* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.iss_device* null, %struct.iss_device** %4, align 8
  br label %26

23:                                               ; preds = %18
  %24 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %25 = call i32 @iss_enable_interrupts(%struct.iss_device* %24)
  br label %26

26:                                               ; preds = %23, %22, %17
  %27 = load %struct.iss_device*, %struct.iss_device** %4, align 8
  %28 = icmp ne %struct.iss_device* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %31 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %36 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.iss_device*, %struct.iss_device** %4, align 8
  store %struct.iss_device* %38, %struct.iss_device** %2, align 8
  br label %39

39:                                               ; preds = %34, %8
  %40 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  ret %struct.iss_device* %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iss_enable_clocks(%struct.iss_device*) #1

declare dso_local i32 @iss_enable_interrupts(%struct.iss_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
