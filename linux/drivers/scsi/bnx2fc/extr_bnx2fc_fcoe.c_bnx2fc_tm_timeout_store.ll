; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_tm_timeout_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_tm_timeout_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { i64 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bnx2fc_tm_timeout_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_tm_timeout_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.fc_lport*, align 8
  %12 = alloca %struct.fcoe_port*, align 8
  %13 = alloca %struct.bnx2fc_interface*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %10, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %19 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %18)
  store %struct.fc_lport* %19, %struct.fc_lport** %11, align 8
  %20 = load %struct.fc_lport*, %struct.fc_lport** %11, align 8
  %21 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %20)
  store %struct.fcoe_port* %21, %struct.fcoe_port** %12, align 8
  %22 = load %struct.fcoe_port*, %struct.fcoe_port** %12, align 8
  %23 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %22, i32 0, i32 0
  %24 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %23, align 8
  store %struct.bnx2fc_interface* %24, %struct.bnx2fc_interface** %13, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtouint(i8* %25, i32 10, i32* %15)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %44

31:                                               ; preds = %4
  %32 = load i32, i32* %15, align 4
  %33 = icmp sgt i32 %32, 255
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @ERANGE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %13, align 8
  %41 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strlen(i8* %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %37, %34, %29
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
