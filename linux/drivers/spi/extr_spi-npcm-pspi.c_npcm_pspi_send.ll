; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm_pspi = type { i32, i32*, i64, i32 }

@NPCM_PSPI_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.npcm_pspi*)* @npcm_pspi_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm_pspi_send(%struct.npcm_pspi* %0) #0 {
  %2 = alloca %struct.npcm_pspi*, align 8
  %3 = alloca i32, align 4
  store %struct.npcm_pspi* %0, %struct.npcm_pspi** %2, align 8
  %4 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %5 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @bytes_per_word(i32 %6)
  %8 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %9 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @min(i32 %7, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %14 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %18 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %55

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  switch i32 %23, label %46 [
    i32 1, label %24
    i32 2, label %35
  ]

24:                                               ; preds = %22
  %25 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %26 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @NPCM_PSPI_DATA, align 8
  %30 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %31 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @iowrite8(i32 %28, i64 %33)
  br label %48

35:                                               ; preds = %22
  %36 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %37 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @NPCM_PSPI_DATA, align 8
  %41 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %42 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @iowrite16(i32 %39, i64 %44)
  br label %48

46:                                               ; preds = %22
  %47 = call i32 @WARN_ON_ONCE(i32 1)
  br label %55

48:                                               ; preds = %35, %24
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %51 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = sext i32 %49 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %51, align 8
  br label %55

55:                                               ; preds = %48, %46, %21
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bytes_per_word(i32) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
