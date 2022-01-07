; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_hal_EfusePgPacketWrite1ByteHeader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_hal_EfusePgPacketWrite1ByteHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pgpkt = type { i32, i32, i32 }

@EFUSE_REPEAT_THRESHOLD_ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32*, %struct.pgpkt*)* @hal_EfusePgPacketWrite1ByteHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal_EfusePgPacketWrite1ByteHeader(%struct.adapter* %0, i32 %1, i32* %2, %struct.pgpkt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pgpkt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pgpkt, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.pgpkt* %3, %struct.pgpkt** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.pgpkt*, %struct.pgpkt** %9, align 8
  %19 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 4
  %22 = and i32 %21, 240
  %23 = load %struct.pgpkt*, %struct.pgpkt** %9, align 8
  %24 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.adapter*, %struct.adapter** %6, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @efuse_OneByteWrite(%struct.adapter* %27, i32 %28, i32 %29)
  %31 = load %struct.adapter*, %struct.adapter** %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @efuse_OneByteRead(%struct.adapter* %31, i32 %32, i32* %12)
  br label %34

34:                                               ; preds = %44, %4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = sext i32 %38 to i64
  %41 = load i64, i64* @EFUSE_REPEAT_THRESHOLD_, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %79

44:                                               ; preds = %37
  %45 = load %struct.adapter*, %struct.adapter** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @efuse_OneByteWrite(%struct.adapter* %45, i32 %46, i32 %47)
  %49 = load %struct.adapter*, %struct.adapter** %6, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @efuse_OneByteRead(%struct.adapter* %49, i32 %50, i32* %12)
  br label %34

52:                                               ; preds = %34
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %75

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = ashr i32 %58, 4
  %60 = and i32 %59, 15
  %61 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %15, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, 15
  %64 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %15, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %15, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @Efuse_CalculateWordCnts(i32 %66)
  %68 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %15, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  %69 = load %struct.adapter*, %struct.adapter** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @hal_EfuseFixHeaderProcess(%struct.adapter* %69, i32 %70, %struct.pgpkt* %15, i32* %13)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %79

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %56
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %73, %43
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @efuse_OneByteWrite(%struct.adapter*, i32, i32) #1

declare dso_local i32 @efuse_OneByteRead(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @Efuse_CalculateWordCnts(i32) #1

declare dso_local i32 @hal_EfuseFixHeaderProcess(%struct.adapter*, i32, %struct.pgpkt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
