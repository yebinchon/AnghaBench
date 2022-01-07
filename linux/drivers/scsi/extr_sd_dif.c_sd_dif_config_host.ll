; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_dif.c_sd_dif_config_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_dif.c_sd_dif_config_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.scsi_disk = type { i64, i32, %struct.scsi_device*, %struct.gendisk* }
%struct.scsi_device = type { i32 }
%struct.gendisk = type { i32 }
%struct.blk_integrity = type { i32, i32, i32, %struct.TYPE_5__* }

@SHOST_DIX_GUARD_IP = common dso_local global i32 0, align 4
@T10_PI_TYPE3_PROTECTION = common dso_local global i64 0, align 8
@t10_pi_type3_ip = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@t10_pi_type1_ip = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@BLK_INTEGRITY_IP_CHECKSUM = common dso_local global i32 0, align 4
@t10_pi_type3_crc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@t10_pi_type1_crc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Enabling DIX %s protection\0A\00", align 1
@BLK_INTEGRITY_DEVICE_CAPABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"DIF application tag size %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sd_dif_config_host(%struct.scsi_disk* %0) #0 {
  %2 = alloca %struct.scsi_disk*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.blk_integrity, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %2, align 8
  %9 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %9, i32 0, i32 2
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %3, align 8
  %12 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %12, i32 0, i32 3
  %14 = load %struct.gendisk*, %struct.gendisk** %13, align 8
  store %struct.gendisk* %14, %struct.gendisk** %4, align 8
  %15 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @scsi_host_dif_capable(i32 %20, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @scsi_host_dix_capable(i32 %25, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  %31 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @scsi_host_dix_capable(i32 %33, i64 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %30, %1
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %116

41:                                               ; preds = %37
  %42 = call i32 @memset(%struct.blk_integrity* %6, i32 0, i32 24)
  %43 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %44 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %43, i32 0, i32 2
  %45 = load %struct.scsi_device*, %struct.scsi_device** %44, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @scsi_host_get_guard(i32 %47)
  %49 = load i32, i32* @SHOST_DIX_GUARD_IP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %41
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @T10_PI_TYPE3_PROTECTION, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 3
  store %struct.TYPE_5__* @t10_pi_type3_ip, %struct.TYPE_5__** %57, align 8
  br label %60

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 3
  store %struct.TYPE_5__* @t10_pi_type1_ip, %struct.TYPE_5__** %59, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i32, i32* @BLK_INTEGRITY_IP_CHECKSUM, align 4
  %62 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 8
  br label %74

65:                                               ; preds = %41
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @T10_PI_TYPE3_PROTECTION, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 3
  store %struct.TYPE_5__* @t10_pi_type3_crc, %struct.TYPE_5__** %70, align 8
  br label %73

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 3
  store %struct.TYPE_5__* @t10_pi_type1_crc, %struct.TYPE_5__** %72, align 8
  br label %73

73:                                               ; preds = %71, %69
  br label %74

74:                                               ; preds = %73, %60
  %75 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 0
  store i32 4, i32* %75, align 8
  %76 = load i32, i32* @KERN_NOTICE, align 4
  %77 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %78 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 3
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sd_printk(i32 %76, %struct.scsi_disk* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %74
  %86 = load i64, i64* %5, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %85
  %89 = load i32, i32* @BLK_INTEGRITY_DEVICE_CAPABLE, align 4
  %90 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 8
  %93 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %94 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  br label %113

98:                                               ; preds = %88
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @T10_PI_TYPE3_PROTECTION, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 1
  store i32 8, i32* %103, align 4
  br label %106

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 1
  store i32 4, i32* %105, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i32, i32* @KERN_NOTICE, align 4
  %108 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %109 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @sd_printk(i32 %107, %struct.scsi_disk* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %106, %85, %74
  br label %113

113:                                              ; preds = %112, %97
  %114 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %115 = call i32 @blk_integrity_register(%struct.gendisk* %114, %struct.blk_integrity* %6)
  br label %116

116:                                              ; preds = %113, %40
  ret void
}

declare dso_local i32 @scsi_host_dif_capable(i32, i64) #1

declare dso_local i32 @scsi_host_dix_capable(i32, i64) #1

declare dso_local i32 @memset(%struct.blk_integrity*, i32, i32) #1

declare dso_local i32 @scsi_host_get_guard(i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, i32) #1

declare dso_local i32 @blk_integrity_register(%struct.gendisk*, %struct.blk_integrity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
