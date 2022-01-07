; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_set_status_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_set_status_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_attr = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@status_attrs = common dso_local global %struct.status_attr* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@MAX_STATUS_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"status.%d\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@status_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_status_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_status_attr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.status_attr*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.status_attr*, %struct.status_attr** @status_attrs, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.status_attr, %struct.status_attr* %4, i64 %6
  store %struct.status_attr* %7, %struct.status_attr** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.status_attr*, %struct.status_attr** %3, align 8
  %12 = getelementptr inbounds %struct.status_attr, %struct.status_attr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcpy(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.status_attr*, %struct.status_attr** %3, align 8
  %17 = getelementptr inbounds %struct.status_attr, %struct.status_attr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @MAX_STATUS_NAME, align 8
  %20 = add nsw i64 %19, 1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @snprintf(i32 %18, i64 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %15, %10
  %24 = load %struct.status_attr*, %struct.status_attr** %3, align 8
  %25 = getelementptr inbounds %struct.status_attr, %struct.status_attr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.status_attr*, %struct.status_attr** %3, align 8
  %28 = getelementptr inbounds %struct.status_attr, %struct.status_attr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @S_IRUGO, align 4
  %32 = load %struct.status_attr*, %struct.status_attr** %3, align 8
  %33 = getelementptr inbounds %struct.status_attr, %struct.status_attr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @status_show, align 4
  %37 = load %struct.status_attr*, %struct.status_attr** %3, align 8
  %38 = getelementptr inbounds %struct.status_attr, %struct.status_attr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.status_attr*, %struct.status_attr** %3, align 8
  %41 = getelementptr inbounds %struct.status_attr, %struct.status_attr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @sysfs_attr_init(%struct.TYPE_4__* %42)
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
