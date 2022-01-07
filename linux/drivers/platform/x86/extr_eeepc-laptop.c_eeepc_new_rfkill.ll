; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_new_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_new_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rfkill = type { i32 }

@eeepc_rfkill_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeepc_laptop*, %struct.rfkill**, i8*, i32, i32)* @eeepc_new_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_new_rfkill(%struct.eeepc_laptop* %0, %struct.rfkill** %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eeepc_laptop*, align 8
  %8 = alloca %struct.rfkill**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %7, align 8
  store %struct.rfkill** %1, %struct.rfkill*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %7, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @acpi_setter_handle(%struct.eeepc_laptop* %14, i32 %15, i32* %12)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %6, align 4
  br label %58

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %7, align 8
  %24 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.rfkill* @rfkill_alloc(i8* %22, i32* %26, i32 %27, i32* @eeepc_rfkill_ops, i32 %28)
  %30 = load %struct.rfkill**, %struct.rfkill*** %8, align 8
  store %struct.rfkill* %29, %struct.rfkill** %30, align 8
  %31 = load %struct.rfkill**, %struct.rfkill*** %8, align 8
  %32 = load %struct.rfkill*, %struct.rfkill** %31, align 8
  %33 = icmp ne %struct.rfkill* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %58

37:                                               ; preds = %21
  %38 = load %struct.rfkill**, %struct.rfkill*** %8, align 8
  %39 = load %struct.rfkill*, %struct.rfkill** %38, align 8
  %40 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @get_acpi(%struct.eeepc_laptop* %40, i32 %41)
  %43 = icmp ne i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @rfkill_init_sw_state(%struct.rfkill* %39, i32 %44)
  %46 = load %struct.rfkill**, %struct.rfkill*** %8, align 8
  %47 = load %struct.rfkill*, %struct.rfkill** %46, align 8
  %48 = call i32 @rfkill_register(%struct.rfkill* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %37
  %52 = load %struct.rfkill**, %struct.rfkill*** %8, align 8
  %53 = load %struct.rfkill*, %struct.rfkill** %52, align 8
  %54 = call i32 @rfkill_destroy(%struct.rfkill* %53)
  %55 = load %struct.rfkill**, %struct.rfkill*** %8, align 8
  store %struct.rfkill* null, %struct.rfkill** %55, align 8
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %58

57:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %51, %34, %19
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @acpi_setter_handle(%struct.eeepc_laptop*, i32, i32*) #1

declare dso_local %struct.rfkill* @rfkill_alloc(i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @rfkill_init_sw_state(%struct.rfkill*, i32) #1

declare dso_local i32 @get_acpi(%struct.eeepc_laptop*, i32) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
