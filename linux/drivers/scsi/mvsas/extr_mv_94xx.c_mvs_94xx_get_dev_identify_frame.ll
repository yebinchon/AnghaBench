; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_get_dev_identify_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_get_dev_identify_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }
%struct.sas_identify_frame = type { i32 }

@CONFIG_ID_FRAME0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32, %struct.sas_identify_frame*)* @mvs_94xx_get_dev_identify_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_94xx_get_dev_identify_frame(%struct.mvs_info* %0, i32 %1, %struct.sas_identify_frame* %2) #0 {
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_identify_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [7 x i32], align 16
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sas_identify_frame* %2, %struct.sas_identify_frame** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 7
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i64, i64* @CONFIG_ID_FRAME0, align 8
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %16, 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = call i32 @mvs_write_port_cfg_addr(%struct.mvs_info* %13, i32 %14, i64 %19)
  %21 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mvs_read_port_cfg_data(%struct.mvs_info* %21, i32 %22)
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %26
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %12
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %6, align 8
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %34 = call i32 @memcpy(%struct.sas_identify_frame* %32, i32* %33, i32 28)
  ret void
}

declare dso_local i32 @mvs_write_port_cfg_addr(%struct.mvs_info*, i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mvs_read_port_cfg_data(%struct.mvs_info*, i32) #1

declare dso_local i32 @memcpy(%struct.sas_identify_frame*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
