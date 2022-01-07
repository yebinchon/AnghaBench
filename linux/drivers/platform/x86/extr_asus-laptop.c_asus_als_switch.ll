; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_als_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_als_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i32, i32, i64 }

@PEGA_ALS = common dso_local global i32 0, align 4
@PEGA_ALS_POWER = common dso_local global i32 0, align 4
@METHOD_ALS_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error setting light sensor switch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_laptop*, i32)* @asus_als_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_als_switch(%struct.asus_laptop* %0, i32 %1) #0 {
  %3 = alloca %struct.asus_laptop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.asus_laptop* %0, %struct.asus_laptop** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %7 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %12 = load i32, i32* @PEGA_ALS, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @asus_pega_lucid_set(%struct.asus_laptop* %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %19 = load i32, i32* @PEGA_ALS_POWER, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @asus_pega_lucid_set(%struct.asus_laptop* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %10
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %25 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @METHOD_ALS_CONTROL, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @write_acpi_int(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %23, %22
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %38 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  ret void
}

declare dso_local i32 @asus_pega_lucid_set(%struct.asus_laptop*, i32, i32) #1

declare dso_local i32 @write_acpi_int(i32, i32, i32) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
