; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_ext_prop_drop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_ext_prop_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.config_item = type { i32 }
%struct.usb_os_desc_ext_prop = type { i64, i64, i32, i32 }
%struct.usb_os_desc = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_item*)* @ext_prop_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext_prop_drop(%struct.config_group* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.usb_os_desc_ext_prop*, align 8
  %6 = alloca %struct.usb_os_desc*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %7 = load %struct.config_item*, %struct.config_item** %4, align 8
  %8 = call %struct.usb_os_desc_ext_prop* @to_usb_os_desc_ext_prop(%struct.config_item* %7)
  store %struct.usb_os_desc_ext_prop* %8, %struct.usb_os_desc_ext_prop** %5, align 8
  %9 = load %struct.config_group*, %struct.config_group** %3, align 8
  %10 = getelementptr inbounds %struct.config_group, %struct.config_group* %9, i32 0, i32 0
  %11 = call %struct.usb_os_desc* @to_usb_os_desc(i32* %10)
  store %struct.usb_os_desc* %11, %struct.usb_os_desc** %6, align 8
  %12 = load %struct.usb_os_desc*, %struct.usb_os_desc** %6, align 8
  %13 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.usb_os_desc*, %struct.usb_os_desc** %6, align 8
  %18 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @mutex_lock(i64 %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %5, align 8
  %23 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %22, i32 0, i32 3
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.usb_os_desc*, %struct.usb_os_desc** %6, align 8
  %26 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %5, align 8
  %30 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kfree(i32 %31)
  %33 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %5, align 8
  %34 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %5, align 8
  %37 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = add nsw i64 %39, 14
  %41 = load %struct.usb_os_desc*, %struct.usb_os_desc** %6, align 8
  %42 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  %47 = load %struct.usb_os_desc*, %struct.usb_os_desc** %6, align 8
  %48 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %21
  %52 = load %struct.usb_os_desc*, %struct.usb_os_desc** %6, align 8
  %53 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @mutex_unlock(i64 %54)
  br label %56

56:                                               ; preds = %51, %21
  %57 = load %struct.config_item*, %struct.config_item** %4, align 8
  %58 = call i32 @config_item_put(%struct.config_item* %57)
  ret void
}

declare dso_local %struct.usb_os_desc_ext_prop* @to_usb_os_desc_ext_prop(%struct.config_item*) #1

declare dso_local %struct.usb_os_desc* @to_usb_os_desc(i32*) #1

declare dso_local i32 @mutex_lock(i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mutex_unlock(i64) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
