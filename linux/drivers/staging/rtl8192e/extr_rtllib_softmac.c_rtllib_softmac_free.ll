; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_softmac_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_softmac_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtllib_softmac_free(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  %3 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %4 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %7 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %6, i32 0, i32 13
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @kfree(i32* %8)
  %10 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %11 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %10, i32 0, i32 13
  store i32* null, i32** %11, align 8
  %12 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %13 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %12, i32 0, i32 12
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %16 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %15, i32 0, i32 11
  %17 = call i32 @cancel_delayed_work_sync(i32* %16)
  %18 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %19 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %18, i32 0, i32 10
  %20 = call i32 @cancel_delayed_work_sync(i32* %19)
  %21 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %22 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %21, i32 0, i32 9
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  %24 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %25 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %24, i32 0, i32 8
  %26 = call i32 @cancel_delayed_work_sync(i32* %25)
  %27 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %28 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %27, i32 0, i32 7
  %29 = call i32 @cancel_delayed_work_sync(i32* %28)
  %30 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %31 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %30, i32 0, i32 6
  %32 = call i32 @cancel_delayed_work_sync(i32* %31)
  %33 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %34 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %33, i32 0, i32 5
  %35 = call i32 @cancel_delayed_work_sync(i32* %34)
  %36 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %37 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %36, i32 0, i32 4
  %38 = call i32 @cancel_work_sync(i32* %37)
  %39 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %40 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %39, i32 0, i32 3
  %41 = call i32 @cancel_work_sync(i32* %40)
  %42 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %43 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %42, i32 0, i32 2
  %44 = call i32 @cancel_work_sync(i32* %43)
  %45 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %46 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 0
  %50 = call i32 @tasklet_kill(i32* %49)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
