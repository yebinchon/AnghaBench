; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap4iss_put(%struct.iss_device* %0) #0 {
  %2 = alloca %struct.iss_device*, align 8
  store %struct.iss_device* %0, %struct.iss_device** %2, align 8
  %3 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %4 = icmp ne %struct.iss_device* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %38

6:                                                ; preds = %1
  %7 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %8 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %11 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %17 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %6
  %22 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %23 = call i32 @iss_disable_interrupts(%struct.iss_device* %22)
  %24 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %25 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %24, i32 0, i32 2
  %26 = call i32 @media_entity_enum_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %30 = call i32 @iss_reset(%struct.iss_device* %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %33 = call i32 @iss_disable_clocks(%struct.iss_device* %32)
  br label %34

34:                                               ; preds = %31, %6
  %35 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %36 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  br label %38

38:                                               ; preds = %34, %5
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iss_disable_interrupts(%struct.iss_device*) #1

declare dso_local i32 @media_entity_enum_empty(i32*) #1

declare dso_local i32 @iss_reset(%struct.iss_device*) #1

declare dso_local i32 @iss_disable_clocks(%struct.iss_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
