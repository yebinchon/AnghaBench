; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_get_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_get_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32 }
%struct.tb_cfg_result = type { i64 }

@TB_CFG_PORT = common dso_local global i32 0, align 4
@TB_CFG_ERROR_INVALID_CONFIG_SPACE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_ctl*, i32, %struct.tb_cfg_result*)* @tb_cfg_get_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_cfg_get_error(%struct.tb_ctl* %0, i32 %1, %struct.tb_cfg_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tb_ctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tb_cfg_result*, align 8
  store %struct.tb_ctl* %0, %struct.tb_ctl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tb_cfg_result* %2, %struct.tb_cfg_result** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @TB_CFG_PORT, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %7, align 8
  %13 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TB_CFG_ERROR_INVALID_CONFIG_SPACE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %11, %3
  %21 = load %struct.tb_ctl*, %struct.tb_ctl** %5, align 8
  %22 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %7, align 8
  %23 = call i32 @tb_cfg_print_error(%struct.tb_ctl* %21, %struct.tb_cfg_result* %22)
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @tb_cfg_print_error(%struct.tb_ctl*, %struct.tb_cfg_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
