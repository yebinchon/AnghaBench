; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32-sqi.c_pic32_sqi_enable_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32-sqi.c_pic32_sqi_enable_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_sqi = type { i64 }

@PESQI_DMAERR = common dso_local global i32 0, align 4
@PESQI_BDDONE = common dso_local global i32 0, align 4
@PESQI_PKTCOMP = common dso_local global i32 0, align 4
@PESQI_INT_ENABLE_REG = common dso_local global i64 0, align 8
@PESQI_INT_SIGEN_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pic32_sqi*)* @pic32_sqi_enable_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_sqi_enable_int(%struct.pic32_sqi* %0) #0 {
  %2 = alloca %struct.pic32_sqi*, align 8
  %3 = alloca i32, align 4
  store %struct.pic32_sqi* %0, %struct.pic32_sqi** %2, align 8
  %4 = load i32, i32* @PESQI_DMAERR, align 4
  %5 = load i32, i32* @PESQI_BDDONE, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @PESQI_PKTCOMP, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %11 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PESQI_INT_ENABLE_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 %9, i64 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.pic32_sqi*, %struct.pic32_sqi** %2, align 8
  %18 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PESQI_INT_SIGEN_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
