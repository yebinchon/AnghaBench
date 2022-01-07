; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_enumeratePCI.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_enumeratePCI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_enumeratePCI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_enumeratePCI(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  %7 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %8 = call i32 @ftdi_elan_read_reg(%struct.usb_ftdi* %7, i32* %4)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %103

13:                                               ; preds = %1
  %14 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %15 = call i32 @ftdi_elan_write_reg(%struct.usb_ftdi* %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %103

20:                                               ; preds = %13
  %21 = call i32 @msleep(i32 750)
  %22 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %23 = call i32 @ftdi_elan_write_reg(%struct.usb_ftdi* %22, i32 768)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %103

28:                                               ; preds = %20
  %29 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %30 = call i32 @ftdi_elan_write_reg(%struct.usb_ftdi* %29, i32 1792)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %103

35:                                               ; preds = %28
  %36 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %37 = call i32 @ftdi_elan_read_reg(%struct.usb_ftdi* %36, i32* %4)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %103

42:                                               ; preds = %35
  %43 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %44 = call i32 @ftdi_elan_write_reg(%struct.usb_ftdi* %43, i32 524)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %103

49:                                               ; preds = %42
  %50 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %51 = call i32 @ftdi_elan_write_reg(%struct.usb_ftdi* %50, i32 525)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %103

56:                                               ; preds = %49
  %57 = call i32 @msleep(i32 250)
  %58 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %59 = call i32 @ftdi_elan_write_reg(%struct.usb_ftdi* %58, i32 527)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %103

64:                                               ; preds = %56
  %65 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %66 = call i32 @ftdi_elan_read_reg(%struct.usb_ftdi* %65, i32* %4)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %103

71:                                               ; preds = %64
  %72 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %73 = call i32 @ftdi_elan_write_reg(%struct.usb_ftdi* %72, i32 2655)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %103

78:                                               ; preds = %71
  %79 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %80 = call i32 @ftdi_elan_read_reg(%struct.usb_ftdi* %79, i32* %4)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %103

85:                                               ; preds = %78
  %86 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %87 = call i32 @ftdi_elan_read_reg(%struct.usb_ftdi* %86, i32* %4)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %103

92:                                               ; preds = %85
  %93 = call i32 @msleep(i32 1000)
  %94 = load i32, i32* %4, align 4
  %95 = ashr i32 %94, 16
  %96 = and i32 %95, 15
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 13, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 0, i32* %2, align 4
  br label %103

100:                                              ; preds = %92
  %101 = load i32, i32* @ENXIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %99, %90, %83, %76, %69, %62, %54, %47, %40, %33, %26, %18, %11
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @ftdi_elan_read_reg(%struct.usb_ftdi*, i32*) #1

declare dso_local i32 @ftdi_elan_write_reg(%struct.usb_ftdi*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
