; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_lun_drop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_lun_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.config_item* }
%struct.config_item = type { i32 }
%struct.fsg_lun_opts = type { i64, i32 }
%struct.fsg_opts = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_item*)* @fsg_lun_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsg_lun_drop(%struct.config_group* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.fsg_lun_opts*, align 8
  %6 = alloca %struct.fsg_opts*, align 8
  %7 = alloca %struct.config_item*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %8 = load %struct.config_item*, %struct.config_item** %4, align 8
  %9 = call %struct.fsg_lun_opts* @to_fsg_lun_opts(%struct.config_item* %8)
  store %struct.fsg_lun_opts* %9, %struct.fsg_lun_opts** %5, align 8
  %10 = load %struct.config_group*, %struct.config_group** %3, align 8
  %11 = getelementptr inbounds %struct.config_group, %struct.config_group* %10, i32 0, i32 0
  %12 = call %struct.fsg_opts* @to_fsg_opts(%struct.TYPE_6__* %11)
  store %struct.fsg_opts* %12, %struct.fsg_opts** %6, align 8
  %13 = load %struct.fsg_opts*, %struct.fsg_opts** %6, align 8
  %14 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.fsg_opts*, %struct.fsg_opts** %6, align 8
  %17 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.config_group*, %struct.config_group** %3, align 8
  %22 = getelementptr inbounds %struct.config_group, %struct.config_group* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.config_item*, %struct.config_item** %25, align 8
  store %struct.config_item* %26, %struct.config_item** %7, align 8
  %27 = load %struct.config_item*, %struct.config_item** %7, align 8
  %28 = call i32 @unregister_gadget_item(%struct.config_item* %27)
  br label %29

29:                                               ; preds = %20, %2
  %30 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %5, align 8
  %31 = getelementptr inbounds %struct.fsg_lun_opts, %struct.fsg_lun_opts* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @fsg_common_remove_lun(i32 %32)
  %34 = load %struct.fsg_opts*, %struct.fsg_opts** %6, align 8
  %35 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %5, align 8
  %40 = getelementptr inbounds %struct.fsg_lun_opts, %struct.fsg_lun_opts* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  store i32* null, i32** %42, align 8
  %43 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %5, align 8
  %44 = getelementptr inbounds %struct.fsg_lun_opts, %struct.fsg_lun_opts* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.fsg_opts*, %struct.fsg_opts** %6, align 8
  %46 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.config_item*, %struct.config_item** %4, align 8
  %49 = call i32 @config_item_put(%struct.config_item* %48)
  ret void
}

declare dso_local %struct.fsg_lun_opts* @to_fsg_lun_opts(%struct.config_item*) #1

declare dso_local %struct.fsg_opts* @to_fsg_opts(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unregister_gadget_item(%struct.config_item*) #1

declare dso_local i32 @fsg_common_remove_lun(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
