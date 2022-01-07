; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/roles/extr_class.c_usb_role_switch_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/roles/extr_class.c_usb_role_switch_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_role_switch = type { %struct.TYPE_4__, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.usb_role_switch_desc = type { i32, i32, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@role_class = common dso_local global i32 0, align 4
@usb_role_dev_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s-role-switch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_role_switch* @usb_role_switch_register(%struct.device* %0, %struct.usb_role_switch_desc* %1) #0 {
  %3 = alloca %struct.usb_role_switch*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usb_role_switch_desc*, align 8
  %6 = alloca %struct.usb_role_switch*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.usb_role_switch_desc* %1, %struct.usb_role_switch_desc** %5, align 8
  %8 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %5, align 8
  %9 = icmp ne %struct.usb_role_switch_desc* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %5, align 8
  %12 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.usb_role_switch* @ERR_PTR(i32 %17)
  store %struct.usb_role_switch* %18, %struct.usb_role_switch** %3, align 8
  br label %97

19:                                               ; preds = %10
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.usb_role_switch* @kzalloc(i32 64, i32 %20)
  store %struct.usb_role_switch* %21, %struct.usb_role_switch** %6, align 8
  %22 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %23 = icmp ne %struct.usb_role_switch* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.usb_role_switch* @ERR_PTR(i32 %26)
  store %struct.usb_role_switch* %27, %struct.usb_role_switch** %3, align 8
  br label %97

28:                                               ; preds = %19
  %29 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %30 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %29, i32 0, i32 7
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %5, align 8
  %33 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %36 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %5, align 8
  %38 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %41 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %5, align 8
  %43 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %46 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %5, align 8
  %48 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %51 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %5, align 8
  %53 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %56 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %5, align 8
  %58 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %61 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %64 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store %struct.device* %62, %struct.device** %65, align 8
  %66 = load %struct.usb_role_switch_desc*, %struct.usb_role_switch_desc** %5, align 8
  %67 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %70 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @role_class, align 4
  %73 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %74 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %77 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32* @usb_role_dev_type, i32** %78, align 8
  %79 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %80 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %79, i32 0, i32 0
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i32 @dev_name(%struct.device* %81)
  %83 = call i32 @dev_set_name(%struct.TYPE_4__* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %85 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %84, i32 0, i32 0
  %86 = call i32 @device_register(%struct.TYPE_4__* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %28
  %90 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  %91 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %90, i32 0, i32 0
  %92 = call i32 @put_device(%struct.TYPE_4__* %91)
  %93 = load i32, i32* %7, align 4
  %94 = call %struct.usb_role_switch* @ERR_PTR(i32 %93)
  store %struct.usb_role_switch* %94, %struct.usb_role_switch** %3, align 8
  br label %97

95:                                               ; preds = %28
  %96 = load %struct.usb_role_switch*, %struct.usb_role_switch** %6, align 8
  store %struct.usb_role_switch* %96, %struct.usb_role_switch** %3, align 8
  br label %97

97:                                               ; preds = %95, %89, %24, %15
  %98 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  ret %struct.usb_role_switch* %98
}

declare dso_local %struct.usb_role_switch* @ERR_PTR(i32) #1

declare dso_local %struct.usb_role_switch* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
