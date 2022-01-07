; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_aspeed_lpc_snoop_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_aspeed_lpc_snoop_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_lpc_snoop = type { i32*, i32 }

@HICR6 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@HICR6_STR_SNP0W = common dso_local global i32 0, align 4
@HICR6_STR_SNP1W = common dso_local global i32 0, align 4
@SNPWDR = common dso_local global i32 0, align 4
@SNPWDR_CH0_MASK = common dso_local global i32 0, align 4
@SNPWDR_CH0_SHIFT = common dso_local global i32 0, align 4
@SNPWDR_CH1_MASK = common dso_local global i32 0, align 4
@SNPWDR_CH1_SHIFT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @aspeed_lpc_snoop_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_lpc_snoop_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aspeed_lpc_snoop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.aspeed_lpc_snoop*
  store %struct.aspeed_lpc_snoop* %12, %struct.aspeed_lpc_snoop** %6, align 8
  %13 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %14 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HICR6, align 4
  %17 = call i64 @regmap_read(i32 %15, i32 %16, i32* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %78

21:                                               ; preds = %2
  %22 = load i32, i32* @HICR6_STR_SNP0W, align 4
  %23 = load i32, i32* @HICR6_STR_SNP1W, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %78

31:                                               ; preds = %21
  %32 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %33 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HICR6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @regmap_write(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %39 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SNPWDR, align 4
  %42 = call i64 @regmap_read(i32 %40, i32 %41, i32* %8)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @HICR6_STR_SNP0W, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %31
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SNPWDR_CH0_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @SNPWDR_CH0_SHIFT, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %54 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @put_fifo_with_discard(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %47, %31
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @HICR6_STR_SNP1W, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SNPWDR_CH1_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @SNPWDR_CH1_SHIFT, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %71 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @put_fifo_with_discard(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %64, %59
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %29, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @put_fifo_with_discard(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
