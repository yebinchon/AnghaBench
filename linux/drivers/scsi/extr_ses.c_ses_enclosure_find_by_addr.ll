; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_enclosure_find_by_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_enclosure_find_by_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ses_component* }
%struct.ses_component = type { i64 }
%struct.efd = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enclosure_device*, i8*)* @ses_enclosure_find_by_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_enclosure_find_by_addr(%struct.enclosure_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enclosure_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.efd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ses_component*, align 8
  store %struct.enclosure_device* %0, %struct.enclosure_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.efd*
  store %struct.efd* %10, %struct.efd** %6, align 8
  %11 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %12 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.ses_component*, %struct.ses_component** %15, align 8
  %17 = icmp ne %struct.ses_component* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %59, %19
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %23 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %20
  %27 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %28 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.ses_component*, %struct.ses_component** %33, align 8
  store %struct.ses_component* %34, %struct.ses_component** %8, align 8
  %35 = load %struct.ses_component*, %struct.ses_component** %8, align 8
  %36 = getelementptr inbounds %struct.ses_component, %struct.ses_component* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.efd*, %struct.efd** %6, align 8
  %39 = getelementptr inbounds %struct.efd, %struct.efd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %59

43:                                               ; preds = %26
  %44 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.efd*, %struct.efd** %6, align 8
  %47 = getelementptr inbounds %struct.efd, %struct.efd* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i64 @enclosure_add_device(%struct.enclosure_device* %44, i32 %45, %struct.TYPE_4__* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.efd*, %struct.efd** %6, align 8
  %53 = getelementptr inbounds %struct.efd, %struct.efd* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* @KOBJ_CHANGE, align 4
  %57 = call i32 @kobject_uevent(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %43
  store i32 1, i32* %3, align 4
  br label %63

59:                                               ; preds = %42
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %20

62:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %58, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @enclosure_add_device(%struct.enclosure_device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
