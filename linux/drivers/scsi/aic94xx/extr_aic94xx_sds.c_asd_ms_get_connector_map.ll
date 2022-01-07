; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_ms_get_connector_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_ms_get_connector_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }
%struct.asd_manuf_sec = type { i32 }
%struct.asd_ms_conn_map = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"ms: no connector map found\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"ms: unsupported: connector map major version 0x%x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, %struct.asd_manuf_sec*)* @asd_ms_get_connector_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_ms_get_connector_map(%struct.asd_ha_struct* %0, %struct.asd_manuf_sec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca %struct.asd_manuf_sec*, align 8
  %6 = alloca %struct.asd_ms_conn_map*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %4, align 8
  store %struct.asd_manuf_sec* %1, %struct.asd_manuf_sec** %5, align 8
  %7 = load %struct.asd_manuf_sec*, %struct.asd_manuf_sec** %5, align 8
  %8 = call %struct.asd_ms_conn_map* @asd_find_ll_by_id(%struct.asd_manuf_sec* %7, i8 signext 77, i8 signext 67)
  store %struct.asd_ms_conn_map* %8, %struct.asd_ms_conn_map** %6, align 8
  %9 = load %struct.asd_ms_conn_map*, %struct.asd_ms_conn_map** %6, align 8
  %10 = icmp ne %struct.asd_ms_conn_map* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.asd_ms_conn_map*, %struct.asd_ms_conn_map** %6, align 8
  %15 = getelementptr inbounds %struct.asd_ms_conn_map, %struct.asd_ms_conn_map* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.asd_ms_conn_map*, %struct.asd_ms_conn_map** %6, align 8
  %20 = getelementptr inbounds %struct.asd_ms_conn_map, %struct.asd_ms_conn_map* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %18, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.asd_ms_conn_map* @asd_find_ll_by_id(%struct.asd_manuf_sec*, i8 signext, i8 signext) #1

declare dso_local i32 @ASD_DPRINTK(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
