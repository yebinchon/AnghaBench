; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_ctrl_serial_number.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_get_ctrl_serial_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i8* }
%struct.bmic_sense_subsystem_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_get_ctrl_serial_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_get_ctrl_serial_number(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmic_sense_subsystem_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.bmic_sense_subsystem_info* @kzalloc(i32 4, i32 %6)
  store %struct.bmic_sense_subsystem_info* %7, %struct.bmic_sense_subsystem_info** %5, align 8
  %8 = load %struct.bmic_sense_subsystem_info*, %struct.bmic_sense_subsystem_info** %5, align 8
  %9 = icmp ne %struct.bmic_sense_subsystem_info* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %15 = load %struct.bmic_sense_subsystem_info*, %struct.bmic_sense_subsystem_info** %5, align 8
  %16 = call i32 @pqi_sense_subsystem_info(%struct.pqi_ctrl_info* %14, %struct.bmic_sense_subsystem_info* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %32

20:                                               ; preds = %13
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %22 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.bmic_sense_subsystem_info*, %struct.bmic_sense_subsystem_info** %5, align 8
  %25 = getelementptr inbounds %struct.bmic_sense_subsystem_info, %struct.bmic_sense_subsystem_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i8* %23, i32 %26, i32 4)
  %28 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %29 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %20, %19
  %33 = load %struct.bmic_sense_subsystem_info*, %struct.bmic_sense_subsystem_info** %5, align 8
  %34 = call i32 @kfree(%struct.bmic_sense_subsystem_info* %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.bmic_sense_subsystem_info* @kzalloc(i32, i32) #1

declare dso_local i32 @pqi_sense_subsystem_info(%struct.pqi_ctrl_info*, %struct.bmic_sense_subsystem_info*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.bmic_sense_subsystem_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
