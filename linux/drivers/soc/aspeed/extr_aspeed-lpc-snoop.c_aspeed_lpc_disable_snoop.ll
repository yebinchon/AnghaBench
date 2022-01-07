; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_aspeed_lpc_disable_snoop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_aspeed_lpc_disable_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_lpc_snoop = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HICR5 = common dso_local global i32 0, align 4
@HICR5_EN_SNP0W = common dso_local global i32 0, align 4
@HICR5_ENINT_SNP0W = common dso_local global i32 0, align 4
@HICR5_EN_SNP1W = common dso_local global i32 0, align 4
@HICR5_ENINT_SNP1W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_lpc_snoop*, i32)* @aspeed_lpc_disable_snoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_lpc_disable_snoop(%struct.aspeed_lpc_snoop* %0, i32 %1) #0 {
  %3 = alloca %struct.aspeed_lpc_snoop*, align 8
  %4 = alloca i32, align 4
  store %struct.aspeed_lpc_snoop* %0, %struct.aspeed_lpc_snoop** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %24 [
    i32 0, label %6
    i32 1, label %15
  ]

6:                                                ; preds = %2
  %7 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %3, align 8
  %8 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @HICR5, align 4
  %11 = load i32, i32* @HICR5_EN_SNP0W, align 4
  %12 = load i32, i32* @HICR5_ENINT_SNP0W, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %13, i32 0)
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %3, align 8
  %17 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @HICR5, align 4
  %20 = load i32, i32* @HICR5_EN_SNP1W, align 4
  %21 = load i32, i32* @HICR5_ENINT_SNP1W, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %22, i32 0)
  br label %25

24:                                               ; preds = %2
  br label %42

25:                                               ; preds = %15, %6
  %26 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %3, align 8
  %27 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @kfifo_free(i32* %32)
  %34 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %3, align 8
  %35 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @misc_deregister(i32* %40)
  br label %42

42:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @misc_deregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
