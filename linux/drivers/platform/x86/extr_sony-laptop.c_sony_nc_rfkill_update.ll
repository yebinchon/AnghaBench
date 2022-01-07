; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_rfkill_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_rfkill_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sony_rfkill_handle = common dso_local global i32 0, align 4
@N_SONY_RFKILL = common dso_local global i32 0, align 4
@sony_rfkill_address = common dso_local global i32* null, align 8
@sony_rfkill_devices = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sony_nc_rfkill_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_nc_rfkill_update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @sony_rfkill_handle, align 4
  %6 = call i32 @sony_call_snc_handle(i32 %5, i32 512, i32* %2)
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %57, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @N_SONY_RFKILL, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load i32*, i32** @sony_rfkill_address, align 8
  %18 = load i32, i32* %1, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32*, i32** @sony_rfkill_devices, align 8
  %23 = load i32, i32* %1, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  br label %57

29:                                               ; preds = %16
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32*, i32** @sony_rfkill_devices, align 8
  %34 = load i32, i32* %1, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @rfkill_set_hw_state(i32 %37, i32 1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %32
  br label %57

42:                                               ; preds = %29
  %43 = load i32, i32* @sony_rfkill_handle, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @sony_call_snc_handle(i32 %43, i32 %44, i32* %2)
  %46 = load i32*, i32** @sony_rfkill_devices, align 8
  %47 = load i32, i32* %1, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %2, align 4
  %52 = and i32 %51, 2
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @rfkill_set_states(i32 %50, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %42, %41, %28
  %58 = load i32, i32* %1, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %12

60:                                               ; preds = %12
  ret void
}

declare dso_local i32 @sony_call_snc_handle(i32, i32, i32*) #1

declare dso_local i64 @rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @rfkill_set_states(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
