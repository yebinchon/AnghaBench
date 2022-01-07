; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_stub_priv_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_stub_priv_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_priv = type { i32 }
%struct.stub_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stub_priv* (%struct.stub_device*)* @stub_priv_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stub_priv* @stub_priv_pop(%struct.stub_device* %0) #0 {
  %2 = alloca %struct.stub_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.stub_priv*, align 8
  store %struct.stub_device* %0, %struct.stub_device** %2, align 8
  %5 = load %struct.stub_device*, %struct.stub_device** %2, align 8
  %6 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.stub_device*, %struct.stub_device** %2, align 8
  %10 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %9, i32 0, i32 3
  %11 = call %struct.stub_priv* @stub_priv_pop_from_listhead(i32* %10)
  store %struct.stub_priv* %11, %struct.stub_priv** %4, align 8
  %12 = load %struct.stub_priv*, %struct.stub_priv** %4, align 8
  %13 = icmp ne %struct.stub_priv* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.stub_device*, %struct.stub_device** %2, align 8
  %17 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %16, i32 0, i32 2
  %18 = call %struct.stub_priv* @stub_priv_pop_from_listhead(i32* %17)
  store %struct.stub_priv* %18, %struct.stub_priv** %4, align 8
  %19 = load %struct.stub_priv*, %struct.stub_priv** %4, align 8
  %20 = icmp ne %struct.stub_priv* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %26

22:                                               ; preds = %15
  %23 = load %struct.stub_device*, %struct.stub_device** %2, align 8
  %24 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %23, i32 0, i32 1
  %25 = call %struct.stub_priv* @stub_priv_pop_from_listhead(i32* %24)
  store %struct.stub_priv* %25, %struct.stub_priv** %4, align 8
  br label %26

26:                                               ; preds = %22, %21, %14
  %27 = load %struct.stub_device*, %struct.stub_device** %2, align 8
  %28 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %27, i32 0, i32 0
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.stub_priv*, %struct.stub_priv** %4, align 8
  ret %struct.stub_priv* %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.stub_priv* @stub_priv_pop_from_listhead(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
