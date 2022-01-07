; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_sdio.c_ssb_sdio_read8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_sdio.c_ssb_sdio_read8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32, i32 }

@SBSDIO_SB_OFT_ADDR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%04X:%04X > %02x, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*, i32)* @ssb_sdio_read8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_sdio_read8(%struct.ssb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %9 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %8, i32 0, i32 0
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %9, align 8
  store %struct.ssb_bus* %10, %struct.ssb_bus** %5, align 8
  store i32 255, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %12 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sdio_claim_host(i32 %13)
  %15 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %16 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %17 = call i32 @ssb_sdio_switch_core(%struct.ssb_bus* %15, %struct.ssb_device* %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %23 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 65535
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @SBSDIO_SB_OFT_ADDR_MASK, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %32 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @sdio_readb(i32 %33, i32 %34, i32* %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %21
  %39 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %40 = call i32 @ssb_sdio_dev(%struct.ssb_bus* %39)
  %41 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %42 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 16
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %21
  br label %50

50:                                               ; preds = %49, %20
  %51 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %52 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sdio_release_host(i32 %53)
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ssb_sdio_switch_core(%struct.ssb_bus*, %struct.ssb_device*) #1

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ssb_sdio_dev(%struct.ssb_bus*) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
