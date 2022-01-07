; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_hal_EfuseFixHeaderProcess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_hal_EfuseFixHeaderProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pgpkt = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, %struct.pgpkt*, i64*)* @hal_EfuseFixHeaderProcess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal_EfuseFixHeaderProcess(%struct.adapter* %0, i32 %1, %struct.pgpkt* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pgpkt*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.pgpkt* %2, %struct.pgpkt** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64*, i64** %9, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %17 = call i32 @memset(i32* %16, i32 255, i32 8)
  %18 = load %struct.adapter*, %struct.adapter** %6, align 8
  %19 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %20 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %23 = call i64 @Efuse_PgPacketRead(%struct.adapter* %18, i32 %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %4
  %26 = load %struct.adapter*, %struct.adapter** %6, align 8
  %27 = load i64, i64* %12, align 8
  %28 = add nsw i64 %27, 1
  %29 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %30 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %33 = call i32 @Efuse_WordEnableDataWrite(%struct.adapter* %26, i64 %28, i32 %31, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 15
  br i1 %35, label %36, label %51

36:                                               ; preds = %25
  %37 = load %struct.adapter*, %struct.adapter** %6, align 8
  %38 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %39 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %43 = call i64 @Efuse_PgPacketWrite(%struct.adapter* %37, i32 %40, i32 %41, i32* %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %73

47:                                               ; preds = %36
  %48 = load %struct.adapter*, %struct.adapter** %6, align 8
  %49 = call i64 @Efuse_GetCurrentSize(%struct.adapter* %48)
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %47
  br label %60

51:                                               ; preds = %25
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %54 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %52, %57
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %51, %50
  br label %70

61:                                               ; preds = %4
  %62 = load i64, i64* %12, align 8
  %63 = load %struct.pgpkt*, %struct.pgpkt** %8, align 8
  %64 = getelementptr inbounds %struct.pgpkt, %struct.pgpkt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %62, %67
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %61, %60
  %71 = load i64, i64* %12, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  store i32 1, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %46
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @Efuse_PgPacketRead(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @Efuse_WordEnableDataWrite(%struct.adapter*, i64, i32, i32*) #1

declare dso_local i64 @Efuse_PgPacketWrite(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i64 @Efuse_GetCurrentSize(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
