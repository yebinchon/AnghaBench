; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_extend_devctx_ocm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_extend_devctx_ocm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@OCM_BASE_ADDR = common dso_local global i64 0, align 8
@ASD_DDB_SIZE = common dso_local global i64 0, align 8
@DEVCTXBASE = common dso_local global i32 0, align 4
@CTXDOMAIN = common dso_local global i32 0, align 4
@MAX_DEVS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_extend_devctx_ocm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_extend_devctx_ocm(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %5 = load i64, i64* @OCM_BASE_ADDR, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %7 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ASD_DDB_SIZE, align 8
  %11 = mul i64 %9, %10
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 %12, %11
  store i64 %13, i64* %3, align 8
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %15 = load i32, i32* @DEVCTXBASE, align 4
  %16 = load i64, i64* %3, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @asd_write_reg_addr(%struct.asd_ha_struct* %14, i32 %15, i32 %17)
  %19 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %20 = load i32, i32* @CTXDOMAIN, align 4
  %21 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, 4
  store i32 %23, i32* %4, align 4
  %24 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %25 = load i32, i32* @CTXDOMAIN, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %24, i32 %25, i32 %26)
  %28 = load i64, i64* @MAX_DEVS, align 8
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %30 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, %28
  store i64 %33, i64* %31, align 8
  ret void
}

declare dso_local i32 @asd_write_reg_addr(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
