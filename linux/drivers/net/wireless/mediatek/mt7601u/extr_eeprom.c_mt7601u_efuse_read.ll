; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_efuse_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_efuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }

@MT_EFUSE_CTRL = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_AIN = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_MODE = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_KICK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_AOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, i32, i32*, i32)* @mt7601u_efuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_efuse_read(%struct.mt7601u_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7601u_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %13 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %14 = call i32 @mt76_rr(%struct.mt7601u_dev* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @MT_EFUSE_CTRL_AIN, align 4
  %16 = load i32, i32* @MT_EFUSE_CTRL_MODE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @MT_EFUSE_CTRL_AIN, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, -16
  %24 = call i32 @FIELD_PREP(i32 %21, i32 %23)
  %25 = load i32, i32* @MT_EFUSE_CTRL_MODE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @FIELD_PREP(i32 %25, i32 %26)
  %28 = or i32 %24, %27
  %29 = load i32, i32* @MT_EFUSE_CTRL_KICK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %34 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mt76_wr(%struct.mt7601u_dev* %33, i32 %34, i32 %35)
  %37 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %38 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %39 = load i32, i32* @MT_EFUSE_CTRL_KICK, align 4
  %40 = call i32 @mt76_poll(%struct.mt7601u_dev* %37, i32 %38, i32 %39, i32 0, i32 1000)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %77

45:                                               ; preds = %4
  %46 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %47 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %48 = call i32 @mt76_rr(%struct.mt7601u_dev* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @MT_EFUSE_CTRL_AOUT, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @MT_EFUSE_CTRL_AOUT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @memset(i32* %55, i32 255, i32 16)
  store i32 0, i32* %5, align 4
  br label %77

57:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %73, %57
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @MT_EFUSE_DATA(i32 %63)
  %65 = call i32 @mt76_rr(%struct.mt7601u_dev* %62, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 4, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = call i32 @put_unaligned_le32(i32 %66, i32* %71)
  br label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %58

76:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %54, %42
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @mt76_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt76_poll(%struct.mt7601u_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MT_EFUSE_DATA(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
