; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_uw2453.c_uw2453_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_uw2453.c_uw2453_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_ioreq16 = type { i32, i32 }
%struct.zd_rf = type { i32 }
%struct.zd_chip = type { i32 }
%struct.TYPE_2__ = type { i32 }

@uw2453_set_channel.ioreqs = internal constant [6 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 129, i32 48 }, %struct.zd_ioreq16 { i32 128, i32 48 }, %struct.zd_ioreq16 { i32 130, i32 88 }, %struct.zd_ioreq16 { i32 133, i32 240 }, %struct.zd_ioreq16 { i32 132, i32 27 }, %struct.zd_ioreq16 { i32 131, i32 88 }], align 16
@UW2453_AUTOCAL_VCO_CFG = common dso_local global i32 0, align 4
@uw2453_std_vco_cfg = common dso_local global i32** null, align 8
@ZD_CR203 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_rf*, i32)* @uw2453_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uw2453_set_channel(%struct.zd_rf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_rf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %12 = call %struct.TYPE_2__* @UW2453_PRIV(%struct.zd_rf* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %19 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %18)
  store %struct.zd_chip* %19, %struct.zd_chip** %10, align 8
  %20 = load %struct.zd_chip*, %struct.zd_chip** %10, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @uw2453_synth_set_channel(%struct.zd_chip* %20, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %78

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @UW2453_AUTOCAL_VCO_CFG, align 4
  store i32 %32, i32* %7, align 4
  br label %43

33:                                               ; preds = %28
  %34 = load i32**, i32*** @uw2453_std_vco_cfg, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @CHAN_TO_PAIRIDX(i32 %39)
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %33, %31
  %44 = load %struct.zd_chip*, %struct.zd_chip** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @uw2453_write_vco_cfg(%struct.zd_chip* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %78

51:                                               ; preds = %43
  %52 = load %struct.zd_chip*, %struct.zd_chip** %10, align 8
  %53 = call i32 @uw2453_init_mode(%struct.zd_chip* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %78

58:                                               ; preds = %51
  %59 = load %struct.zd_chip*, %struct.zd_chip** %10, align 8
  %60 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([6 x %struct.zd_ioreq16], [6 x %struct.zd_ioreq16]* @uw2453_set_channel.ioreqs, i64 0, i64 0))
  %61 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %59, %struct.zd_ioreq16* getelementptr inbounds ([6 x %struct.zd_ioreq16], [6 x %struct.zd_ioreq16]* @uw2453_set_channel.ioreqs, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %78

66:                                               ; preds = %58
  %67 = load %struct.zd_chip*, %struct.zd_chip** %10, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @uw2453_set_tx_gain_level(%struct.zd_chip* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %78

74:                                               ; preds = %66
  %75 = load %struct.zd_chip*, %struct.zd_chip** %10, align 8
  %76 = load i32, i32* @ZD_CR203, align 4
  %77 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %75, i32 6, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %72, %64, %56, %49, %26
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_2__* @UW2453_PRIV(%struct.zd_rf*) #1

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @uw2453_synth_set_channel(%struct.zd_chip*, i32, i32) #1

declare dso_local i64 @CHAN_TO_PAIRIDX(i32) #1

declare dso_local i32 @uw2453_write_vco_cfg(%struct.zd_chip*, i32) #1

declare dso_local i32 @uw2453_init_mode(%struct.zd_chip*) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

declare dso_local i32 @uw2453_set_tx_gain_level(%struct.zd_chip*, i32) #1

declare dso_local i32 @zd_iowrite16_locked(%struct.zd_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
