; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_sdio.c_rsi_sdio_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_sdio.c_rsi_sdio_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { i64 }
%struct.rsi_91x_sdiodev = type { i64, i32 }

@current = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsi_sdio_read_register(%struct.rsi_hw* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.rsi_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.rsi_91x_sdiodev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rsi_hw* %0, %struct.rsi_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %10 = load %struct.rsi_hw*, %struct.rsi_hw** %4, align 8
  %11 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.rsi_91x_sdiodev*
  store %struct.rsi_91x_sdiodev* %13, %struct.rsi_91x_sdiodev** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %15 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @current, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %24 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sdio_claim_host(i32 %25)
  br label %27

27:                                               ; preds = %22, %3
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %32 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @sdio_f0_readb(i32 %33, i32 %34, i32* %9)
  %36 = load i64*, i64** %6, align 8
  store i64 %35, i64* %36, align 8
  br label %44

37:                                               ; preds = %27
  %38 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %39 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @sdio_readb(i32 %40, i32 %41, i32* %9)
  %43 = load i64*, i64** %6, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %46 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @current, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %7, align 8
  %55 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sdio_release_host(i32 %56)
  br label %58

58:                                               ; preds = %53, %44
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i64 @sdio_f0_readb(i32, i32, i32*) #1

declare dso_local i64 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
