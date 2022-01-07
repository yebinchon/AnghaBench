; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_flush_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_flush_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.bmic_flush_cache = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SA_FLUSH_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, i32)* @pqi_flush_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_flush_cache(%struct.pqi_ctrl_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bmic_flush_cache*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %9 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.bmic_flush_cache* @kzalloc(i32 4, i32 %15)
  store %struct.bmic_flush_cache* %16, %struct.bmic_flush_cache** %7, align 8
  %17 = load %struct.bmic_flush_cache*, %struct.bmic_flush_cache** %7, align 8
  %18 = icmp ne %struct.bmic_flush_cache* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.bmic_flush_cache*, %struct.bmic_flush_cache** %7, align 8
  %25 = getelementptr inbounds %struct.bmic_flush_cache, %struct.bmic_flush_cache* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %27 = load i32, i32* @SA_FLUSH_CACHE, align 4
  %28 = load %struct.bmic_flush_cache*, %struct.bmic_flush_cache** %7, align 8
  %29 = call i32 @pqi_send_ctrl_raid_request(%struct.pqi_ctrl_info* %26, i32 %27, %struct.bmic_flush_cache* %28, i32 4)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.bmic_flush_cache*, %struct.bmic_flush_cache** %7, align 8
  %31 = call i32 @kfree(%struct.bmic_flush_cache* %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %19, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

declare dso_local %struct.bmic_flush_cache* @kzalloc(i32, i32) #1

declare dso_local i32 @pqi_send_ctrl_raid_request(%struct.pqi_ctrl_info*, i32, %struct.bmic_flush_cache*, i32) #1

declare dso_local i32 @kfree(%struct.bmic_flush_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
