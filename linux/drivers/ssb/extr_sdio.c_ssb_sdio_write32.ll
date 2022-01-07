; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_sdio.c_ssb_sdio_write32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_sdio.c_ssb_sdio_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32, i32, i32 }

@SBSDIO_SB_OFT_ADDR_MASK = common dso_local global i32 0, align 4
@SBSDIO_SB_ACCESS_2_4B_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%04X:%04X < %08x, error %d\0A\00", align 1
@SSB_QUIRK_SDIO_READ_AFTER_WRITE32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_device*, i32, i32)* @ssb_sdio_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_sdio_write32(%struct.ssb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssb_bus*, align 8
  %8 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %10 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %9, i32 0, i32 0
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %10, align 8
  store %struct.ssb_bus* %11, %struct.ssb_bus** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %13 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sdio_claim_host(i32 %14)
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %17 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %18 = call i32 @ssb_sdio_switch_core(%struct.ssb_bus* %16, %struct.ssb_device* %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %67

22:                                               ; preds = %3
  %23 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %24 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 65535
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @SBSDIO_SB_OFT_ADDR_MASK, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @SBSDIO_SB_ACCESS_2_4B_FLAG, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %36 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @sdio_writel(i32 %37, i32 %38, i32 %39, i32* %8)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %22
  %44 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %45 = call i32 @ssb_sdio_dev(%struct.ssb_bus* %44)
  %46 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %47 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 16
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %43, %22
  %55 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %56 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SSB_QUIRK_SDIO_READ_AFTER_WRITE32, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %63 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sdio_readl(i32 %64, i32 0, i32* %8)
  br label %66

66:                                               ; preds = %61, %54
  br label %67

67:                                               ; preds = %66, %21
  %68 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %69 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @sdio_release_host(i32 %70)
  ret void
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ssb_sdio_switch_core(%struct.ssb_bus*, %struct.ssb_device*) #1

declare dso_local i32 @sdio_writel(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ssb_sdio_dev(%struct.ssb_bus*) #1

declare dso_local i32 @sdio_readl(i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
