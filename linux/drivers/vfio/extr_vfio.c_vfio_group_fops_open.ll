; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_fops_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_fops_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.vfio_group* }
%struct.vfio_group = type { %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vfio_group_fops_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_group_fops_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vfio_group*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  %10 = call %struct.vfio_group* @vfio_group_get_from_minor(i32 %9)
  store %struct.vfio_group* %10, %struct.vfio_group** %6, align 8
  %11 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %12 = icmp ne %struct.vfio_group* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %18 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %23 = call i32 @capable(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %27 = call i32 @vfio_group_put(%struct.vfio_group* %26)
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %21, %16
  %31 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %32 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %31, i32 0, i32 1
  %33 = call i32 @atomic_cmpxchg(i32* %32, i32 0, i32 1)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %38 = call i32 @vfio_group_put(%struct.vfio_group* %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %69

41:                                               ; preds = %30
  %42 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %43 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %48 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %47, i32 0, i32 1
  %49 = call i32 @atomic_dec(i32* %48)
  %50 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %51 = call i32 @vfio_group_put(%struct.vfio_group* %50)
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %69

54:                                               ; preds = %41
  %55 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %56 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @WARN_ON(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %63 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %62, i32 0, i32 0
  %64 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(%struct.TYPE_2__* %63)
  br label %65

65:                                               ; preds = %61, %54
  %66 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %67 = load %struct.file*, %struct.file** %5, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 0
  store %struct.vfio_group* %66, %struct.vfio_group** %68, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %46, %36, %25, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.vfio_group* @vfio_group_get_from_minor(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @vfio_group_put(%struct.vfio_group*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
