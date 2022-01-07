; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_deregister_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_deregister_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32, i32, %struct.most_channel*, i32 }
%struct.most_channel = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, %struct.most_channel** }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32)* }

@.str = private unnamed_addr constant [30 x i8] c"deregistering device %s (%s)\0A\00", align 1
@mdev_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @most_deregister_interface(%struct.most_interface* %0) #0 {
  %2 = alloca %struct.most_interface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.most_channel*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %2, align 8
  %5 = load %struct.most_interface*, %struct.most_interface** %2, align 8
  %6 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %5, i32 0, i32 1
  %7 = call i32 @dev_name(i32* %6)
  %8 = load %struct.most_interface*, %struct.most_interface** %2, align 8
  %9 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %82, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.most_interface*, %struct.most_interface** %2, align 8
  %15 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %85

18:                                               ; preds = %12
  %19 = load %struct.most_interface*, %struct.most_interface** %2, align 8
  %20 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %19, i32 0, i32 2
  %21 = load %struct.most_channel*, %struct.most_channel** %20, align 8
  %22 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %21, i32 0, i32 7
  %23 = load %struct.most_channel**, %struct.most_channel*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.most_channel*, %struct.most_channel** %23, i64 %25
  %27 = load %struct.most_channel*, %struct.most_channel** %26, align 8
  store %struct.most_channel* %27, %struct.most_channel** %4, align 8
  %28 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %29 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %18
  %34 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %35 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %38, align 8
  %40 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %41 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %44 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %39(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %33, %18
  %48 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %49 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %55 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32 (i32, i32)*, i32 (i32, i32)** %58, align 8
  %60 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %61 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %64 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %59(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %53, %47
  %68 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %69 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %70, align 8
  %71 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %72 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %73, align 8
  %74 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %75 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %74, i32 0, i32 2
  %76 = call i32 @list_del(i32* %75)
  %77 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %78 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %77, i32 0, i32 1
  %79 = call i32 @device_unregister(i32* %78)
  %80 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %81 = call i32 @kfree(%struct.most_channel* %80)
  br label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %12

85:                                               ; preds = %12
  %86 = load %struct.most_interface*, %struct.most_interface** %2, align 8
  %87 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %86, i32 0, i32 2
  %88 = load %struct.most_channel*, %struct.most_channel** %87, align 8
  %89 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ida_simple_remove(i32* @mdev_id, i32 %90)
  %92 = load %struct.most_interface*, %struct.most_interface** %2, align 8
  %93 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %92, i32 0, i32 2
  %94 = load %struct.most_channel*, %struct.most_channel** %93, align 8
  %95 = call i32 @kfree(%struct.most_channel* %94)
  %96 = load %struct.most_interface*, %struct.most_interface** %2, align 8
  %97 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %96, i32 0, i32 1
  %98 = call i32 @device_unregister(i32* %97)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.most_channel*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
