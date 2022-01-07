; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_fill_txdesc_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_fill_txdesc_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_attrib = type { i32, i64, i64 }

@HT_CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i64 0, align 8
@DATA_SC_SHT = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_UPPER = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkt_attrib*, i32*)* @fill_txdesc_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_txdesc_phy(%struct.pkt_attrib* %0, i32* %1) #0 {
  %3 = alloca %struct.pkt_attrib*, align 8
  %4 = alloca i32*, align 8
  store %struct.pkt_attrib* %0, %struct.pkt_attrib** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %6 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %72

9:                                                ; preds = %2
  %10 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %11 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @HT_CHANNEL_WIDTH_40, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = call i32 @BIT(i32 25)
  %18 = call i32 @cpu_to_le32(i32 %17)
  br label %20

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %26 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load i32, i32* @DATA_SC_SHT, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %32, 4128768
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %71

38:                                               ; preds = %20
  %39 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %40 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i32, i32* @DATA_SC_SHT, align 4
  %46 = shl i32 2, %45
  %47 = and i32 %46, 4128768
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %70

52:                                               ; preds = %38
  %53 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %54 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %59, align 4
  br label %69

61:                                               ; preds = %52
  %62 = load i32, i32* @DATA_SC_SHT, align 4
  %63 = shl i32 3, %62
  %64 = and i32 %63, 4128768
  %65 = call i32 @cpu_to_le32(i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %61, %58
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %30
  br label %72

72:                                               ; preds = %71, %2
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
