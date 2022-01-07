; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_setBBreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_setBBreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@bMaskDWord = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_setBBreg(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @bMaskDWord, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @read_nic_dword(%struct.net_device* %15, i32 %16, i32* %9)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ffs(i32 %18)
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @write_nic_dword(%struct.net_device* %30, i32 %31, i32 %32)
  br label %39

34:                                               ; preds = %4
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @write_nic_dword(%struct.net_device* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %14
  ret void
}

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
