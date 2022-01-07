; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_post_escb_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_post_escb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.asd_ascb = type { i32 }

@SCBPRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_post_escb_list(%struct.asd_ha_struct* %0, %struct.asd_ascb* %1, i32 %2) #0 {
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca %struct.asd_ascb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %4, align 8
  store %struct.asd_ascb* %1, %struct.asd_ascb** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %9 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %14 = load %struct.asd_ascb*, %struct.asd_ascb** %5, align 8
  %15 = call i32 @asd_swap_head_scb(%struct.asd_ha_struct* %13, %struct.asd_ascb* %14)
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %19 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, %17
  store i64 %22, i64* %20, align 8
  %23 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %24 = load i32, i32* @SCBPRO, align 4
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %26 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %23, i32 %24, i32 %29)
  %31 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %32 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asd_swap_head_scb(%struct.asd_ha_struct*, %struct.asd_ascb*) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
