; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_iol_mode_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_iol_mode_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@REG_SYS_CFG = common dso_local global i32 0, align 4
@SW_OFFLOAD_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"bFWReady == false call reset 8051...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iol_mode_enable(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = load i32, i32* @REG_SYS_CFG, align 4
  %11 = call i32 @usb_read8(%struct.adapter* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = load i32, i32* @REG_SYS_CFG, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SW_OFFLOAD_EN, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @usb_write8(%struct.adapter* %12, i32 %13, i32 %16)
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %8
  %23 = call i32 @DBG_88E(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = call i32 @_8051Reset88E(%struct.adapter* %24)
  br label %26

26:                                               ; preds = %22, %8
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = load i32, i32* @REG_SYS_CFG, align 4
  %30 = call i32 @usb_read8(%struct.adapter* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = load i32, i32* @REG_SYS_CFG, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SW_OFFLOAD_EN, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @usb_write8(%struct.adapter* %31, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @usb_read8(%struct.adapter*, i32) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i32) #1

declare dso_local i32 @DBG_88E(i8*) #1

declare dso_local i32 @_8051Reset88E(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
