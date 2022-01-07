; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDvSafeResetTx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDvSafeResetTx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32, i32, %struct.vnt_tx_desc*, %struct.TYPE_3__, %struct.vnt_tx_desc*, i64*, %struct.vnt_tx_desc**, %struct.vnt_tx_desc** }
%struct.TYPE_3__ = type { i32* }
%struct.vnt_tx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@TYPE_MAXTD = common dso_local global i32 0, align 4
@OWNED_BY_HOST = common dso_local global i8* null, align 8
@TYPE_TXDMA0 = common dso_local global i32 0, align 4
@TYPE_AC0DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARDvSafeResetTx(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnt_tx_desc*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %5 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 6
  %7 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %6, align 8
  %8 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %7, i64 0
  %9 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %10 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %9, i32 0, i32 9
  %11 = load %struct.vnt_tx_desc**, %struct.vnt_tx_desc*** %10, align 8
  %12 = getelementptr inbounds %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %11, i64 0
  store %struct.vnt_tx_desc* %8, %struct.vnt_tx_desc** %12, align 8
  %13 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 6
  %15 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %14, align 8
  %16 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %15, i64 0
  %17 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %18 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %17, i32 0, i32 8
  %19 = load %struct.vnt_tx_desc**, %struct.vnt_tx_desc*** %18, align 8
  %20 = getelementptr inbounds %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %19, i64 0
  store %struct.vnt_tx_desc* %16, %struct.vnt_tx_desc** %20, align 8
  %21 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %22 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %21, i32 0, i32 4
  %23 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %22, align 8
  %24 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %23, i64 0
  %25 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %26 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %25, i32 0, i32 9
  %27 = load %struct.vnt_tx_desc**, %struct.vnt_tx_desc*** %26, align 8
  %28 = getelementptr inbounds %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %27, i64 1
  store %struct.vnt_tx_desc* %24, %struct.vnt_tx_desc** %28, align 8
  %29 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 4
  %31 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %30, align 8
  %32 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %31, i64 0
  %33 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %34 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %33, i32 0, i32 8
  %35 = load %struct.vnt_tx_desc**, %struct.vnt_tx_desc*** %34, align 8
  %36 = getelementptr inbounds %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %35, i64 1
  store %struct.vnt_tx_desc* %32, %struct.vnt_tx_desc** %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %48, %1
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @TYPE_MAXTD, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %43 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %42, i32 0, i32 7
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %37

51:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %72, %51
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %55 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %53, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %52
  %62 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %63 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %62, i32 0, i32 6
  %64 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %64, i64 %66
  store %struct.vnt_tx_desc* %67, %struct.vnt_tx_desc** %4, align 8
  %68 = load i8*, i8** @OWNED_BY_HOST, align 8
  %69 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %4, align 8
  %70 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %52

75:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %96, %75
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %79 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ult i32 %77, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %76
  %86 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %87 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %86, i32 0, i32 4
  %88 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %88, i64 %90
  store %struct.vnt_tx_desc* %91, %struct.vnt_tx_desc** %4, align 8
  %92 = load i8*, i8** @OWNED_BY_HOST, align 8
  %93 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %4, align 8
  %94 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %3, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %76

99:                                               ; preds = %76
  %100 = load i32, i32* @TYPE_TXDMA0, align 4
  %101 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %102 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %103 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @MACvSetCurrTXDescAddr(i32 %100, %struct.vnt_private* %101, i32 %104)
  %106 = load i32, i32* @TYPE_AC0DMA, align 4
  %107 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %108 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %109 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @MACvSetCurrTXDescAddr(i32 %106, %struct.vnt_private* %107, i32 %110)
  %112 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %113 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %116 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @MACvSetCurrBCNTxDescAddr(i32 %114, i32 %117)
  ret void
}

declare dso_local i32 @MACvSetCurrTXDescAddr(i32, %struct.vnt_private*, i32) #1

declare dso_local i32 @MACvSetCurrBCNTxDescAddr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
