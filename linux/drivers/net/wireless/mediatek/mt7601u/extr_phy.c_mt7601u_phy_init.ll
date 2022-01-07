; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i8** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MT_RF_PA_MODE_CFG0 = common dso_local global i32 0, align 4
@MT_RF_PA_MODE_CFG1 = common dso_local global i32 0, align 4
@rf_central = common dso_local global i32 0, align 4
@rf_channel = common dso_local global i32 0, align 4
@rf_vga = common dso_local global i32 0, align 4
@mt7601u_phy_calibrate = common dso_local global i32 0, align 4
@mt7601u_phy_freq_cal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_phy_init(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %5 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %6 = load i32, i32* @MT_RF_PA_MODE_CFG0, align 4
  %7 = call i8* @mt7601u_rr(%struct.mt7601u_dev* %5, i32 %6)
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %8, i32 0, i32 4
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  store i8* %7, i8** %11, align 8
  %12 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %13 = load i32, i32* @MT_RF_PA_MODE_CFG1, align 4
  %14 = call i8* @mt7601u_rr(%struct.mt7601u_dev* %12, i32 %13)
  %15 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %15, i32 0, i32 4
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* %14, i8** %18, align 8
  %19 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %20 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mt7601u_rf_wr(%struct.mt7601u_dev* %19, i32 0, i32 12, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %79

30:                                               ; preds = %1
  %31 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %32 = load i32, i32* @rf_central, align 4
  %33 = load i32, i32* @rf_central, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = call i32 @mt7601u_write_reg_pairs(%struct.mt7601u_dev* %31, i32 0, i32 %32, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %79

40:                                               ; preds = %30
  %41 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %42 = load i32, i32* @rf_channel, align 4
  %43 = load i32, i32* @rf_channel, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = call i32 @mt7601u_write_reg_pairs(%struct.mt7601u_dev* %41, i32 0, i32 %42, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %79

50:                                               ; preds = %40
  %51 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %52 = load i32, i32* @rf_vga, align 4
  %53 = load i32, i32* @rf_vga, align 4
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = call i32 @mt7601u_write_reg_pairs(%struct.mt7601u_dev* %51, i32 0, i32 %52, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %79

60:                                               ; preds = %50
  %61 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %62 = call i32 @mt7601u_init_cal(%struct.mt7601u_dev* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %79

67:                                               ; preds = %60
  %68 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %69 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %68, i32 0, i32 0
  store i32 100, i32* %69, align 8
  %70 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %71 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %70, i32 0, i32 2
  %72 = load i32, i32* @mt7601u_phy_calibrate, align 4
  %73 = call i32 @INIT_DELAYED_WORK(i32* %71, i32 %72)
  %74 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %75 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* @mt7601u_phy_freq_cal, align 4
  %78 = call i32 @INIT_DELAYED_WORK(i32* %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %67, %65, %58, %48, %38, %28
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i8* @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_rf_wr(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7601u_write_reg_pairs(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mt7601u_init_cal(%struct.mt7601u_dev*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
