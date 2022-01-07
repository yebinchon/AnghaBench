; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_sys-hypervisor.c_buildid_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_sys-hypervisor.c_buildid_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hyp_sysfs_attr = type { i32 }
%struct.xen_build_id = type { i32, i8* }

@XENVER_build_id = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"<denied>\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hyp_sysfs_attr*, i8*)* @buildid_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buildid_show(%struct.hyp_sysfs_attr* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hyp_sysfs_attr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xen_build_id*, align 8
  store %struct.hyp_sysfs_attr* %0, %struct.hyp_sysfs_attr** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @XENVER_build_id, align 4
  %9 = call i32 @HYPERVISOR_xen_version(i32 %8, %struct.xen_build_id* null)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 16, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.xen_build_id* @kmalloc(i32 %26, i32 %27)
  store %struct.xen_build_id* %28, %struct.xen_build_id** %7, align 8
  %29 = load %struct.xen_build_id*, %struct.xen_build_id** %7, align 8
  %30 = icmp ne %struct.xen_build_id* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.xen_build_id*, %struct.xen_build_id** %7, align 8
  %37 = getelementptr inbounds %struct.xen_build_id, %struct.xen_build_id* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @XENVER_build_id, align 4
  %39 = load %struct.xen_build_id*, %struct.xen_build_id** %7, align 8
  %40 = call i32 @HYPERVISOR_xen_version(i32 %38, %struct.xen_build_id* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.xen_build_id*, %struct.xen_build_id** %7, align 8
  %46 = getelementptr inbounds %struct.xen_build_id, %struct.xen_build_id* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %43, %34
  %50 = load %struct.xen_build_id*, %struct.xen_build_id** %7, align 8
  %51 = call i32 @kfree(%struct.xen_build_id* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %31, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @HYPERVISOR_xen_version(i32, %struct.xen_build_id*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local %struct.xen_build_id* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.xen_build_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
