; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_host_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_host_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_qla_host = type { i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8 }

@MAC_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32, i8*)* @qla4xxx_host_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_host_get_param(%struct.Scsi_Host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.scsi_qla_host*, align 8
  %9 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %11 = call %struct.scsi_qla_host* @to_qla_host(%struct.Scsi_Host* %10)
  store %struct.scsi_qla_host* %11, %struct.scsi_qla_host** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %46 [
    i32 132, label %13
    i32 130, label %20
    i32 131, label %26
    i32 128, label %32
    i32 129, label %39
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %16 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAC_ADDR_LEN, align 4
  %19 = call i32 @sysfs_format_mac(i8* %14, i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  br label %49

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %23 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %9, align 4
  br label %49

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 %31, i32* %9, align 4
  br label %49

32:                                               ; preds = %3
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %34 = call i32 @qla4xxx_set_port_state(%struct.Scsi_Host* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %37 = call i8* @iscsi_get_port_state_name(%struct.Scsi_Host* %36)
  %38 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 %38, i32* %9, align 4
  br label %49

39:                                               ; preds = %3
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %41 = call i32 @qla4xxx_set_port_speed(%struct.Scsi_Host* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %44 = call i8* @iscsi_get_port_speed_name(%struct.Scsi_Host* %43)
  %45 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  store i32 %45, i32* %9, align 4
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @ENOSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %39, %32, %26, %20, %13
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.scsi_qla_host* @to_qla_host(%struct.Scsi_Host*) #1

declare dso_local i32 @sysfs_format_mac(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @qla4xxx_set_port_state(%struct.Scsi_Host*) #1

declare dso_local i8* @iscsi_get_port_state_name(%struct.Scsi_Host*) #1

declare dso_local i32 @qla4xxx_set_port_speed(%struct.Scsi_Host*) #1

declare dso_local i8* @iscsi_get_port_speed_name(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
