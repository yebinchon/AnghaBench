; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDbSetBeaconPeriod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDbSetBeaconPeriod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i16, i64 }

@MAC_REG_BI = common dso_local global i64 0, align 8
@MAC_REG_NEXTTBTT = common dso_local global i64 0, align 8
@MAC_REG_TFTCTL = common dso_local global i32 0, align 4
@TFTCTL_TBTTSYNCEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARDbSetBeaconPeriod(%struct.vnt_private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i16 %1, i16* %4, align 2
  store i32 0, i32* %5, align 4
  %6 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %7 = call i32 @CARDbGetCurrentTSF(%struct.vnt_private* %6, i32* %5)
  %8 = load i32, i32* %5, align 4
  %9 = load i16, i16* %4, align 2
  %10 = call i32 @CARDqGetNextTBTT(i32 %8, i16 zeroext %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %12 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAC_REG_BI, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i16, i16* %4, align 2
  %17 = call i32 @VNSvOutPortW(i64 %15, i16 zeroext %16)
  %18 = load i16, i16* %4, align 2
  %19 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %20 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %19, i32 0, i32 0
  store i16 %18, i16* %20, align 8
  %21 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %22 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAC_REG_NEXTTBTT, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @VNSvOutPortD(i64 %25, i32 %26)
  %28 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %29 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAC_REG_NEXTTBTT, align 8
  %32 = add nsw i64 %30, %31
  %33 = add nsw i64 %32, 4
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 32
  %36 = call i32 @VNSvOutPortD(i64 %33, i32 %35)
  %37 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %38 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @MAC_REG_TFTCTL, align 4
  %41 = load i32, i32* @TFTCTL_TBTTSYNCEN, align 4
  %42 = call i32 @MACvRegBitsOn(i64 %39, i32 %40, i32 %41)
  ret i32 1
}

declare dso_local i32 @CARDbGetCurrentTSF(%struct.vnt_private*, i32*) #1

declare dso_local i32 @CARDqGetNextTBTT(i32, i16 zeroext) #1

declare dso_local i32 @VNSvOutPortW(i64, i16 zeroext) #1

declare dso_local i32 @VNSvOutPortD(i64, i32) #1

declare dso_local i32 @MACvRegBitsOn(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
