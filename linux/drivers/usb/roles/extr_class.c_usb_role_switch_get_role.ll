; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/roles/extr_class.c_usb_role_switch_get_role.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/roles/extr_class.c_usb_role_switch_get_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_role_switch = type { i32 (i32)*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@USB_ROLE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_role_switch_get_role(%struct.usb_role_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_role_switch*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_role_switch* %0, %struct.usb_role_switch** %3, align 8
  %5 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %6 = call i64 @IS_ERR_OR_NULL(%struct.usb_role_switch* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @USB_ROLE_NONE, align 4
  store i32 %9, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %12 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %15 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %14, i32 0, i32 0
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = icmp ne i32 (i32)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %20 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %19, i32 0, i32 0
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %23 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %21(i32 %25)
  store i32 %26, i32* %4, align 4
  br label %31

27:                                               ; preds = %10
  %28 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %29 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %18
  %32 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %33 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %32, i32 0, i32 2
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.usb_role_switch*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
