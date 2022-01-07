; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_get_device_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_get_device_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.vfio_group = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.vfio_device = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32)*, i32 (i32)* }
%struct.file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"[vfio-device]\00", align 1
@vfio_device_fops = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@FMODE_LSEEK = common dso_local global i32 0, align 4
@FMODE_PREAD = common dso_local global i32 0, align 4
@FMODE_PWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"vfio-noiommu device opened by user (%s:%d)\0A\00", align 1
@current = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_group*, i8*)* @vfio_group_get_device_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_group_get_device_fd(%struct.vfio_group* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vfio_device*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  store %struct.vfio_group* %0, %struct.vfio_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %10 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %9, i32 0, i32 1
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp eq i64 0, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %15 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %22 = call i32 @vfio_group_viable(%struct.vfio_group* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %13, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %138

27:                                               ; preds = %20
  %28 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %29 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %34 = call i32 @capable(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %138

39:                                               ; preds = %32, %27
  %40 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call %struct.vfio_device* @vfio_device_get_from_name(%struct.vfio_group* %40, i8* %41)
  store %struct.vfio_device* %42, %struct.vfio_device** %6, align 8
  %43 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %44 = icmp ne %struct.vfio_device* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %138

48:                                               ; preds = %39
  %49 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %50 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %55 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %53(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %62 = call i32 @vfio_device_put(%struct.vfio_device* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %138

64:                                               ; preds = %48
  %65 = load i32, i32* @O_CLOEXEC, align 4
  %66 = call i32 @get_unused_fd_flags(i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %71 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32 (i32)*, i32 (i32)** %73, align 8
  %75 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %76 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 %74(i32 %77)
  %79 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %80 = call i32 @vfio_device_put(%struct.vfio_device* %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %138

82:                                               ; preds = %64
  %83 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %84 = load i32, i32* @O_RDWR, align 4
  %85 = call %struct.file* @anon_inode_getfile(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* @vfio_device_fops, %struct.vfio_device* %83, i32 %84)
  store %struct.file* %85, %struct.file** %7, align 8
  %86 = load %struct.file*, %struct.file** %7, align 8
  %87 = call i64 @IS_ERR(%struct.file* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @put_unused_fd(i32 %90)
  %92 = load %struct.file*, %struct.file** %7, align 8
  %93 = call i32 @PTR_ERR(%struct.file* %92)
  store i32 %93, i32* %8, align 4
  %94 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %95 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32 (i32)*, i32 (i32)** %97, align 8
  %99 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %100 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 %98(i32 %101)
  %103 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %104 = call i32 @vfio_device_put(%struct.vfio_device* %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %138

106:                                              ; preds = %82
  %107 = load i32, i32* @FMODE_LSEEK, align 4
  %108 = load i32, i32* @FMODE_PREAD, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @FMODE_PWRITE, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.file*, %struct.file** %7, align 8
  %113 = getelementptr inbounds %struct.file, %struct.file* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %117 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %116, i32 0, i32 1
  %118 = call i32 @atomic_inc(i32* %117)
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.file*, %struct.file** %7, align 8
  %121 = call i32 @fd_install(i32 %119, %struct.file* %120)
  %122 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %123 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %106
  %127 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %128 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %134 = call i32 @task_pid_nr(%struct.TYPE_7__* %133)
  %135 = call i32 @dev_warn(i32 %129, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %134)
  br label %136

136:                                              ; preds = %126, %106
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %89, %69, %60, %45, %36, %24
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @vfio_group_viable(%struct.vfio_group*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.vfio_device* @vfio_device_get_from_name(%struct.vfio_group*, i8*) #1

declare dso_local i32 @vfio_device_put(%struct.vfio_device*) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.file* @anon_inode_getfile(i8*, i32*, %struct.vfio_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
