; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_process_ctrla_phy_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_process_ctrla_phy_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.asd_ctrla_phy_settings = type { i32, %struct.asd_ctrla_phy_entry* }
%struct.asd_ctrla_phy_entry = type { i32, i32, i32, i64 }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"ctrla: phy%d: sas_addr: %llx, sas rate:0x%x-0x%x, sata rate:0x%x-0x%x, flags:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, %struct.asd_ctrla_phy_settings*)* @asd_process_ctrla_phy_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_process_ctrla_phy_settings(%struct.asd_ha_struct* %0, %struct.asd_ctrla_phy_settings* %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.asd_ctrla_phy_settings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_ctrla_phy_entry*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store %struct.asd_ctrla_phy_settings* %1, %struct.asd_ctrla_phy_settings** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %174, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.asd_ctrla_phy_settings*, %struct.asd_ctrla_phy_settings** %4, align 8
  %10 = getelementptr inbounds %struct.asd_ctrla_phy_settings, %struct.asd_ctrla_phy_settings* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %177

13:                                               ; preds = %7
  %14 = load %struct.asd_ctrla_phy_settings*, %struct.asd_ctrla_phy_settings** %4, align 8
  %15 = getelementptr inbounds %struct.asd_ctrla_phy_settings, %struct.asd_ctrla_phy_settings* %14, i32 0, i32 1
  %16 = load %struct.asd_ctrla_phy_entry*, %struct.asd_ctrla_phy_entry** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.asd_ctrla_phy_entry, %struct.asd_ctrla_phy_entry* %16, i64 %18
  store %struct.asd_ctrla_phy_entry* %19, %struct.asd_ctrla_phy_entry** %6, align 8
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @PHY_ENABLED(%struct.asd_ha_struct* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %174

25:                                               ; preds = %13
  %26 = load %struct.asd_ctrla_phy_entry*, %struct.asd_ctrla_phy_entry** %6, align 8
  %27 = getelementptr inbounds %struct.asd_ctrla_phy_entry, %struct.asd_ctrla_phy_entry* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %37 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %35
  store i32 %40, i32* %38, align 8
  br label %174

41:                                               ; preds = %25
  %42 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %43 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.asd_ctrla_phy_entry*, %struct.asd_ctrla_phy_entry** %6, align 8
  %52 = getelementptr inbounds %struct.asd_ctrla_phy_entry, %struct.asd_ctrla_phy_entry* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %55 = call i32 @memcpy(i32 %50, i64 %53, i32 %54)
  %56 = load %struct.asd_ctrla_phy_entry*, %struct.asd_ctrla_phy_entry** %6, align 8
  %57 = getelementptr inbounds %struct.asd_ctrla_phy_entry, %struct.asd_ctrla_phy_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 240
  %60 = ashr i32 %59, 4
  %61 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %62 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %60, i32* %68, align 4
  %69 = load %struct.asd_ctrla_phy_entry*, %struct.asd_ctrla_phy_entry** %6, align 8
  %70 = getelementptr inbounds %struct.asd_ctrla_phy_entry, %struct.asd_ctrla_phy_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 15
  %73 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %74 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32 %72, i32* %80, align 4
  %81 = load %struct.asd_ctrla_phy_entry*, %struct.asd_ctrla_phy_entry** %6, align 8
  %82 = getelementptr inbounds %struct.asd_ctrla_phy_entry, %struct.asd_ctrla_phy_entry* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 240
  %85 = ashr i32 %84, 4
  %86 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %87 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 %85, i32* %93, align 4
  %94 = load %struct.asd_ctrla_phy_entry*, %struct.asd_ctrla_phy_entry** %6, align 8
  %95 = getelementptr inbounds %struct.asd_ctrla_phy_entry, %struct.asd_ctrla_phy_entry* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 15
  %98 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %99 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  store i32 %97, i32* %105, align 4
  %106 = load %struct.asd_ctrla_phy_entry*, %struct.asd_ctrla_phy_entry** %6, align 8
  %107 = getelementptr inbounds %struct.asd_ctrla_phy_entry, %struct.asd_ctrla_phy_entry* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %110 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  store i32 %108, i32* %116, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %119 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @SAS_ADDR(i32 %126)
  %128 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %129 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %138 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %147 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %156 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %165 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %127, i32 %136, i32 %145, i32 %154, i32 %163, i32 %172)
  br label %174

174:                                              ; preds = %41, %32, %24
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %7

177:                                              ; preds = %7
  ret i32 0
}

declare dso_local i32 @PHY_ENABLED(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
