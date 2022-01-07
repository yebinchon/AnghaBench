; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_eh_wait_for_commands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_eh_wait_for_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_target = type { i32 }
%struct.scsi_device = type { i32 }
%struct.scsi_cmnd = type { %struct.scsi_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.scsi_target*, %struct.scsi_device*)* @qla4xxx_eh_wait_for_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_eh_wait_for_commands(%struct.scsi_qla_host* %0, %struct.scsi_target* %1, %struct.scsi_device* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.scsi_target*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.scsi_target* %1, %struct.scsi_target** %5, align 8
  store %struct.scsi_device* %2, %struct.scsi_device** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %52, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %10
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.scsi_cmnd* @scsi_host_find_tag(%struct.TYPE_2__* %21, i32 %22)
  store %struct.scsi_cmnd* %23, %struct.scsi_cmnd** %9, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %25 = icmp ne %struct.scsi_cmnd* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %18
  %27 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load %struct.scsi_device*, %struct.scsi_device** %29, align 8
  %31 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %30)
  %32 = icmp eq %struct.scsi_target* %27, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %35 = icmp ne %struct.scsi_device* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  %40 = load %struct.scsi_device*, %struct.scsi_device** %39, align 8
  %41 = icmp eq %struct.scsi_device* %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36, %33
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %45 = call i32 @qla4xxx_eh_wait_on_command(%struct.scsi_qla_host* %43, %struct.scsi_cmnd* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %55

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %36, %26, %18
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %10

55:                                               ; preds = %47, %10
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.scsi_cmnd* @scsi_host_find_tag(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @qla4xxx_eh_wait_on_command(%struct.scsi_qla_host*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
