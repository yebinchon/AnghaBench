; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_translate_ldev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_translate_ldev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_device = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.myrs_hba*, %struct.scsi_device*)* @myrs_translate_ldev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @myrs_translate_ldev(%struct.myrs_hba* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca %struct.myrs_hba*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.myrs_hba* %0, %struct.myrs_hba** %3, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %4, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %11 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %9, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul i32 %19, %24
  %26 = add i32 %18, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %5, align 2
  %28 = load i16, i16* %5, align 2
  ret i16 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
