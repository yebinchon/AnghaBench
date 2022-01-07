; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_secmicappendbyte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_secmicappendbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_data*, i64)* @secmicappendbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secmicappendbyte(%struct.mic_data* %0, i64 %1) #0 {
  %3 = alloca %struct.mic_data*, align 8
  %4 = alloca i64, align 8
  store %struct.mic_data* %0, %struct.mic_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %8 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 8, %9
  %11 = shl i32 %6, %10
  %12 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %13 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %17 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %21 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %103

24:                                               ; preds = %2
  %25 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %26 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %29 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %33 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ROL32(i32 %34, i32 17)
  %36 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %37 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %41 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %44 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %48 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -16711936
  %51 = lshr i32 %50, 8
  %52 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %53 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 16711935
  %56 = shl i32 %55, 8
  %57 = or i32 %51, %56
  %58 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %59 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %63 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %66 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %70 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ROL32(i32 %71, i32 3)
  %73 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %74 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %78 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %81 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %85 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ROR32(i32 %86, i32 2)
  %88 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %89 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %93 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %96 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %100 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  %101 = load %struct.mic_data*, %struct.mic_data** %3, align 8
  %102 = getelementptr inbounds %struct.mic_data, %struct.mic_data* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %24, %2
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
