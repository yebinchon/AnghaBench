; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c__remove_device_from_lcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c__remove_device_from_lcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_lcu = type { i32 }
%struct.dasd_device = type { i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.alias_pav_group* }
%struct.alias_pav_group = type { %struct.dasd_device*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alias_lcu*, %struct.dasd_device*)* @_remove_device_from_lcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_remove_device_from_lcu(%struct.alias_lcu* %0, %struct.dasd_device* %1) #0 {
  %3 = alloca %struct.alias_lcu*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  %6 = alloca %struct.alias_pav_group*, align 8
  store %struct.alias_lcu* %0, %struct.alias_lcu** %3, align 8
  store %struct.dasd_device* %1, %struct.dasd_device** %4, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 1
  %9 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  store %struct.dasd_eckd_private* %9, %struct.dasd_eckd_private** %5, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 0
  %12 = load %struct.alias_lcu*, %struct.alias_lcu** %3, align 8
  %13 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %12, i32 0, i32 0
  %14 = call i32 @list_move(i32* %11, i32* %13)
  %15 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %16 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %15, i32 0, i32 0
  %17 = load %struct.alias_pav_group*, %struct.alias_pav_group** %16, align 8
  store %struct.alias_pav_group* %17, %struct.alias_pav_group** %6, align 8
  %18 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %19 = icmp ne %struct.alias_pav_group* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %23 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %22, i32 0, i32 0
  store %struct.alias_pav_group* null, %struct.alias_pav_group** %23, align 8
  %24 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %25 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %24, i32 0, i32 3
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %30 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %29, i32 0, i32 2
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %35 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %34, i32 0, i32 1
  %36 = call i32 @list_del(i32* %35)
  %37 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %38 = call i32 @kfree(%struct.alias_pav_group* %37)
  br label %48

39:                                               ; preds = %28, %21
  %40 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %41 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %40, i32 0, i32 0
  %42 = load %struct.dasd_device*, %struct.dasd_device** %41, align 8
  %43 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %44 = icmp eq %struct.dasd_device* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %47 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %46, i32 0, i32 0
  store %struct.dasd_device* null, %struct.dasd_device** %47, align 8
  br label %48

48:                                               ; preds = %20, %33, %45, %39
  ret void
}

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.alias_pav_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
