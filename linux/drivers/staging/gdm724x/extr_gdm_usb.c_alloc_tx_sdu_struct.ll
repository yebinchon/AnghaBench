; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_alloc_tx_sdu_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_alloc_tx_sdu_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_tx_sdu = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SDU_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_tx_sdu* ()* @alloc_tx_sdu_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_tx_sdu* @alloc_tx_sdu_struct() #0 {
  %1 = alloca %struct.usb_tx_sdu*, align 8
  %2 = alloca %struct.usb_tx_sdu*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.usb_tx_sdu* @kzalloc(i32 4, i32 %3)
  store %struct.usb_tx_sdu* %4, %struct.usb_tx_sdu** %2, align 8
  %5 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %2, align 8
  %6 = icmp ne %struct.usb_tx_sdu* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.usb_tx_sdu* null, %struct.usb_tx_sdu** %1, align 8
  br label %23

8:                                                ; preds = %0
  %9 = load i32, i32* @SDU_BUF_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @kmalloc(i32 %9, i32 %10)
  %12 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %2, align 8
  %13 = getelementptr inbounds %struct.usb_tx_sdu, %struct.usb_tx_sdu* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %2, align 8
  %15 = getelementptr inbounds %struct.usb_tx_sdu, %struct.usb_tx_sdu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %8
  %19 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %2, align 8
  %20 = call i32 @kfree(%struct.usb_tx_sdu* %19)
  store %struct.usb_tx_sdu* null, %struct.usb_tx_sdu** %1, align 8
  br label %23

21:                                               ; preds = %8
  %22 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %2, align 8
  store %struct.usb_tx_sdu* %22, %struct.usb_tx_sdu** %1, align 8
  br label %23

23:                                               ; preds = %21, %18, %7
  %24 = load %struct.usb_tx_sdu*, %struct.usb_tx_sdu** %1, align 8
  ret %struct.usb_tx_sdu* %24
}

declare dso_local %struct.usb_tx_sdu* @kzalloc(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_tx_sdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
