; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs_bsg.c_ufs_bsg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs_bsg.c_ufs_bsg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.request_queue*, %struct.Scsi_Host*, %struct.device }
%struct.request_queue = type { i32 }
%struct.Scsi_Host = type { i32, %struct.device }
%struct.device = type { i32, i32 }

@ufs_bsg_node_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ufs-bsg\00", align 1
@ufs_bsg_request = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fail to initialize a bsg dev %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_bsg_probe(%struct.ufs_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %10 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %9, i32 0, i32 2
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %12 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %11, i32 0, i32 1
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %5, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @device_initialize(%struct.device* %16)
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @get_device(%struct.device* %18)
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @ufs_bsg_node_release, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_set_name(%struct.device* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @device_add(%struct.device* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_name(%struct.device* %34)
  %36 = load i32, i32* @ufs_bsg_request, align 4
  %37 = call %struct.request_queue* @bsg_setup_queue(%struct.device* %33, i32 %35, i32 %36, i32* null, i32 0)
  store %struct.request_queue* %37, %struct.request_queue** %7, align 8
  %38 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %39 = call i64 @IS_ERR(%struct.request_queue* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %43 = call i32 @PTR_ERR(%struct.request_queue* %42)
  store i32 %43, i32* %8, align 4
  br label %48

44:                                               ; preds = %32
  %45 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %46 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %47 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %46, i32 0, i32 0
  store %struct.request_queue* %45, %struct.request_queue** %47, align 8
  store i32 0, i32* %2, align 4
  br label %57

48:                                               ; preds = %41, %31
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @put_device(%struct.device* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %48, %44
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local %struct.request_queue* @bsg_setup_queue(%struct.device*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @PTR_ERR(%struct.request_queue*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
