; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_rtl8188e_fill_fake_txdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_xmit.c_rtl8188e_fill_fake_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.tx_desc = type { i32, i32, i32, i32, i32 }

@TXDESC_SIZE = common dso_local global i32 0, align 4
@OWN = common dso_local global i32 0, align 4
@FSG = common dso_local global i32 0, align 4
@LSG = common dso_local global i32 0, align 4
@OFFSET_SZ = common dso_local global i32 0, align 4
@OFFSET_SHT = common dso_local global i32 0, align 4
@QSLT_MGNT = common dso_local global i32 0, align 4
@QSEL_SHT = common dso_local global i32 0, align 4
@NAVUSEHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8188e_fill_fake_txdesc(%struct.adapter* %0, i64* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tx_desc*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = bitcast i64* %12 to %struct.tx_desc*
  store %struct.tx_desc* %13, %struct.tx_desc** %11, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i32, i32* @TXDESC_SIZE, align 4
  %16 = call i32 @memset(i64* %14, i32 0, i32 %15)
  %17 = load i32, i32* @OWN, align 4
  %18 = load i32, i32* @FSG, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @LSG, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %24 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @TXDESC_SIZE, align 4
  %28 = load i32, i32* @OFFSET_SZ, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @OFFSET_SHT, align 4
  %31 = shl i32 %29, %30
  %32 = and i32 %31, 16711680
  %33 = call i32 @cpu_to_le32(i32 %32)
  %34 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %35 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 65535
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %42 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @QSLT_MGNT, align 4
  %46 = load i32, i32* @QSEL_SHT, align 4
  %47 = shl i32 %45, %46
  %48 = and i32 %47, 7936
  %49 = call i32 @cpu_to_le32(i32 %48)
  %50 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %51 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %5
  %57 = load i32, i32* @NAVUSEHDR, align 4
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %60 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %75

63:                                               ; preds = %5
  %64 = call i32 @BIT(i32 7)
  %65 = call i32 @cpu_to_le32(i32 %64)
  %66 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %67 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = call i32 @cpu_to_le32(i32 -2147483648)
  %71 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %72 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %63, %56
  %76 = load i64, i64* %10, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = call i32 @BIT(i32 23)
  %80 = call i32 @cpu_to_le32(i32 %79)
  %81 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %82 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %75
  %86 = call i32 @BIT(i32 8)
  %87 = call i32 @cpu_to_le32(i32 %86)
  %88 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %89 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %93 = call i32 @rtl8188eu_cal_txdesc_chksum(%struct.tx_desc* %92)
  ret void
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8188eu_cal_txdesc_chksum(%struct.tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
