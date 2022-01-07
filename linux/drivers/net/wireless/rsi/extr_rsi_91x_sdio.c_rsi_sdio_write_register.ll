; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_sdio.c_rsi_sdio_write_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_sdio.c_rsi_sdio_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { i64 }
%struct.rsi_91x_sdiodev = type { i64, i32 }

@current = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsi_sdio_write_register(%struct.rsi_hw* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.rsi_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.rsi_91x_sdiodev*, align 8
  %10 = alloca i32, align 4
  store %struct.rsi_hw* %0, %struct.rsi_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %11 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %12 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rsi_91x_sdiodev*
  store %struct.rsi_91x_sdiodev* %14, %struct.rsi_91x_sdiodev** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %9, align 8
  %16 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @current, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %9, align 8
  %25 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @sdio_claim_host(i32 %26)
  br label %28

28:                                               ; preds = %23, %4
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %9, align 8
  %33 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @sdio_f0_writeb(i32 %34, i64 %36, i32 %37, i32* %10)
  br label %47

39:                                               ; preds = %28
  %40 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %9, align 8
  %41 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @sdio_writeb(i32 %42, i64 %44, i32 %45, i32* %10)
  br label %47

47:                                               ; preds = %39, %31
  %48 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %9, align 8
  %49 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @current, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @likely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %9, align 8
  %58 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @sdio_release_host(i32 %59)
  br label %61

61:                                               ; preds = %56, %47
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_f0_writeb(i32, i64, i32, i32*) #1

declare dso_local i32 @sdio_writeb(i32, i64, i32, i32*) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
