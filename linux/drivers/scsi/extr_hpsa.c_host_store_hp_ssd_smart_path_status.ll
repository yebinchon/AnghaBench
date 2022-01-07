; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_host_store_hp_ssd_smart_path_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_host_store_hp_ssd_smart_path_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ctlr_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"hpsa: HP SSD Smart Path %s via sysfs update.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @host_store_hp_ssd_smart_path_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @host_store_hp_ssd_smart_path_status(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ctlr_info*, align 8
  %13 = alloca %struct.Scsi_Host*, align 8
  %14 = alloca [10 x i8], align 1
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %13, align 8
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %22 = call i32 @capable(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %4
  %25 = load i64, i64* @EACCES, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %71

27:                                               ; preds = %20
  %28 = load i64, i64* %9, align 8
  %29 = icmp ugt i64 %28, 9
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i64 [ 9, %30 ], [ %32, %31 ]
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @strncpy(i8* %36, i8* %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 %41
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %44 = call i32 @sscanf(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %5, align 8
  br label %71

49:                                               ; preds = %33
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  %51 = call %struct.ctlr_info* @shost_to_hba(%struct.Scsi_Host* %50)
  store %struct.ctlr_info* %51, %struct.ctlr_info** %12, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.ctlr_info*, %struct.ctlr_info** %12, align 8
  %58 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ctlr_info*, %struct.ctlr_info** %12, align 8
  %60 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.ctlr_info*, %struct.ctlr_info** %12, align 8
  %64 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %69 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = load i64, i64* %9, align 8
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %49, %46, %24
  %72 = load i64, i64* %5, align 8
  ret i64 %72
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local %struct.ctlr_info* @shost_to_hba(%struct.Scsi_Host*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
