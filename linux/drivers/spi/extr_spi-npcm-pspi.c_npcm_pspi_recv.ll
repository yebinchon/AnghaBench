; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm_pspi = type { i32, i32*, i64, i32 }

@NPCM_PSPI_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.npcm_pspi*)* @npcm_pspi_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm_pspi_recv(%struct.npcm_pspi* %0) #0 {
  %2 = alloca %struct.npcm_pspi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.npcm_pspi* %0, %struct.npcm_pspi** %2, align 8
  %5 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %6 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @bytes_per_word(i32 %7)
  %9 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %10 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @min(i32 %8, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %15 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %19 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %52

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  switch i32 %24, label %39 [
    i32 1, label %25
    i32 2, label %32
  ]

25:                                               ; preds = %23
  %26 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %27 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NPCM_PSPI_DATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @ioread8(i64 %30)
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %23
  %33 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %34 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NPCM_PSPI_DATA, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @ioread16(i64 %37)
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %23
  %40 = call i32 @WARN_ON_ONCE(i32 1)
  br label %52

41:                                               ; preds = %32, %25
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %44 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.npcm_pspi*, %struct.npcm_pspi** %2, align 8
  %48 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = sext i32 %46 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %48, align 8
  br label %52

52:                                               ; preds = %41, %39, %22
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bytes_per_word(i32) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
