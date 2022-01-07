; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_lun_dev_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_lun_dev_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_4__ = type { %struct.attribute }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.fsg_lun = type { i64, i64 }

@dev_attr_ro = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@dev_attr_file = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @fsg_lun_dev_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsg_lun_dev_is_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.fsg_lun*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kobject*, %struct.kobject** %5, align 8
  %11 = call %struct.device* @kobj_to_dev(%struct.kobject* %10)
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = call %struct.fsg_lun* @fsg_lun_from_dev(%struct.device* %12)
  store %struct.fsg_lun* %13, %struct.fsg_lun** %9, align 8
  %14 = load %struct.attribute*, %struct.attribute** %6, align 8
  %15 = icmp eq %struct.attribute* %14, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev_attr_ro, i32 0, i32 0)
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.fsg_lun*, %struct.fsg_lun** %9, align 8
  %18 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @S_IRUGO, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @S_IWUSR, align 4
  %25 = load i32, i32* @S_IRUGO, align 4
  %26 = or i32 %24, %25
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi i32 [ %22, %21 ], [ %26, %23 ]
  store i32 %28, i32* %4, align 4
  br label %49

29:                                               ; preds = %3
  %30 = load %struct.attribute*, %struct.attribute** %6, align 8
  %31 = icmp eq %struct.attribute* %30, getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev_attr_file, i32 0, i32 0)
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.fsg_lun*, %struct.fsg_lun** %9, align 8
  %34 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @S_IWUSR, align 4
  %39 = load i32, i32* @S_IRUGO, align 4
  %40 = or i32 %38, %39
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @S_IRUGO, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %40, %37 ], [ %42, %41 ]
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %29
  %46 = load %struct.attribute*, %struct.attribute** %6, align 8
  %47 = getelementptr inbounds %struct.attribute, %struct.attribute* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %43, %27
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.fsg_lun* @fsg_lun_from_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
