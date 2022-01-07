; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_control_class_create_children.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_control_class_create_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.uvcg_control_class_group = type { i8*, i32 }

@uvcg_control_class_create_children.names = internal constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uvcg_control_class_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_group*)* @uvcg_control_class_create_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_control_class_create_children(%struct.config_group* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvcg_control_class_group*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @uvcg_control_class_create_children.names, i64 0, i64 0))
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.uvcg_control_class_group* @kzalloc(i32 16, i32 %11)
  store %struct.uvcg_control_class_group* %12, %struct.uvcg_control_class_group** %5, align 8
  %13 = load %struct.uvcg_control_class_group*, %struct.uvcg_control_class_group** %5, align 8
  %14 = icmp ne %struct.uvcg_control_class_group* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %39

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* @uvcg_control_class_create_children.names, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.uvcg_control_class_group*, %struct.uvcg_control_class_group** %5, align 8
  %24 = getelementptr inbounds %struct.uvcg_control_class_group, %struct.uvcg_control_class_group* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.uvcg_control_class_group*, %struct.uvcg_control_class_group** %5, align 8
  %26 = getelementptr inbounds %struct.uvcg_control_class_group, %struct.uvcg_control_class_group* %25, i32 0, i32 1
  %27 = load %struct.uvcg_control_class_group*, %struct.uvcg_control_class_group** %5, align 8
  %28 = getelementptr inbounds %struct.uvcg_control_class_group, %struct.uvcg_control_class_group* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @config_group_init_type_name(i32* %26, i8* %29, i32* @uvcg_control_class_type)
  %31 = load %struct.uvcg_control_class_group*, %struct.uvcg_control_class_group** %5, align 8
  %32 = getelementptr inbounds %struct.uvcg_control_class_group, %struct.uvcg_control_class_group* %31, i32 0, i32 1
  %33 = load %struct.config_group*, %struct.config_group** %3, align 8
  %34 = call i32 @configfs_add_default_group(i32* %32, %struct.config_group* %33)
  br label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %6

38:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local %struct.uvcg_control_class_group* @kzalloc(i32, i32) #1

declare dso_local i32 @config_group_init_type_name(i32*, i8*, i32*) #1

declare dso_local i32 @configfs_add_default_group(i32*, %struct.config_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
