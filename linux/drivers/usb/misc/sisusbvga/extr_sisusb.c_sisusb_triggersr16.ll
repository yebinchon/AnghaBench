; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_triggersr16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_triggersr16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }

@SISSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32)* @sisusb_triggersr16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_triggersr16(%struct.sisusb_usb_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sisusb_usb_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SISSR, align 4
  %8 = call i32 @GETIREG(i32 %7, i32 22, i32* %6)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 63
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @SISSR, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @SETIREG(i32 %14, i32 22, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 128
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @SISSR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SETIREG(i32 %21, i32 22, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %76

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, 192
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @SISSR, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SETIREG(i32 %29, i32 22, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 15
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @SISSR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @SETIREG(i32 %36, i32 22, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, 128
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @SISSR, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @SETIREG(i32 %43, i32 22, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 15
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @SISSR, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @SETIREG(i32 %50, i32 22, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, 208
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @SISSR, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @SETIREG(i32 %57, i32 22, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 15
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @SISSR, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @SETIREG(i32 %64, i32 22, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, 160
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @SISSR, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @SETIREG(i32 %71, i32 22, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %26, %11
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @GETIREG(i32, i32, i32*) #1

declare dso_local i32 @SETIREG(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
