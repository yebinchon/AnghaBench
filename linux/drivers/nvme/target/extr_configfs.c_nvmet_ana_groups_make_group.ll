; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ana_groups_make_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ana_groups_make_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.nvmet_port = type { i32 }
%struct.nvmet_ana_group = type { i32, %struct.config_group, %struct.nvmet_port* }

@EINVAL = common dso_local global i32 0, align 4
@NVMET_MAX_ANAGRPS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nvmet_ana_sem = common dso_local global i32 0, align 4
@nvmet_ana_group_enabled = common dso_local global i32* null, align 8
@nvmet_ana_group_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @nvmet_ana_groups_make_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @nvmet_ana_groups_make_group(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmet_port*, align 8
  %7 = alloca %struct.nvmet_ana_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.config_group*, %struct.config_group** %4, align 8
  %11 = getelementptr inbounds %struct.config_group, %struct.config_group* %10, i32 0, i32 0
  %12 = call %struct.nvmet_port* @ana_groups_to_port(i32* %11)
  store %struct.nvmet_port* %12, %struct.nvmet_port** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @kstrtou32(i8* %13, i32 0, i32* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %61

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NVMET_MAX_ANAGRPS, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %18
  br label %61

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.nvmet_ana_group* @kzalloc(i32 16, i32 %31)
  store %struct.nvmet_ana_group* %32, %struct.nvmet_ana_group** %7, align 8
  %33 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %7, align 8
  %34 = icmp ne %struct.nvmet_ana_group* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %61

36:                                               ; preds = %28
  %37 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %38 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %7, align 8
  %39 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %38, i32 0, i32 2
  store %struct.nvmet_port* %37, %struct.nvmet_port** %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %7, align 8
  %42 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = call i32 @down_write(i32* @nvmet_ana_sem)
  %44 = load i32*, i32** @nvmet_ana_group_enabled, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = call i32 @up_write(i32* @nvmet_ana_sem)
  %51 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %7, align 8
  %52 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %51, i32 0, i32 2
  %53 = load %struct.nvmet_port*, %struct.nvmet_port** %52, align 8
  %54 = call i32 @nvmet_port_send_ana_event(%struct.nvmet_port* %53)
  %55 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %7, align 8
  %56 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %55, i32 0, i32 1
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @config_group_init_type_name(%struct.config_group* %56, i8* %57, i32* @nvmet_ana_group_type)
  %59 = load %struct.nvmet_ana_group*, %struct.nvmet_ana_group** %7, align 8
  %60 = getelementptr inbounds %struct.nvmet_ana_group, %struct.nvmet_ana_group* %59, i32 0, i32 1
  store %struct.config_group* %60, %struct.config_group** %3, align 8
  br label %64

61:                                               ; preds = %35, %27, %17
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.config_group* @ERR_PTR(i32 %62)
  store %struct.config_group* %63, %struct.config_group** %3, align 8
  br label %64

64:                                               ; preds = %61, %36
  %65 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %65
}

declare dso_local %struct.nvmet_port* @ana_groups_to_port(i32*) #1

declare dso_local i32 @kstrtou32(i8*, i32, i32*) #1

declare dso_local %struct.nvmet_ana_group* @kzalloc(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @nvmet_port_send_ana_event(%struct.nvmet_port*) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
