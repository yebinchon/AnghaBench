; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EEPROM_BBP_SIZE = common dso_local global i32 0, align 4
@EEPROM_BBP_START = common dso_local global i32 0, align 4
@EEPROM_BBP_REG_ID = common dso_local global i32 0, align 4
@EEPROM_BBP_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_bbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_bbp(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i64 @rt2800_is_305x_soc(%struct.rt2x00_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2800_init_bbp_305x_soc(%struct.rt2x00_dev* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %15 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %51 [
    i32 144, label %18
    i32 143, label %18
    i32 142, label %18
    i32 141, label %21
    i32 140, label %21
    i32 139, label %21
    i32 138, label %24
    i32 137, label %27
    i32 132, label %27
    i32 136, label %30
    i32 135, label %33
    i32 134, label %36
    i32 133, label %39
    i32 131, label %42
    i32 130, label %42
    i32 129, label %45
    i32 128, label %48
  ]

18:                                               ; preds = %13, %13, %13
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %20 = call i32 @rt2800_init_bbp_28xx(%struct.rt2x00_dev* %19)
  br label %51

21:                                               ; preds = %13, %13, %13
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = call i32 @rt2800_init_bbp_30xx(%struct.rt2x00_dev* %22)
  br label %51

24:                                               ; preds = %13
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = call i32 @rt2800_init_bbp_3290(%struct.rt2x00_dev* %25)
  br label %51

27:                                               ; preds = %13, %13
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = call i32 @rt2800_init_bbp_3352(%struct.rt2x00_dev* %28)
  br label %51

30:                                               ; preds = %13
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %32 = call i32 @rt2800_init_bbp_3390(%struct.rt2x00_dev* %31)
  br label %51

33:                                               ; preds = %13
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %35 = call i32 @rt2800_init_bbp_3572(%struct.rt2x00_dev* %34)
  br label %51

36:                                               ; preds = %13
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %38 = call i32 @rt2800_init_bbp_3593(%struct.rt2x00_dev* %37)
  br label %81

39:                                               ; preds = %13
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = call i32 @rt2800_init_bbp_3883(%struct.rt2x00_dev* %40)
  br label %81

42:                                               ; preds = %13, %13
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = call i32 @rt2800_init_bbp_53xx(%struct.rt2x00_dev* %43)
  br label %51

45:                                               ; preds = %13
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = call i32 @rt2800_init_bbp_5592(%struct.rt2x00_dev* %46)
  br label %81

48:                                               ; preds = %13
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = call i32 @rt2800_init_bbp_6352(%struct.rt2x00_dev* %49)
  br label %51

51:                                               ; preds = %13, %48, %42, %33, %30, %27, %24, %21, %18
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %78, %51
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @EEPROM_BBP_SIZE, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %58 = load i32, i32* @EEPROM_BBP_START, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %57, i32 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 65535
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @EEPROM_BBP_REG_ID, align 4
  %69 = call i32 @rt2x00_get_field16(i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @EEPROM_BBP_VALUE, align 4
  %72 = call i32 @rt2x00_get_field16(i32 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %66, %63, %56
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %52

81:                                               ; preds = %36, %39, %45, %52
  ret void
}

declare dso_local i64 @rt2800_is_305x_soc(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_305x_soc(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_28xx(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_30xx(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_3290(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_3352(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_3390(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_3572(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_3593(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_3883(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_53xx(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_5592(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp_6352(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
