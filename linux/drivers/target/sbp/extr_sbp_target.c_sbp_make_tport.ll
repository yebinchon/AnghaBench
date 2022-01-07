; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_make_tport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_make_tport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_wwn = type { i32 }
%struct.target_fabric_configfs = type { i32 }
%struct.config_group = type { i32 }
%struct.sbp_tport = type { %struct.se_wwn, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SBP_NAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_wwn* (%struct.target_fabric_configfs*, %struct.config_group*, i8*)* @sbp_make_tport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_wwn* @sbp_make_tport(%struct.target_fabric_configfs* %0, %struct.config_group* %1, i8* %2) #0 {
  %4 = alloca %struct.se_wwn*, align 8
  %5 = alloca %struct.target_fabric_configfs*, align 8
  %6 = alloca %struct.config_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sbp_tport*, align 8
  %9 = alloca i32, align 4
  store %struct.target_fabric_configfs* %0, %struct.target_fabric_configfs** %5, align 8
  store %struct.config_group* %1, %struct.config_group** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @sbp_parse_wwn(i8* %10, i32* %9)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.se_wwn* @ERR_PTR(i32 %15)
  store %struct.se_wwn* %16, %struct.se_wwn** %4, align 8
  br label %38

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sbp_tport* @kzalloc(i32 12, i32 %18)
  store %struct.sbp_tport* %19, %struct.sbp_tport** %8, align 8
  %20 = load %struct.sbp_tport*, %struct.sbp_tport** %8, align 8
  %21 = icmp ne %struct.sbp_tport* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.se_wwn* @ERR_PTR(i32 %24)
  store %struct.se_wwn* %25, %struct.se_wwn** %4, align 8
  br label %38

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.sbp_tport*, %struct.sbp_tport** %8, align 8
  %29 = getelementptr inbounds %struct.sbp_tport, %struct.sbp_tport* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sbp_tport*, %struct.sbp_tport** %8, align 8
  %31 = getelementptr inbounds %struct.sbp_tport, %struct.sbp_tport* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SBP_NAMELEN, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @sbp_format_wwn(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.sbp_tport*, %struct.sbp_tport** %8, align 8
  %37 = getelementptr inbounds %struct.sbp_tport, %struct.sbp_tport* %36, i32 0, i32 0
  store %struct.se_wwn* %37, %struct.se_wwn** %4, align 8
  br label %38

38:                                               ; preds = %26, %22, %13
  %39 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  ret %struct.se_wwn* %39
}

declare dso_local i64 @sbp_parse_wwn(i8*, i32*) #1

declare dso_local %struct.se_wwn* @ERR_PTR(i32) #1

declare dso_local %struct.sbp_tport* @kzalloc(i32, i32) #1

declare dso_local i32 @sbp_format_wwn(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
