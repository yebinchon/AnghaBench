; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_referral_make.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_referral_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.nvmet_port = type { %struct.config_group, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvmet_referral_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @nvmet_referral_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @nvmet_referral_make(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmet_port*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.nvmet_port* @kzalloc(i32 8, i32 %7)
  store %struct.nvmet_port* %8, %struct.nvmet_port** %6, align 8
  %9 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %10 = icmp ne %struct.nvmet_port* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.config_group* @ERR_PTR(i32 %13)
  store %struct.config_group* %14, %struct.config_group** %3, align 8
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %17 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %20 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %19, i32 0, i32 0
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @config_group_init_type_name(%struct.config_group* %20, i8* %21, i32* @nvmet_referral_type)
  %23 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %24 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %23, i32 0, i32 0
  store %struct.config_group* %24, %struct.config_group** %3, align 8
  br label %25

25:                                               ; preds = %15, %11
  %26 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %26
}

declare dso_local %struct.nvmet_port* @kzalloc(i32, i32) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
