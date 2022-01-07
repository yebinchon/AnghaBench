; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_fill_txdesc_vcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_fill_txdesc_vcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_attrib = type { i32, i32, i64, i64 }

@RTS_EN = common dso_local global i32 0, align 4
@CTS_2_SELF = common dso_local global i32 0, align 4
@HW_RTS_EN = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_UPPER = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkt_attrib*, i32*)* @fill_txdesc_vcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_txdesc_vcs(%struct.pkt_attrib* %0, i32* %1) #0 {
  %3 = alloca %struct.pkt_attrib*, align 8
  %4 = alloca i32*, align 8
  store %struct.pkt_attrib* %0, %struct.pkt_attrib** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %6 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %21 [
    i32 128, label %8
    i32 130, label %14
    i32 129, label %20
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @RTS_EN, align 4
  %10 = call i32 @cpu_to_le32(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @CTS_2_SELF, align 4
  %16 = call i32 @cpu_to_le32(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  br label %22

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %2, %20
  br label %22

22:                                               ; preds = %21, %14, %8
  %23 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %24 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %92

27:                                               ; preds = %22
  %28 = load i32, i32* @HW_RTS_EN, align 4
  %29 = call i32 @cpu_to_le32(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %34 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %91

37:                                               ; preds = %27
  %38 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %39 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HT_CHANNEL_WIDTH_40, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = call i32 @BIT(i32 27)
  %46 = call i32 @cpu_to_le32(i32 %45)
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ %46, %44 ], [ 0, %47 ]
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %54 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = call i32 @cpu_to_le32(i32 268435456)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %90

63:                                               ; preds = %48
  %64 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %65 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = call i32 @cpu_to_le32(i32 536870912)
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %89

74:                                               ; preds = %63
  %75 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %76 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %81, align 4
  br label %88

83:                                               ; preds = %74
  %84 = call i32 @cpu_to_le32(i32 805306368)
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %80
  br label %89

89:                                               ; preds = %88, %69
  br label %90

90:                                               ; preds = %89, %58
  br label %91

91:                                               ; preds = %90, %27
  br label %92

92:                                               ; preds = %91, %22
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
