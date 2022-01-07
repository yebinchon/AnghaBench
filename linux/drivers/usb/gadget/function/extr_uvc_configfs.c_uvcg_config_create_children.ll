; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_config_create_children.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_config_create_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.uvcg_config_group_type = type { i32 (%struct.config_group.0*)*, %struct.uvcg_config_group_type** }
%struct.config_group.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_group*, %struct.uvcg_config_group_type*)* @uvcg_config_create_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_config_create_children(%struct.config_group* %0, %struct.uvcg_config_group_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca %struct.uvcg_config_group_type*, align 8
  %6 = alloca %struct.uvcg_config_group_type**, align 8
  %7 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store %struct.uvcg_config_group_type* %1, %struct.uvcg_config_group_type** %5, align 8
  %8 = load %struct.uvcg_config_group_type*, %struct.uvcg_config_group_type** %5, align 8
  %9 = getelementptr inbounds %struct.uvcg_config_group_type, %struct.uvcg_config_group_type* %8, i32 0, i32 0
  %10 = load i32 (%struct.config_group.0*)*, i32 (%struct.config_group.0*)** %9, align 8
  %11 = icmp ne i32 (%struct.config_group.0*)* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.uvcg_config_group_type*, %struct.uvcg_config_group_type** %5, align 8
  %14 = getelementptr inbounds %struct.uvcg_config_group_type, %struct.uvcg_config_group_type* %13, i32 0, i32 0
  %15 = load i32 (%struct.config_group.0*)*, i32 (%struct.config_group.0*)** %14, align 8
  %16 = load %struct.config_group*, %struct.config_group** %4, align 8
  %17 = bitcast %struct.config_group* %16 to %struct.config_group.0*
  %18 = call i32 %15(%struct.config_group.0* %17)
  store i32 %18, i32* %3, align 4
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.uvcg_config_group_type*, %struct.uvcg_config_group_type** %5, align 8
  %21 = getelementptr inbounds %struct.uvcg_config_group_type, %struct.uvcg_config_group_type* %20, i32 0, i32 1
  %22 = load %struct.uvcg_config_group_type**, %struct.uvcg_config_group_type*** %21, align 8
  store %struct.uvcg_config_group_type** %22, %struct.uvcg_config_group_type*** %6, align 8
  br label %23

23:                                               ; preds = %42, %19
  %24 = load %struct.uvcg_config_group_type**, %struct.uvcg_config_group_type*** %6, align 8
  %25 = icmp ne %struct.uvcg_config_group_type** %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.uvcg_config_group_type**, %struct.uvcg_config_group_type*** %6, align 8
  %28 = load %struct.uvcg_config_group_type*, %struct.uvcg_config_group_type** %27, align 8
  %29 = icmp ne %struct.uvcg_config_group_type* %28, null
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %45

32:                                               ; preds = %30
  %33 = load %struct.config_group*, %struct.config_group** %4, align 8
  %34 = load %struct.uvcg_config_group_type**, %struct.uvcg_config_group_type*** %6, align 8
  %35 = load %struct.uvcg_config_group_type*, %struct.uvcg_config_group_type** %34, align 8
  %36 = call i32 @uvcg_config_create_group(%struct.config_group* %33, %struct.uvcg_config_group_type* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.uvcg_config_group_type**, %struct.uvcg_config_group_type*** %6, align 8
  %44 = getelementptr inbounds %struct.uvcg_config_group_type*, %struct.uvcg_config_group_type** %43, i32 1
  store %struct.uvcg_config_group_type** %44, %struct.uvcg_config_group_type*** %6, align 8
  br label %23

45:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %39, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @uvcg_config_create_group(%struct.config_group*, %struct.uvcg_config_group_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
