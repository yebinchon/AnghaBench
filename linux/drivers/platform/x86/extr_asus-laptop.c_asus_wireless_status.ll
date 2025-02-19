; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_wireless_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_wireless_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i32, i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@METHOD_WL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error reading Wireless status\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*, i32)* @asus_wireless_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wireless_status(%struct.asus_laptop* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asus_laptop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.asus_laptop* %0, %struct.asus_laptop** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @AE_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %10 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %15 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %2
  %23 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %24 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @METHOD_WL_STATUS, align 4
  %27 = call i32 @acpi_evaluate_integer(i32 %25, i32 %26, i32* null, i64* %6)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %22
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = and i64 %36, %38
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %31, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @acpi_evaluate_integer(i32, i32, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
