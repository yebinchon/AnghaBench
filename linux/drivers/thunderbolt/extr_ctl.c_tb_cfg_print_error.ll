; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_print_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_print_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32 }
%struct.tb_cfg_result = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"CFG_ERROR(%llx:%x): Invalid config space or offset\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"CFG_ERROR(%llx:%x): Invalid port\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"CFG_ERROR(%llx:%x): Route contains a loop\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"CFG_ERROR(%llx:%x): Unknown error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_ctl*, %struct.tb_cfg_result*)* @tb_cfg_print_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_cfg_print_error(%struct.tb_ctl* %0, %struct.tb_cfg_result* %1) #0 {
  %3 = alloca %struct.tb_ctl*, align 8
  %4 = alloca %struct.tb_cfg_result*, align 8
  store %struct.tb_ctl* %0, %struct.tb_ctl** %3, align 8
  store %struct.tb_cfg_result* %1, %struct.tb_cfg_result** %4, align 8
  %5 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %4, align 8
  %6 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %4, align 8
  %12 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %42 [
    i32 128, label %14
    i32 131, label %15
    i32 129, label %24
    i32 130, label %33
  ]

14:                                               ; preds = %2
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.tb_ctl*, %struct.tb_ctl** %3, align 8
  %17 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %4, align 8
  %18 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %4, align 8
  %21 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tb_ctl_WARN(%struct.tb_ctl* %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.tb_ctl*, %struct.tb_ctl** %3, align 8
  %26 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %4, align 8
  %27 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %4, align 8
  %30 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @tb_ctl_WARN(%struct.tb_ctl* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31)
  br label %51

33:                                               ; preds = %2
  %34 = load %struct.tb_ctl*, %struct.tb_ctl** %3, align 8
  %35 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %4, align 8
  %36 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %4, align 8
  %39 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tb_ctl_WARN(%struct.tb_ctl* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %40)
  br label %51

42:                                               ; preds = %2
  %43 = load %struct.tb_ctl*, %struct.tb_ctl** %3, align 8
  %44 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %4, align 8
  %45 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tb_cfg_result*, %struct.tb_cfg_result** %4, align 8
  %48 = getelementptr inbounds %struct.tb_cfg_result, %struct.tb_cfg_result* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @tb_ctl_WARN(%struct.tb_ctl* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %33, %24, %15, %14
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tb_ctl_WARN(%struct.tb_ctl*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
