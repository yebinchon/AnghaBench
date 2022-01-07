; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_tee_device_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_tee_device_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_device = type { i32, i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tee_device_put(%struct.tee_device* %0) #0 {
  %2 = alloca %struct.tee_device*, align 8
  store %struct.tee_device* %0, %struct.tee_device** %2, align 8
  %3 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %4 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %7 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %1
  %15 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %16 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %20 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %25 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %27 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %26, i32 0, i32 1
  %28 = call i32 @complete(i32* %27)
  br label %29

29:                                               ; preds = %23, %14
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %32 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
