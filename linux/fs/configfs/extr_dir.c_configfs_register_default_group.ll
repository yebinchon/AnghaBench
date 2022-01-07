; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_register_default_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_register_default_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.config_item_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config_group* @configfs_register_default_group(%struct.config_group* %0, i8* %1, %struct.config_item_type* %2) #0 {
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca %struct.config_group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.config_item_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.config_group*, align 8
  store %struct.config_group* %0, %struct.config_group** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.config_item_type* %2, %struct.config_item_type** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.config_group* @kzalloc(i32 4, i32 %10)
  store %struct.config_group* %11, %struct.config_group** %9, align 8
  %12 = load %struct.config_group*, %struct.config_group** %9, align 8
  %13 = icmp ne %struct.config_group* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.config_group* @ERR_PTR(i32 %16)
  store %struct.config_group* %17, %struct.config_group** %4, align 8
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.config_group*, %struct.config_group** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.config_item_type*, %struct.config_item_type** %7, align 8
  %22 = call i32 @config_group_init_type_name(%struct.config_group* %19, i8* %20, %struct.config_item_type* %21)
  %23 = load %struct.config_group*, %struct.config_group** %5, align 8
  %24 = load %struct.config_group*, %struct.config_group** %9, align 8
  %25 = call i32 @configfs_register_group(%struct.config_group* %23, %struct.config_group* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.config_group*, %struct.config_group** %9, align 8
  %30 = call i32 @kfree(%struct.config_group* %29)
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.config_group* @ERR_PTR(i32 %31)
  store %struct.config_group* %32, %struct.config_group** %4, align 8
  br label %35

33:                                               ; preds = %18
  %34 = load %struct.config_group*, %struct.config_group** %9, align 8
  store %struct.config_group* %34, %struct.config_group** %4, align 8
  br label %35

35:                                               ; preds = %33, %28, %14
  %36 = load %struct.config_group*, %struct.config_group** %4, align 8
  ret %struct.config_group* %36
}

declare dso_local %struct.config_group* @kzalloc(i32, i32) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, %struct.config_item_type*) #1

declare dso_local i32 @configfs_register_group(%struct.config_group*, %struct.config_group*) #1

declare dso_local i32 @kfree(%struct.config_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
