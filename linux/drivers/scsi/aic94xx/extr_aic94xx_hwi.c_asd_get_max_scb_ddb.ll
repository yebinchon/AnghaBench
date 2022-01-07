; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_get_max_scb_ddb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_get_max_scb_ddb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ASD_SCB_SIZE = common dso_local global i32 0, align 4
@ASD_DDB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"max_scbs:%d, max_ddbs:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_get_max_scb_ddb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_get_max_scb_ddb(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %3 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %4 = call i32 @asd_get_cmdctx_size(%struct.asd_ha_struct* %3)
  %5 = load i32, i32* @ASD_SCB_SIZE, align 4
  %6 = sdiv i32 %4, %5
  %7 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %8 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 4
  %10 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %11 = call i32 @asd_get_devctx_size(%struct.asd_ha_struct* %10)
  %12 = load i32, i32* @ASD_DDB_SIZE, align 4
  %13 = sdiv i32 %11, %12
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %15 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %18 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %22 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  ret void
}

declare dso_local i32 @asd_get_cmdctx_size(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_get_devctx_size(%struct.asd_ha_struct*) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
