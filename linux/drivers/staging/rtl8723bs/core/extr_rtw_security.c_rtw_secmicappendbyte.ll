; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_secmicappendbyte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_secmicappendbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_data = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_secmicappendbyte(%struct.mic_data* %0, i64 %1) #0 {
  %3 = alloca %struct.mic_data*, align 8
  %4 = alloca i64, align 8
  store %struct.mic_data* %0, %struct.mic_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %7 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = mul nsw i32 8, %8
  %10 = zext i32 %9 to i64
  %11 = shl i64 %5, %10
  %12 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %13 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = or i64 %14, %11
  store i64 %15, i64* %13, align 8
  %16 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %17 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %21 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %105

24:                                               ; preds = %2
  %25 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %26 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %29 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = xor i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %35 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ROL32(i32 %36, i32 17)
  %38 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %39 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = xor i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %43 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %46 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %50 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -16711936
  %53 = lshr i32 %52, 8
  %54 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %55 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 16711935
  %58 = shl i32 %57, 8
  %59 = or i32 %53, %58
  %60 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %61 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = xor i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %65 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %68 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %72 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ROL32(i32 %73, i32 3)
  %75 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %76 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = xor i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %80 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %83 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %87 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ROR32(i32 %88, i32 2)
  %90 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %91 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = xor i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %95 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %98 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %102 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %104 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %103, i32 0, i32 1
  store i32 0, i32* %104, align 8
  br label %105

105:                                              ; preds = %24, %2
  ret void
}

declare dso_local i32 @ROL32(i32, i32) #1

declare dso_local i32 @ROR32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
