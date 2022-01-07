; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_ulpi.c_ulpi_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_ulpi.c_ulpi_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ulpi = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32*, i32*, %struct.device* }

@ulpi_bus = common dso_local global i32 0, align 4
@ulpi_dev_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s.ulpi\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"registered ULPI PHY: vendor %04x, product %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ulpi*)* @ulpi_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulpi_register(%struct.device* %0, %struct.ulpi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ulpi*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ulpi* %1, %struct.ulpi** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %9 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store %struct.device* %7, %struct.device** %10, align 8
  %11 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %12 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32* @ulpi_bus, i32** %13, align 8
  %14 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %15 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32* @ulpi_dev_type, i32** %16, align 8
  %17 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %18 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @dev_name(%struct.device* %19)
  %21 = call i32 @dev_set_name(%struct.TYPE_7__* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %23 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %22, i32 0, i32 1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @ACPI_COMPANION(%struct.device* %24)
  %26 = call i32 @ACPI_COMPANION_SET(%struct.TYPE_7__* %23, i32 %25)
  %27 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %28 = call i32 @ulpi_of_register(%struct.ulpi* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %2
  %34 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %35 = call i32 @ulpi_read_id(%struct.ulpi* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %60

40:                                               ; preds = %33
  %41 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %42 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %41, i32 0, i32 1
  %43 = call i32 @device_register(%struct.TYPE_7__* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %60

48:                                               ; preds = %40
  %49 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %50 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %49, i32 0, i32 1
  %51 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %52 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ulpi*, %struct.ulpi** %5, align 8
  %56 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_dbg(%struct.TYPE_7__* %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %48, %46, %38, %31
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @ACPI_COMPANION_SET(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @ulpi_of_register(%struct.ulpi*) #1

declare dso_local i32 @ulpi_read_id(%struct.ulpi*) #1

declare dso_local i32 @device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
