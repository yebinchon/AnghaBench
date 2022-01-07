; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32 }
%struct.device = type { i32 }

@acer_rfkill_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rfkill* (%struct.device*, i32, i8*, i64)* @acer_rfkill_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rfkill* @acer_rfkill_register(%struct.device* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.rfkill*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rfkill*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i64, i64* %9, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call %struct.rfkill* @rfkill_alloc(i8* %14, %struct.device* %15, i32 %16, i32* @acer_rfkill_ops, i8* %18)
  store %struct.rfkill* %19, %struct.rfkill** %11, align 8
  %20 = load %struct.rfkill*, %struct.rfkill** %11, align 8
  %21 = icmp ne %struct.rfkill* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.rfkill* @ERR_PTR(i32 %24)
  store %struct.rfkill* %25, %struct.rfkill** %5, align 8
  br label %51

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @get_u32(i64* %12, i64 %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.rfkill*, %struct.rfkill** %11, align 8
  %30 = call i32 @rfkill_register(%struct.rfkill* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.rfkill*, %struct.rfkill** %11, align 8
  %35 = call i32 @rfkill_destroy(%struct.rfkill* %34)
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.rfkill* @ERR_PTR(i32 %36)
  store %struct.rfkill* %37, %struct.rfkill** %5, align 8
  br label %51

38:                                               ; preds = %26
  %39 = load i32, i32* %13, align 4
  %40 = call i64 @ACPI_SUCCESS(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.rfkill*, %struct.rfkill** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @rfkill_set_sw_state(%struct.rfkill* %43, i32 %47)
  br label %49

49:                                               ; preds = %42, %38
  %50 = load %struct.rfkill*, %struct.rfkill** %11, align 8
  store %struct.rfkill* %50, %struct.rfkill** %5, align 8
  br label %51

51:                                               ; preds = %49, %33, %22
  %52 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  ret %struct.rfkill* %52
}

declare dso_local %struct.rfkill* @rfkill_alloc(i8*, %struct.device*, i32, i32*, i8*) #1

declare dso_local %struct.rfkill* @ERR_PTR(i32) #1

declare dso_local i32 @get_u32(i64*, i64) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @rfkill_set_sw_state(%struct.rfkill*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
