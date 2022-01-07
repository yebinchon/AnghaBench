; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_print_eeprom_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_print_eeprom_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NvRamType = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Used settings: AdapterID=%02i, Speed=%i(%02i.%01iMHz), dev_mode=0x%02x\0A\00", align 1
@clock_speed = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"               AdaptMode=0x%02x, Tags=%i(%02i), DelayReset=%is\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.NvRamType*)* @print_eeprom_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_eeprom_settings(%struct.NvRamType* %0) #0 {
  %2 = alloca %struct.NvRamType*, align 8
  store %struct.NvRamType* %0, %struct.NvRamType** %2, align 8
  %3 = load i32, i32* @KERN_INFO, align 4
  %4 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %5 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %8 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32*, i32** @clock_speed, align 8
  %15 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %16 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %14, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 10
  %24 = load i32*, i32** @clock_speed, align 8
  %25 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %26 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %32, 10
  %34 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %35 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dprintkl(i32 %3, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %13, i32 %23, i32 %33, i32 %39)
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %43 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %46 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %49 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 1, %50
  %52 = load %struct.NvRamType*, %struct.NvRamType** %2, align 8
  %53 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dprintkl(i32 %41, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47, i32 %51, i32 %54)
  ret void
}

declare dso_local i32 @dprintkl(i32, i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
