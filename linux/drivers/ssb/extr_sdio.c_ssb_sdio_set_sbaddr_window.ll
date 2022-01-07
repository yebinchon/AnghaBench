; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_sdio.c_ssb_sdio_set_sbaddr_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_sdio.c_ssb_sdio_set_sbaddr_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }

@SBSDIO_FUNC1_SBADDRLOW = common dso_local global i32 0, align 4
@SBSDIO_SBADDRLOW_MASK = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_SBADDRMID = common dso_local global i32 0, align 4
@SBSDIO_SBADDRMID_MASK = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_SBADDRHIGH = common dso_local global i32 0, align 4
@SBSDIO_SBADDRHIGH_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"failed to set address window to 0x%08x, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*, i32)* @ssb_sdio_set_sbaddr_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_sdio_set_sbaddr_window(%struct.ssb_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %7 = load i32, i32* @SBSDIO_FUNC1_SBADDRLOW, align 4
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 8
  %10 = load i32, i32* @SBSDIO_SBADDRLOW_MASK, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @ssb_sdio_writeb(%struct.ssb_bus* %6, i32 %7, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %18 = load i32, i32* @SBSDIO_FUNC1_SBADDRMID, align 4
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 16
  %21 = load i32, i32* @SBSDIO_SBADDRMID_MASK, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @ssb_sdio_writeb(%struct.ssb_bus* %17, i32 %18, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %42

27:                                               ; preds = %16
  %28 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %29 = load i32, i32* @SBSDIO_FUNC1_SBADDRHIGH, align 4
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 24
  %32 = load i32, i32* @SBSDIO_SBADDRHIGH_MASK, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @ssb_sdio_writeb(%struct.ssb_bus* %28, i32 %29, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %42

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %41 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %37, %26, %15
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %47 = call i32 @ssb_sdio_dev(%struct.ssb_bus* %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ssb_sdio_writeb(%struct.ssb_bus*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ssb_sdio_dev(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
