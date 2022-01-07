; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_set_macaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_set_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Invalid MAC address, using random address %pM\0A\00", align 1
@MT_MAC_ADDR_DW0 = common dso_local global i32 0, align 4
@MT_MAC_ADDR_DW1 = common dso_local global i32 0, align 4
@MT_MAC_ADDR_DW1_U2ME_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7601u_set_macaddr(%struct.mt7601u_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32*, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @ether_addr_copy(i64 %7, i32* %8)
  %10 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @is_valid_ether_addr(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @eth_random_addr(i64 %18)
  %20 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dev_info(i32 %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %15, %2
  %28 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %29 = load i32, i32* @MT_MAC_ADDR_DW0, align 4
  %30 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @get_unaligned_le32(i64 %32)
  %34 = call i32 @mt76_wr(%struct.mt7601u_dev* %28, i32 %29, i32 %33)
  %35 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %36 = load i32, i32* @MT_MAC_ADDR_DW1, align 4
  %37 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 4
  %41 = call i32 @get_unaligned_le16(i64 %40)
  %42 = load i32, i32* @MT_MAC_ADDR_DW1_U2ME_MASK, align 4
  %43 = call i32 @FIELD_PREP(i32 %42, i32 255)
  %44 = or i32 %41, %43
  %45 = call i32 @mt76_wr(%struct.mt7601u_dev* %35, i32 %36, i32 %44)
  ret void
}

declare dso_local i32 @ether_addr_copy(i64, i32*) #1

declare dso_local i32 @is_valid_ether_addr(i64) #1

declare dso_local i32 @eth_random_addr(i64) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @mt76_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @get_unaligned_le32(i64) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
