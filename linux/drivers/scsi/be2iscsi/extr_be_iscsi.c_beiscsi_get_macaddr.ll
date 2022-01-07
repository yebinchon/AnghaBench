; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_macaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32 }
%struct.be_cmd_get_nic_conf_resp = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_get_macaddr(i8* %0, %struct.beiscsi_hba* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca %struct.be_cmd_get_nic_conf_resp, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.beiscsi_hba* %1, %struct.beiscsi_hba** %5, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %9 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i32 @sysfs_format_mac(i8* %13, i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = call i32 @memset(%struct.be_cmd_get_nic_conf_resp* %6, i32 0, i32 4)
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %22 = call i32 @mgmt_get_nic_conf(%struct.beiscsi_hba* %21, %struct.be_cmd_get_nic_conf_resp* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %19
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %29 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.be_cmd_get_nic_conf_resp, %struct.be_cmd_get_nic_conf_resp* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memcpy(i32 %32, i32 %34, i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %39 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @sysfs_format_mac(i8* %37, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %27, %25, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @sysfs_format_mac(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.be_cmd_get_nic_conf_resp*, i32, i32) #1

declare dso_local i32 @mgmt_get_nic_conf(%struct.beiscsi_hba*, %struct.be_cmd_get_nic_conf_resp*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
