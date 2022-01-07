; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_set_chip_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_set_chip_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MT_EE_NIC_CONF_0 = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_1 = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_1_TEMP_TX_ALC = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_1_HW_RF_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Error: this driver does not support HW RF ctrl\0A\00", align 1
@MT_EE_NIC_CONF_0_RX_PATH = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_0_TX_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Error: device has more than 1 RX/TX stream!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, i32*)* @mt7601u_set_chip_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_set_chip_cap(%struct.mt7601u_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @MT_EE_NIC_CONF_0, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = call i32 @get_unaligned_le16(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @MT_EE_NIC_CONF_1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @get_unaligned_le16(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 255
  %19 = call i32 @field_valid(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 65280
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @mt7601u_has_tssi(%struct.mt7601u_dev* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MT_EE_NIC_CONF_1_TEMP_TX_ALC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i1 [ false, %24 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MT_EE_NIC_CONF_1_HW_RF_CTRL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %35
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 8
  %54 = call i32 @field_valid(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %72

57:                                               ; preds = %51
  %58 = load i32, i32* @MT_EE_NIC_CONF_0_RX_PATH, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @FIELD_GET(i32 %58, i32 %59)
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @MT_EE_NIC_CONF_0_TX_PATH, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @FIELD_GET(i32 %63, i32 %64)
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %62, %57
  %68 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %69 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %56, %67, %62
  ret void
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @field_valid(i32) #1

declare dso_local i64 @mt7601u_has_tssi(%struct.mt7601u_dev*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
