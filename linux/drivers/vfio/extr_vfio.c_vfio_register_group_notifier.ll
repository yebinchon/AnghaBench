; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_register_group_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_register_group_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_group = type { i64, i32 }
%struct.notifier_block = type { i32 }

@VFIO_GROUP_NOTIFY_SET_KVM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_group*, i64*, %struct.notifier_block*)* @vfio_register_group_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_register_group_notifier(%struct.vfio_group* %0, i64* %1, %struct.notifier_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_group*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.notifier_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vfio_group* %0, %struct.vfio_group** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.notifier_block* %2, %struct.notifier_block** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64*, i64** %6, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VFIO_GROUP_NOTIFY_SET_KVM, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i64, i64* @VFIO_GROUP_NOTIFY_SET_KVM, align 8
  %18 = xor i64 %17, -1
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %20, %18
  store i64 %21, i64* %19, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %16
  %29 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %30 = call i32 @vfio_group_add_container_user(%struct.vfio_group* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %28
  %37 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %38 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %37, i32 0, i32 1
  %39 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %40 = call i32 @blocking_notifier_chain_register(i32* %38, %struct.notifier_block* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %48 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %53 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %52, i32 0, i32 1
  %54 = load i64, i64* @VFIO_GROUP_NOTIFY_SET_KVM, align 8
  %55 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %56 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @blocking_notifier_call_chain(i32* %53, i64 %54, i64 %57)
  br label %59

59:                                               ; preds = %51, %46, %43, %36
  %60 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %61 = call i32 @vfio_group_try_dissolve_container(%struct.vfio_group* %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %33, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @vfio_group_add_container_user(%struct.vfio_group*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.notifier_block*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i64, i64) #1

declare dso_local i32 @vfio_group_try_dissolve_container(%struct.vfio_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
