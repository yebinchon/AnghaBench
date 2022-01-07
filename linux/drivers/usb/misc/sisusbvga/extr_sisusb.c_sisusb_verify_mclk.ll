; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_verify_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_verify_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }

@SISUSB_PCI_MEMBASE = common dso_local global i64 0, align 8
@SISSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*)* @sisusb_verify_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_verify_mclk(%struct.sisusb_usb_data* %0) #0 {
  %2 = alloca %struct.sisusb_usb_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load i64, i64* @SISUSB_PCI_MEMBASE, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @WRITEB(i64 %10, i32 170)
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %14, 16
  %16 = call i32 @WRITEB(i64 %15, i32 85)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @READB(i64 %19, i32* %5)
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i64, i64* %4, align 8
  %24 = add nsw i64 %23, 16
  %25 = call i32 @READB(i64 %24, i32* %6)
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 170
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 85
  br i1 %32, label %33, label %97

33:                                               ; preds = %30, %1
  store i32 0, i32* %7, align 4
  store i32 16, i32* %8, align 4
  br label %34

34:                                               ; preds = %91, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %96

37:                                               ; preds = %34
  %38 = load i32, i32* @SISSR, align 4
  %39 = call i32 @GETIREG(i32 %38, i32 33, i32* %5)
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @SISSR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 251
  %45 = call i32 @SETIREGAND(i32 %42, i32 33, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @SISSR, align 4
  %49 = call i32 @SETIREGOR(i32 %48, i32 60, i32 1)
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @SISSR, align 4
  %53 = call i32 @SETIREGAND(i32 %52, i32 60, i32 254)
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @SISSR, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @SETIREG(i32 %56, i32 33, i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i64, i64* %4, align 8
  %62 = add nsw i64 %61, 16
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @WRITEB(i64 %65, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load i64, i64* %4, align 8
  %71 = add nsw i64 %70, 16
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call i32 @READB(i64 %74, i32* %5)
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %37
  %82 = load i64, i64* %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @WRITEB(i64 %85, i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  br label %96

90:                                               ; preds = %37
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 16
  store i32 %95, i32* %8, align 4
  br label %34

96:                                               ; preds = %81, %34
  br label %97

97:                                               ; preds = %96, %30
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @WRITEB(i64, i32) #1

declare dso_local i32 @READB(i64, i32*) #1

declare dso_local i32 @GETIREG(i32, i32, i32*) #1

declare dso_local i32 @SETIREGAND(i32, i32, i32) #1

declare dso_local i32 @SETIREGOR(i32, i32, i32) #1

declare dso_local i32 @SETIREG(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
