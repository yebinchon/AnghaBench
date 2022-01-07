; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_store_interrupt_coalescing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_store_interrupt_coalescing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mvs_info*, i32)* }
%struct.mvs_info = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { i64 }
%struct.mvs_prv_info = type { i64, %struct.mvs_info** }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"interrupt coalescing timer %d us istoo long\0A\00", align 1
@interrupt_coalescing = common dso_local global i32 0, align 4
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"set interrupt coalescing time to %d us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mvs_store_interrupt_coalescing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mvs_store_interrupt_coalescing(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mvs_info*, align 8
  %12 = alloca %struct.Scsi_Host*, align 8
  %13 = alloca %struct.sas_ha_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.mvs_info* null, %struct.mvs_info** %11, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %12, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %19 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %18)
  store %struct.sas_ha_struct* %19, %struct.sas_ha_struct** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %5, align 8
  br label %99

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %99

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = icmp uge i32 %32, 65536
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mv_dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %5, align 8
  br label %99

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* @interrupt_coalescing, align 4
  %41 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %42 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.mvs_prv_info*
  %45 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %15, align 8
  %47 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %48 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.mvs_prv_info*
  %51 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %50, i32 0, i32 1
  %52 = load %struct.mvs_info**, %struct.mvs_info*** %51, align 8
  %53 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %52, i64 0
  %54 = load %struct.mvs_info*, %struct.mvs_info** %53, align 8
  store %struct.mvs_info* %54, %struct.mvs_info** %11, align 8
  %55 = load %struct.mvs_info*, %struct.mvs_info** %11, align 8
  %56 = icmp ne %struct.mvs_info* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %39
  %62 = load i64, i64* @EINVAL, align 8
  %63 = sub i64 0, %62
  store i64 %63, i64* %5, align 8
  br label %99

64:                                               ; preds = %39
  store i64 0, i64* %14, align 8
  br label %65

65:                                               ; preds = %91, %64
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %15, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %71 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.mvs_prv_info*
  %74 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %73, i32 0, i32 1
  %75 = load %struct.mvs_info**, %struct.mvs_info*** %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %75, i64 %76
  %78 = load %struct.mvs_info*, %struct.mvs_info** %77, align 8
  store %struct.mvs_info* %78, %struct.mvs_info** %11, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.mvs_info*, i32)* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %69
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %85, align 8
  %87 = load %struct.mvs_info*, %struct.mvs_info** %11, align 8
  %88 = load i32, i32* @interrupt_coalescing, align 4
  %89 = call i32 %86(%struct.mvs_info* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %69
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %14, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %14, align 8
  br label %65

94:                                               ; preds = %65
  %95 = load i32, i32* @interrupt_coalescing, align 4
  %96 = call i32 @mv_dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i8*, i8** %8, align 8
  %98 = call i64 @strlen(i8* %97)
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %94, %61, %34, %28, %22
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @mv_dprintk(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
