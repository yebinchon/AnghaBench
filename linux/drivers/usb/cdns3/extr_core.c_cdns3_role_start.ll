; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_role_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_role_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32 (%struct.cdns3*)* }

@USB_ROLE_DEVICE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CDNS3_ROLE_STATE_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3*, i32)* @cdns3_role_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_role_start(%struct.cdns3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdns3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cdns3* %0, %struct.cdns3** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @USB_ROLE_DEVICE, align 4
  %9 = icmp ugt i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

14:                                               ; preds = %2
  %15 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %16 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %20 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %22 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %25 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %14
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %80

35:                                               ; preds = %14
  %36 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %37 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CDNS3_ROLE_STATE_ACTIVE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %80

48:                                               ; preds = %35
  %49 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %50 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %53 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.cdns3*)*, i32 (%struct.cdns3*)** %59, align 8
  %61 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %62 = call i32 %60(%struct.cdns3* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %48
  %66 = load i64, i64* @CDNS3_ROLE_STATE_ACTIVE, align 8
  %67 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %68 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i64 %66, i64* %74, align 8
  br label %75

75:                                               ; preds = %65, %48
  %76 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %77 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %47, %32, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
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
