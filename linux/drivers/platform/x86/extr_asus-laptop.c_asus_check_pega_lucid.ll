; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_check_pega_lucid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_check_pega_lucid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i32, i32 }

@DEVICE_NAME_PEGA = common dso_local global i32 0, align 4
@METHOD_PEGA_ENABLE = common dso_local global i32 0, align 4
@METHOD_PEGA_DISABLE = common dso_local global i32 0, align 4
@METHOD_PEGA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*)* @asus_check_pega_lucid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_check_pega_lucid(%struct.asus_laptop* %0) #0 {
  %2 = alloca %struct.asus_laptop*, align 8
  store %struct.asus_laptop* %0, %struct.asus_laptop** %2, align 8
  %3 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %4 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @DEVICE_NAME_PEGA, align 4
  %7 = call i32 @strcmp(i32 %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %1
  %10 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %11 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @METHOD_PEGA_ENABLE, align 4
  %14 = call i32 @acpi_check_handle(i32 %12, i32 %13, i32* null)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %9
  %17 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %18 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @METHOD_PEGA_DISABLE, align 4
  %21 = call i32 @acpi_check_handle(i32 %19, i32 %20, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %25 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @METHOD_PEGA_READ, align 4
  %28 = call i32 @acpi_check_handle(i32 %26, i32 %27, i32* null)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %23, %16, %9, %1
  %32 = phi i1 [ false, %16 ], [ false, %9 ], [ false, %1 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @acpi_check_handle(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
