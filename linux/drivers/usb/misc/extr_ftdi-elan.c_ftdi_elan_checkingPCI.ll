; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_checkingPCI.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_checkingPCI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"CARD EJECTED - controlreg = %08X\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"vendor=%04X pciVID=%04X device=%04X pciPID=%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_checkingPCI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_checkingPCI(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  %11 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %12 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %13 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %12, i32 0, i32 0
  %14 = call i32 @ftdi_elan_read_reg(%struct.usb_ftdi* %11, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %99

19:                                               ; preds = %1
  %20 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %21 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 4194304
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %27 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %42

31:                                               ; preds = %25
  %32 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %33 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %35 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %39 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %31, %30
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %99

45:                                               ; preds = %19
  %46 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %47 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 %50, 8
  store i32 %51, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %52 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ftdi_elan_read_config(%struct.usb_ftdi* %52, i32 %55, i32 0, i32* %7)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %99

61:                                               ; preds = %45
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 65535
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 65535
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %69 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %67, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %61
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %76 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %74, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %99

81:                                               ; preds = %73, %61
  %82 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %83 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %82, i32 0, i32 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %87 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %92 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90, i32 %94, i32 %95)
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %81, %80, %59, %42, %17
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @ftdi_elan_read_reg(%struct.usb_ftdi*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @ftdi_elan_read_config(%struct.usb_ftdi*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
