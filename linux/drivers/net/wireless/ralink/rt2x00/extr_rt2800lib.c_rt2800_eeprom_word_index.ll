; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_eeprom_word_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_eeprom_word_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EEPROM_WORD_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: invalid EEPROM word %d\0A\00", align 1
@RT3593 = common dso_local global i32 0, align 4
@RT3883 = common dso_local global i32 0, align 4
@rt2800_eeprom_map_ext = common dso_local global i32* null, align 8
@rt2800_eeprom_map = common dso_local global i32* null, align 8
@EEPROM_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: invalid access of EEPROM word %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt2800_eeprom_word_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_eeprom_word_index(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @EEPROM_WORD_COUNT, align 4
  %10 = icmp uge i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wiphy_name(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @WARN_ONCE(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

22:                                               ; preds = %2
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %24 = load i32, i32* @RT3593, align 4
  %25 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %29 = load i32, i32* @RT3883, align 4
  %30 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %22
  %33 = load i32*, i32** @rt2800_eeprom_map_ext, align 8
  store i32* %33, i32** %6, align 8
  br label %36

34:                                               ; preds = %27
  %35 = load i32*, i32** @rt2800_eeprom_map, align 8
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @EEPROM_CHIP_ID, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %45, %36
  %49 = phi i1 [ false, %36 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %52 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wiphy_name(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @WARN_ONCE(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %48, %21
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
