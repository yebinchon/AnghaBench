; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_fill_txdesc_sectype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_fill_txdesc_sectype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_attrib = type { i32, i32 }
%struct.tx_desc = type { i32, i32 }

@SEC_TYPE_SHT = common dso_local global i32 0, align 4
@AMPDU_DENSITY_SHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkt_attrib*, %struct.tx_desc*)* @fill_txdesc_sectype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_txdesc_sectype(%struct.pkt_attrib* %0, %struct.tx_desc* %1) #0 {
  %3 = alloca %struct.pkt_attrib*, align 8
  %4 = alloca %struct.tx_desc*, align 8
  store %struct.pkt_attrib* %0, %struct.pkt_attrib** %3, align 8
  store %struct.tx_desc* %1, %struct.tx_desc** %4, align 8
  %5 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %6 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %69

9:                                                ; preds = %2
  %10 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %11 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %69, label %14

14:                                               ; preds = %9
  %15 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %16 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %67 [
    i32 128, label %18
    i32 129, label %18
    i32 131, label %34
    i32 130, label %34
    i32 133, label %50
    i32 132, label %66
  ]

18:                                               ; preds = %14, %14
  %19 = load i32, i32* @SEC_TYPE_SHT, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %20, 12582912
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = load %struct.tx_desc*, %struct.tx_desc** %4, align 8
  %24 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @AMPDU_DENSITY_SHT, align 4
  %28 = shl i32 7, %27
  %29 = call i32 @cpu_to_le32(i32 %28)
  %30 = load %struct.tx_desc*, %struct.tx_desc** %4, align 8
  %31 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %68

34:                                               ; preds = %14, %14
  %35 = load i32, i32* @SEC_TYPE_SHT, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %36, 12582912
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load %struct.tx_desc*, %struct.tx_desc** %4, align 8
  %40 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @AMPDU_DENSITY_SHT, align 4
  %44 = shl i32 7, %43
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = load %struct.tx_desc*, %struct.tx_desc** %4, align 8
  %47 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %68

50:                                               ; preds = %14
  %51 = load i32, i32* @SEC_TYPE_SHT, align 4
  %52 = shl i32 3, %51
  %53 = and i32 %52, 12582912
  %54 = call i32 @cpu_to_le32(i32 %53)
  %55 = load %struct.tx_desc*, %struct.tx_desc** %4, align 8
  %56 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @AMPDU_DENSITY_SHT, align 4
  %60 = shl i32 7, %59
  %61 = call i32 @cpu_to_le32(i32 %60)
  %62 = load %struct.tx_desc*, %struct.tx_desc** %4, align 8
  %63 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %68

66:                                               ; preds = %14
  br label %67

67:                                               ; preds = %14, %66
  br label %68

68:                                               ; preds = %67, %50, %34, %18
  br label %69

69:                                               ; preds = %68, %9, %2
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
