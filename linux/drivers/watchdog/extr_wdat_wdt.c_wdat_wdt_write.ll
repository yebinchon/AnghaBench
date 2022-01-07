; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdat_wdt.c_wdat_wdt_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdat_wdt.c_wdat_wdt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wdat_wdt = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wdat_instruction = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.acpi_generic_address }
%struct.acpi_generic_address = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Wrote %#x to 0x%08llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wdat_wdt*, %struct.wdat_instruction*, i32)* @wdat_wdt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdat_wdt_write(%struct.wdat_wdt* %0, %struct.wdat_instruction* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wdat_wdt*, align 8
  %6 = alloca %struct.wdat_instruction*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_generic_address*, align 8
  store %struct.wdat_wdt* %0, %struct.wdat_wdt** %5, align 8
  store %struct.wdat_instruction* %1, %struct.wdat_instruction** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.wdat_instruction*, %struct.wdat_instruction** %6, align 8
  %10 = getelementptr inbounds %struct.wdat_instruction, %struct.wdat_instruction* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.acpi_generic_address* %11, %struct.acpi_generic_address** %8, align 8
  %12 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %8, align 8
  %13 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %33 [
    i32 1, label %15
    i32 2, label %21
    i32 3, label %27
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.wdat_instruction*, %struct.wdat_instruction** %6, align 8
  %18 = getelementptr inbounds %struct.wdat_instruction, %struct.wdat_instruction* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @iowrite8(i32 %16, i32 %19)
  br label %36

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.wdat_instruction*, %struct.wdat_instruction** %6, align 8
  %24 = getelementptr inbounds %struct.wdat_instruction, %struct.wdat_instruction* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iowrite16(i32 %22, i32 %25)
  br label %36

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.wdat_instruction*, %struct.wdat_instruction** %6, align 8
  %30 = getelementptr inbounds %struct.wdat_instruction, %struct.wdat_instruction* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iowrite32(i32 %28, i32 %31)
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %46

36:                                               ; preds = %27, %21, %15
  %37 = load %struct.wdat_wdt*, %struct.wdat_wdt** %5, align 8
  %38 = getelementptr inbounds %struct.wdat_wdt, %struct.wdat_wdt* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %8, align 8
  %43 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %36, %33
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @iowrite16(i32, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
