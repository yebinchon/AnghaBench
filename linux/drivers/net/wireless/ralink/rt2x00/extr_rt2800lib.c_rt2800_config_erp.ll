; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_erp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i64, i32 }

@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@AUTO_RSP_CFG = common dso_local global i32 0, align 4
@AUTO_RSP_CFG_AR_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@OFDM_PROT_CFG = common dso_local global i32 0, align 4
@OFDM_PROT_CFG_PROTECT_CTRL = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@LEGACY_BASIC_RATE = common dso_local global i32 0, align 4
@HT_BASIC_RATE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BKOFF_SLOT_CFG = common dso_local global i32 0, align 4
@BKOFF_SLOT_CFG_SLOT_TIME = common dso_local global i32 0, align 4
@XIFS_TIME_CFG = common dso_local global i32 0, align 4
@XIFS_TIME_CFG_EIFS = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BCN_TIME_CFG = common dso_local global i32 0, align 4
@BCN_TIME_CFG_BEACON_INTERVAL = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_config_erp(%struct.rt2x00_dev* %0, %struct.rt2x00lib_erp* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rt2x00lib_erp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rt2x00lib_erp* %1, %struct.rt2x00lib_erp** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %14 = load i32, i32* @AUTO_RSP_CFG, align 4
  %15 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @AUTO_RSP_CFG_AR_PREAMBLE, align 4
  %17 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %18 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @rt2x00_set_field32(i32* %7, i32 %16, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %26 = load i32, i32* @AUTO_RSP_CFG, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %12, %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %36 = load i32, i32* @OFDM_PROT_CFG, align 4
  %37 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @OFDM_PROT_CFG_PROTECT_CTRL, align 4
  %39 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %40 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 2, i32 0
  %45 = call i32 @rt2x00_set_field32(i32* %7, i32 %38, i32 %44)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %47 = load i32, i32* @OFDM_PROT_CFG, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %34, %29
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %57 = load i32, i32* @LEGACY_BASIC_RATE, align 4
  %58 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %59 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 4080, %60
  %62 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %56, i32 %57, i32 %61)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %64 = load i32, i32* @HT_BASIC_RATE, align 4
  %65 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %63, i32 %64, i32 32771)
  br label %66

66:                                               ; preds = %55, %50
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %66
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %73 = load i32, i32* @BKOFF_SLOT_CFG, align 4
  %74 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* @BKOFF_SLOT_CFG_SLOT_TIME, align 4
  %76 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %77 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rt2x00_set_field32(i32* %7, i32 %75, i32 %78)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %81 = load i32, i32* @BKOFF_SLOT_CFG, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %80, i32 %81, i32 %82)
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %85 = load i32, i32* @XIFS_TIME_CFG, align 4
  %86 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %84, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @XIFS_TIME_CFG_EIFS, align 4
  %88 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %89 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @rt2x00_set_field32(i32* %7, i32 %87, i32 %90)
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %93 = load i32, i32* @XIFS_TIME_CFG, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %71, %66
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %103 = load i32, i32* @BCN_TIME_CFG, align 4
  %104 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %102, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @BCN_TIME_CFG_BEACON_INTERVAL, align 4
  %106 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %107 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 16
  %110 = call i32 @rt2x00_set_field32(i32* %7, i32 %105, i32 %109)
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %112 = load i32, i32* @BCN_TIME_CFG, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %101, %96
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @BSS_CHANGED_HT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %122 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %123 = call i32 @rt2800_config_ht_opmode(%struct.rt2x00_dev* %121, %struct.rt2x00lib_erp* %122)
  br label %124

124:                                              ; preds = %120, %115
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_config_ht_opmode(%struct.rt2x00_dev*, %struct.rt2x00lib_erp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
