; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_role_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_role_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32 (%struct.cdns3*)* }

@USB_ROLE_DEVICE = common dso_local global i32 0, align 4
@CDNS3_ROLE_STATE_INACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3*)* @cdns3_role_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_role_stop(%struct.cdns3* %0) #0 {
  %2 = alloca %struct.cdns3*, align 8
  %3 = alloca i32, align 4
  store %struct.cdns3* %0, %struct.cdns3** %2, align 8
  %4 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %5 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @USB_ROLE_DEVICE, align 4
  %9 = icmp ugt i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %54

14:                                               ; preds = %1
  %15 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %16 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CDNS3_ROLE_STATE_INACTIVE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %54

27:                                               ; preds = %14
  %28 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %29 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %32 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (%struct.cdns3*)*, i32 (%struct.cdns3*)** %38, align 8
  %40 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %41 = call i32 %39(%struct.cdns3* %40)
  %42 = load i64, i64* @CDNS3_ROLE_STATE_INACTIVE, align 8
  %43 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %44 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %42, i64* %50, align 8
  %51 = load %struct.cdns3*, %struct.cdns3** %2, align 8
  %52 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  br label %54

54:                                               ; preds = %27, %26, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
