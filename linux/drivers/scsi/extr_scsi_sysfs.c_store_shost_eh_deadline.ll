; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_store_shost_eh_deadline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_store_shost_eh_deadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@HZ = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_shost_eh_deadline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_shost_eh_deadline(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %10, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %4
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29, %22
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %96

38:                                               ; preds = %29, %4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i64 -1, i64* %12, align 8
  br label %61

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @kstrtoul(i8* %45, i32 10, i64* %12)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %96

51:                                               ; preds = %44
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @HZ, align 8
  %54 = mul i64 %52, %53
  %55 = load i64, i64* @UINT_MAX, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %96

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %63 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @spin_lock_irqsave(i32 %64, i64 %65)
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %68 = call i64 @scsi_host_in_recovery(%struct.Scsi_Host* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  br label %89

73:                                               ; preds = %61
  %74 = load i64, i64* %12, align 8
  %75 = icmp eq i64 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 8
  br label %86

79:                                               ; preds = %73
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @HZ, align 8
  %82 = mul i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %85 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %79, %76
  %87 = load i64, i64* %9, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %86, %70
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %91 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32 %92, i64 %93)
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %89, %57, %49, %36
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @scsi_host_in_recovery(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
