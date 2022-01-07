; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_init_sata_pm_port_ddb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_init_sata_pm_port_ddb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { i32 }

@PM_PORT_SET = common dso_local global i32 0, align 4
@PM_PORT_FLAGS = common dso_local global i32 0, align 4
@SISTER_DDB = common dso_local global i32 0, align 4
@ATA_CMD_SCBPTR = common dso_local global i32 0, align 4
@PARENT_DDB = common dso_local global i32 0, align 4
@NUM_SATA_TAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @asd_init_sata_pm_port_ddb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_init_sata_pm_port_ddb(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.asd_ha_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %15, align 8
  store %struct.asd_ha_struct* %16, %struct.asd_ha_struct** %8, align 8
  %17 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %18 = call i32 @asd_get_ddb(%struct.asd_ha_struct* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %88

23:                                               ; preds = %1
  %24 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %25 = call i32 @asd_set_ddb_type(%struct.domain_device* %24)
  %26 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %27 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 4
  %31 = load i32, i32* @PM_PORT_SET, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PM_PORT_FLAGS, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SISTER_DDB, align 4
  %41 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %38, i32 %39, i32 %40, i32 65535)
  %42 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ATA_CMD_SCBPTR, align 4
  %45 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %42, i32 %43, i32 %44, i32 65535)
  %46 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %47 = call i32 @asd_init_sata(%struct.domain_device* %46)
  %48 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %49 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @PARENT_DDB, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @SISTER_DDB, align 4
  %62 = call i32 @asd_ddbsite_read_word(%struct.asd_ha_struct* %59, i32 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %66 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %63, i32 %64, i32 %68, i32 %69)
  %71 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @NUM_SATA_TAGS, align 4
  %74 = call i64 @asd_ddbsite_read_byte(%struct.asd_ha_struct* %71, i32 %72, i32 %73)
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %23
  %77 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %78 = call i32 @asd_init_sata_tag_ddb(%struct.domain_device* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @asd_free_ddb(%struct.asd_ha_struct* %82, i32 %83)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %88

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %23
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %81, %21
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @asd_get_ddb(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_set_ddb_type(%struct.domain_device*) #1

declare dso_local i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct*, i32, i32, i32) #1

declare dso_local i32 @asd_ddbsite_write_word(%struct.asd_ha_struct*, i32, i32, i32) #1

declare dso_local i32 @asd_init_sata(%struct.domain_device*) #1

declare dso_local i32 @asd_ddbsite_read_word(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i64 @asd_ddbsite_read_byte(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_init_sata_tag_ddb(%struct.domain_device*) #1

declare dso_local i32 @asd_free_ddb(%struct.asd_ha_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
