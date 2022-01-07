; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_sdio.c_ssb_sdio_scan_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_sdio.c_ssb_sdio_scan_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"%04X:%04X > %08x, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_sdio_scan_read32(%struct.ssb_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %8 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sdio_claim_host(i32 %9)
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %12 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @sdio_readl(i32 %13, i32 %14, i32* %6)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sdio_release_host(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %25 = call i32 @ssb_sdio_dev(%struct.ssb_bus* %24)
  %26 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %27 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 16
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %23, %2
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_readl(i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ssb_sdio_dev(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
