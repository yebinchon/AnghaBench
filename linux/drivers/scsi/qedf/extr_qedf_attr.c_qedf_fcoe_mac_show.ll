; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_attr.c_qedf_fcoe_mac_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_attr.c_qedf_fcoe_mac_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fc_lport = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @qedf_fcoe_mac_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_fcoe_mac_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [6 x i32], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @class_to_shost(%struct.device* %11)
  %13 = call %struct.fc_lport* @shost_priv(i32 %12)
  store %struct.fc_lport* %13, %struct.fc_lport** %7, align 8
  %14 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %15 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fc_host_port_id(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 65280
  %23 = ashr i32 %22, 8
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 16711680
  %27 = ashr i32 %26, 16
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %31 = call i32 @fc_fcoe_set_mac(i32* %29, i32* %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %35 = call i32 @scnprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %34)
  ret i32 %35
}

declare dso_local %struct.fc_lport* @shost_priv(i32) #1

declare dso_local i32 @class_to_shost(%struct.device*) #1

declare dso_local i32 @fc_host_port_id(i32) #1

declare dso_local i32 @fc_fcoe_set_mac(i32*, i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
