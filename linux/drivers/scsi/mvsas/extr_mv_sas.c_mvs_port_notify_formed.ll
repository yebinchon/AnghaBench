; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_port_notify_formed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_port_notify_formed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)* }
%struct.mvs_info = type { i32, %struct.mvs_port*, %struct.TYPE_3__* }
%struct.mvs_port = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.asd_sas_phy = type { i32, %struct.asd_sas_port*, %struct.mvs_phy*, %struct.sas_ha_struct* }
%struct.asd_sas_port = type { i32, %struct.mvs_port* }
%struct.mvs_phy = type { i32, i32, %struct.mvs_port* }
%struct.sas_ha_struct = type { i64, %struct.asd_sas_phy** }
%struct.mvs_prv_info = type { i32, %struct.mvs_info** }

@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"set wide port phy map %x\0A\00", align 1
@PORT_SSP_TRGT_MASK = common dso_local global i32 0, align 4
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_4__* null, align 8
@PHYR_PHY_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_sas_phy*, i32)* @mvs_port_notify_formed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_port_notify_formed(%struct.asd_sas_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_sas_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.mvs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mvs_phy*, align 8
  %10 = alloca %struct.asd_sas_port*, align 8
  %11 = alloca %struct.mvs_port*, align 8
  %12 = alloca i64, align 8
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %14 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %13, i32 0, i32 3
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %14, align 8
  store %struct.sas_ha_struct* %15, %struct.sas_ha_struct** %5, align 8
  store %struct.mvs_info* null, %struct.mvs_info** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %17 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %16, i32 0, i32 2
  %18 = load %struct.mvs_phy*, %struct.mvs_phy** %17, align 8
  store %struct.mvs_phy* %18, %struct.mvs_phy** %9, align 8
  %19 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %20 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %19, i32 0, i32 1
  %21 = load %struct.asd_sas_port*, %struct.asd_sas_port** %20, align 8
  store %struct.asd_sas_port* %21, %struct.asd_sas_port** %10, align 8
  store i64 0, i64* %12, align 8
  %22 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %23 = icmp ne %struct.asd_sas_port* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %162

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %46, %25
  %27 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %28 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %27, i32 0, i32 1
  %29 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %29, i64 %31
  %33 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %32, align 8
  %34 = icmp ne %struct.asd_sas_phy* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %37 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %36, i32 0, i32 1
  %38 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %38, i64 %40
  %42 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %41, align 8
  %43 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %44 = icmp eq %struct.asd_sas_phy* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %26

49:                                               ; preds = %45, %26
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %52 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.mvs_prv_info*
  %55 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %50, %56
  store i32 %57, i32* %8, align 4
  %58 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %59 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.mvs_prv_info*
  %62 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %61, i32 0, i32 1
  %63 = load %struct.mvs_info**, %struct.mvs_info*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %63, i64 %65
  %67 = load %struct.mvs_info*, %struct.mvs_info** %66, align 8
  store %struct.mvs_info* %67, %struct.mvs_info** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %70 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %68, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %49
  %76 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %77 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %76, i32 0, i32 1
  %78 = load %struct.mvs_port*, %struct.mvs_port** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %81 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %79, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.mvs_port, %struct.mvs_port* %78, i64 %86
  store %struct.mvs_port* %87, %struct.mvs_port** %11, align 8
  br label %95

88:                                               ; preds = %49
  %89 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %90 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %89, i32 0, i32 1
  %91 = load %struct.mvs_port*, %struct.mvs_port** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.mvs_port, %struct.mvs_port* %91, i64 %93
  store %struct.mvs_port* %94, %struct.mvs_port** %11, align 8
  br label %95

95:                                               ; preds = %88, %75
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %100 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %99, i32 0, i32 0
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  br label %103

103:                                              ; preds = %98, %95
  %104 = load %struct.mvs_port*, %struct.mvs_port** %11, align 8
  %105 = getelementptr inbounds %struct.mvs_port, %struct.mvs_port* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  %106 = load %struct.mvs_port*, %struct.mvs_port** %11, align 8
  %107 = load %struct.mvs_phy*, %struct.mvs_phy** %9, align 8
  %108 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %107, i32 0, i32 2
  store %struct.mvs_port* %106, %struct.mvs_port** %108, align 8
  %109 = load %struct.mvs_port*, %struct.mvs_port** %11, align 8
  %110 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %111 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %110, i32 0, i32 1
  store %struct.mvs_port* %109, %struct.mvs_port** %111, align 8
  %112 = load %struct.mvs_phy*, %struct.mvs_phy** %9, align 8
  %113 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @PORT_TYPE_SAS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %154

118:                                              ; preds = %103
  %119 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %120 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.mvs_port*, %struct.mvs_port** %11, align 8
  %123 = getelementptr inbounds %struct.mvs_port, %struct.mvs_port* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %125 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @mv_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %129 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %130 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @mvs_update_wideport(%struct.mvs_info* %128, i32 %131)
  %133 = load %struct.mvs_phy*, %struct.mvs_phy** %9, align 8
  %134 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PORT_SSP_TRGT_MASK, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %118
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MVS_CHIP_DISP, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %141, align 8
  %143 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @PHYR_PHY_STAT, align 4
  %146 = call i32 %142(%struct.mvs_info* %143, i32 %144, i32 %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MVS_CHIP_DISP, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %148, align 8
  %150 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 %149(%struct.mvs_info* %150, i32 %151, i32 4)
  br label %153

153:                                              ; preds = %139, %118
  br label %154

154:                                              ; preds = %153, %103
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %159 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %158, i32 0, i32 0
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  br label %162

162:                                              ; preds = %24, %157, %154
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mv_printk(i8*, i32) #1

declare dso_local i32 @mvs_update_wideport(%struct.mvs_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
