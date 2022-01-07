; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_send_scsi_raid_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_send_scsi_raid_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_raid_error_info = type { i32 }
%struct.pqi_raid_path_request = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, i32, i32*, i8*, i64, i32, %struct.pqi_raid_error_info*, i64)* @pqi_send_scsi_raid_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_send_scsi_raid_request(%struct.pqi_ctrl_info* %0, i32 %1, i32* %2, i8* %3, i64 %4, i32 %5, %struct.pqi_raid_error_info* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pqi_ctrl_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.pqi_raid_error_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.pqi_raid_path_request, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.pqi_raid_error_info* %6, %struct.pqi_raid_error_info** %16, align 8
  store i64 %7, i64* %17, align 8
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @pqi_build_raid_path_request(%struct.pqi_ctrl_info* %21, %struct.pqi_raid_path_request* %20, i32 %22, i32* %23, i8* %24, i64 %25, i32 %26, i32* %19)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %9, align 4
  br label %46

32:                                               ; preds = %8
  %33 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %10, align 8
  %34 = getelementptr inbounds %struct.pqi_raid_path_request, %struct.pqi_raid_path_request* %20, i32 0, i32 1
  %35 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %16, align 8
  %36 = load i64, i64* %17, align 8
  %37 = call i32 @pqi_submit_raid_request_synchronous(%struct.pqi_ctrl_info* %33, i32* %34, i32 0, %struct.pqi_raid_error_info* %35, i64 %36)
  store i32 %37, i32* %18, align 4
  %38 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %10, align 8
  %39 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.pqi_raid_path_request, %struct.pqi_raid_path_request* %20, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @pqi_pci_unmap(i32 %40, i32 %42, i32 1, i32 %43)
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %32, %30
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @pqi_build_raid_path_request(%struct.pqi_ctrl_info*, %struct.pqi_raid_path_request*, i32, i32*, i8*, i64, i32, i32*) #1

declare dso_local i32 @pqi_submit_raid_request_synchronous(%struct.pqi_ctrl_info*, i32*, i32, %struct.pqi_raid_error_info*, i64) #1

declare dso_local i32 @pqi_pci_unmap(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
