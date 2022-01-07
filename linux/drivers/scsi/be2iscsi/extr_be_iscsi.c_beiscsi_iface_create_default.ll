; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_iface_create_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_iface_create_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_if_info_resp = type { i32 }

@BEISCSI_IP_TYPE_V4 = common dso_local global i32 0, align 4
@BEISCSI_IP_TYPE_V6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_iface_create_default(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_cmd_get_if_info_resp*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %4 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %5 = load i32, i32* @BEISCSI_IP_TYPE_V4, align 4
  %6 = call i32 @beiscsi_if_get_info(%struct.beiscsi_hba* %4, i32 %5, %struct.be_cmd_get_if_info_resp** %3)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %10 = call i32 @beiscsi_iface_create_ipv4(%struct.beiscsi_hba* %9)
  %11 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %3, align 8
  %12 = call i32 @kfree(%struct.be_cmd_get_if_info_resp* %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %15 = load i32, i32* @BEISCSI_IP_TYPE_V6, align 4
  %16 = call i32 @beiscsi_if_get_info(%struct.beiscsi_hba* %14, i32 %15, %struct.be_cmd_get_if_info_resp** %3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %20 = call i32 @beiscsi_iface_create_ipv6(%struct.beiscsi_hba* %19)
  %21 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %3, align 8
  %22 = call i32 @kfree(%struct.be_cmd_get_if_info_resp* %21)
  br label %23

23:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @beiscsi_if_get_info(%struct.beiscsi_hba*, i32, %struct.be_cmd_get_if_info_resp**) #1

declare dso_local i32 @beiscsi_iface_create_ipv4(%struct.beiscsi_hba*) #1

declare dso_local i32 @kfree(%struct.be_cmd_get_if_info_resp*) #1

declare dso_local i32 @beiscsi_iface_create_ipv6(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
