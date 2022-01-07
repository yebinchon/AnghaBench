; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/extr_vsoc.c_do_destroy_fd_scoped_permission.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/extr_vsoc.c_do_destroy_fd_scoped_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vsoc_device_region = type { i32, i64 }
%struct.fd_scoped_permission = type { i32, i64, i32, i32 }

@VSOC_REGION_FREE = common dso_local global i32 0, align 4
@vsoc_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [47 x i8] c"%x-%x: owner (%s) %x: expected to be %x was %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsoc_device_region*, %struct.fd_scoped_permission*)* @do_destroy_fd_scoped_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_destroy_fd_scoped_permission(%struct.vsoc_device_region* %0, %struct.fd_scoped_permission* %1) #0 {
  %3 = alloca %struct.vsoc_device_region*, align 8
  %4 = alloca %struct.fd_scoped_permission*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.vsoc_device_region* %0, %struct.vsoc_device_region** %3, align 8
  store %struct.fd_scoped_permission* %1, %struct.fd_scoped_permission** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.fd_scoped_permission*, %struct.fd_scoped_permission** %4, align 8
  %8 = icmp ne %struct.fd_scoped_permission* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %48

10:                                               ; preds = %2
  %11 = load %struct.vsoc_device_region*, %struct.vsoc_device_region** %3, align 8
  %12 = getelementptr inbounds %struct.vsoc_device_region, %struct.vsoc_device_region* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.fd_scoped_permission*, %struct.fd_scoped_permission** %4, align 8
  %15 = getelementptr inbounds %struct.fd_scoped_permission, %struct.fd_scoped_permission* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = call i64 @shm_off_to_virtual_addr(i64 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @VSOC_REGION_FREE, align 4
  %22 = call i32 @atomic_xchg(i32* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.fd_scoped_permission*, %struct.fd_scoped_permission** %4, align 8
  %25 = getelementptr inbounds %struct.fd_scoped_permission, %struct.fd_scoped_permission* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %10
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vsoc_dev, i32 0, i32 0), align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.fd_scoped_permission*, %struct.fd_scoped_permission** %4, align 8
  %32 = getelementptr inbounds %struct.fd_scoped_permission, %struct.fd_scoped_permission* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fd_scoped_permission*, %struct.fd_scoped_permission** %4, align 8
  %35 = getelementptr inbounds %struct.fd_scoped_permission, %struct.fd_scoped_permission* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vsoc_device_region*, %struct.vsoc_device_region** %3, align 8
  %38 = getelementptr inbounds %struct.vsoc_device_region, %struct.vsoc_device_region* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.fd_scoped_permission*, %struct.fd_scoped_permission** %4, align 8
  %41 = getelementptr inbounds %struct.fd_scoped_permission, %struct.fd_scoped_permission* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.fd_scoped_permission*, %struct.fd_scoped_permission** %4, align 8
  %44 = getelementptr inbounds %struct.fd_scoped_permission, %struct.fd_scoped_permission* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i64 %42, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %9, %28, %10
  ret void
}

declare dso_local i64 @shm_off_to_virtual_addr(i64) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
