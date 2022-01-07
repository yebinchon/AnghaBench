; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_powercap_register_control_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_powercap_register_control_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powercap_control_type = type { i32, i32, i32, %struct.TYPE_3__, %struct.powercap_control_type_ops*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.powercap_control_type_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@powercap_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@powercap_cntrl_list_lock = common dso_local global i32 0, align 4
@powercap_cntrl_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.powercap_control_type* @powercap_register_control_type(%struct.powercap_control_type* %0, i8* %1, %struct.powercap_control_type_ops* %2) #0 {
  %4 = alloca %struct.powercap_control_type*, align 8
  %5 = alloca %struct.powercap_control_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.powercap_control_type_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.powercap_control_type* %0, %struct.powercap_control_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.powercap_control_type_ops* %2, %struct.powercap_control_type_ops** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.powercap_control_type* @ERR_PTR(i32 %13)
  store %struct.powercap_control_type* %14, %struct.powercap_control_type** %4, align 8
  br label %88

15:                                               ; preds = %3
  %16 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %17 = icmp ne %struct.powercap_control_type* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.powercap_control_type_ops*, %struct.powercap_control_type_ops** %7, align 8
  %20 = icmp ne %struct.powercap_control_type_ops* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.powercap_control_type_ops*, %struct.powercap_control_type_ops** %7, align 8
  %23 = getelementptr inbounds %struct.powercap_control_type_ops, %struct.powercap_control_type_ops* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.powercap_control_type* @ERR_PTR(i32 %28)
  store %struct.powercap_control_type* %29, %struct.powercap_control_type** %4, align 8
  br label %88

30:                                               ; preds = %21
  %31 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %32 = call i32 @memset(%struct.powercap_control_type* %31, i32 0, i32 40)
  br label %45

33:                                               ; preds = %15
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.powercap_control_type* @kzalloc(i32 40, i32 %34)
  store %struct.powercap_control_type* %35, %struct.powercap_control_type** %5, align 8
  %36 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %37 = icmp ne %struct.powercap_control_type* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.powercap_control_type* @ERR_PTR(i32 %40)
  store %struct.powercap_control_type* %41, %struct.powercap_control_type** %4, align 8
  br label %88

42:                                               ; preds = %33
  %43 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %44 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %30
  %46 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %47 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %46, i32 0, i32 5
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.powercap_control_type_ops*, %struct.powercap_control_type_ops** %7, align 8
  %50 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %51 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %50, i32 0, i32 4
  store %struct.powercap_control_type_ops* %49, %struct.powercap_control_type_ops** %51, align 8
  %52 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %53 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %52, i32 0, i32 1
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %56 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32* @powercap_class, i32** %57, align 8
  %58 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %59 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %58, i32 0, i32 3
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @dev_set_name(%struct.TYPE_3__* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %63 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %62, i32 0, i32 3
  %64 = call i32 @device_register(%struct.TYPE_3__* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %45
  %68 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %69 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %74 = call i32 @kfree(%struct.powercap_control_type* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %8, align 4
  %77 = call %struct.powercap_control_type* @ERR_PTR(i32 %76)
  store %struct.powercap_control_type* %77, %struct.powercap_control_type** %4, align 8
  br label %88

78:                                               ; preds = %45
  %79 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %80 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %79, i32 0, i32 2
  %81 = call i32 @idr_init(i32* %80)
  %82 = call i32 @mutex_lock(i32* @powercap_cntrl_list_lock)
  %83 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %84 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %83, i32 0, i32 1
  %85 = call i32 @list_add_tail(i32* %84, i32* @powercap_cntrl_list)
  %86 = call i32 @mutex_unlock(i32* @powercap_cntrl_list_lock)
  %87 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  store %struct.powercap_control_type* %87, %struct.powercap_control_type** %4, align 8
  br label %88

88:                                               ; preds = %78, %75, %38, %26, %11
  %89 = load %struct.powercap_control_type*, %struct.powercap_control_type** %4, align 8
  ret %struct.powercap_control_type* %89
}

declare dso_local %struct.powercap_control_type* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.powercap_control_type*, i32, i32) #1

declare dso_local %struct.powercap_control_type* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i8*) #1

declare dso_local i32 @device_register(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.powercap_control_type*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
