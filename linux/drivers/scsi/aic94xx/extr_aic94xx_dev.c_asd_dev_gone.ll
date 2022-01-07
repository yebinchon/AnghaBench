; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_dev_gone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_dev_gone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SISTER_DDB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asd_dev_gone(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.asd_ha_struct*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %7 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %8 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %12, align 8
  store %struct.asd_ha_struct* %13, %struct.asd_ha_struct** %6, align 8
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %15 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %20 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = ptrtoint i32* %21 to i64
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SISTER_DDB, align 4
  %27 = call i32 @asd_ddbsite_read_word(%struct.asd_ha_struct* %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 65535
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @asd_free_ddb(%struct.asd_ha_struct* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %1
  %35 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @asd_free_ddb(%struct.asd_ha_struct* %35, i32 %36)
  %38 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %39 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %41 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asd_ddbsite_read_word(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_free_ddb(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
