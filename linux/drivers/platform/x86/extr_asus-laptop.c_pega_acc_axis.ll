; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_pega_acc_axis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_pega_acc_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i32 }

@PEGA_ACC_RETRIES = common dso_local global i32 0, align 4
@PEGA_ACC_CLAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*, i32, i8*)* @pega_acc_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pega_acc_axis(%struct.asus_laptop* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.asus_laptop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.asus_laptop* %0, %struct.asus_laptop** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %34, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PEGA_ACC_RETRIES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %16 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @acpi_evaluate_integer(i32 %17, i8* %18, i32* null, i64* %9)
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %9, align 8
  %22 = trunc i64 %21 to i16
  %23 = sext i16 %22 to i32
  %24 = sub nsw i32 %20, %23
  %25 = call i32 @abs(i32 %24) #3
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 128
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load i64, i64* %9, align 8
  %30 = and i64 %29, -65536
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %37

33:                                               ; preds = %28, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %10

37:                                               ; preds = %32, %10
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i16
  %40 = load i32, i32* @PEGA_ACC_CLAMP, align 4
  %41 = sub nsw i32 0, %40
  %42 = load i32, i32* @PEGA_ACC_CLAMP, align 4
  %43 = call i32 @clamp_val(i16 signext %39, i32 %41, i32 %42)
  ret i32 %43
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @clamp_val(i16 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
