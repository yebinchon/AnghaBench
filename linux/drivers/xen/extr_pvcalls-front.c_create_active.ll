; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_create_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_create_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.sock_mapping = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, i8*, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i8** }
%struct.TYPE_7__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@PVCALLS_RING_ORDER = common dso_local global i32 0, align 4
@pvcalls_front_dev = common dso_local global %struct.TYPE_10__* null, align 8
@pvcalls_front_conn_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pvcalls-frontend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_mapping*, i32*)* @create_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_active(%struct.sock_mapping* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock_mapping*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock_mapping* %0, %struct.sock_mapping** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 -1, i32* %12, align 4
  %13 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %14 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 6
  %16 = call i32 @init_waitqueue_head(i32* %15)
  %17 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %18 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %47, %2
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PVCALLS_RING_ORDER, align 4
  %25 = shl i32 1, %24
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pvcalls_front_dev, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @virt_to_pfn(i8* %31)
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @pfn_to_gfn(i64 %35)
  %37 = call i8* @gnttab_grant_foreign_access(i32 %30, i32 %36, i32 0)
  %38 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %39 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %37, i8** %46, align 8
  br label %47

47:                                               ; preds = %27
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pvcalls_front_dev, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %55 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = bitcast %struct.TYPE_8__* %57 to i8*
  %59 = call i64 @virt_to_pfn(i8* %58)
  %60 = call i32 @pfn_to_gfn(i64 %59)
  %61 = call i8* @gnttab_grant_foreign_access(i32 %53, i32 %60, i32 0)
  %62 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %63 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  store i8* %61, i8** %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pvcalls_front_dev, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @xenbus_alloc_evtchn(%struct.TYPE_10__* %65, i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %50
  br label %96

71:                                               ; preds = %50
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @pvcalls_front_conn_handler, align 4
  %75 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %76 = call i32 @bind_evtchn_to_irqhandler(i32 %73, i32 %74, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.sock_mapping* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %7, align 4
  br label %96

81:                                               ; preds = %71
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %84 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %87 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %89 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = call i32 @mutex_init(i32* %90)
  %92 = load %struct.sock_mapping*, %struct.sock_mapping** %4, align 8
  %93 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = call i32 @mutex_init(i32* %94)
  store i32 0, i32* %3, align 4
  br label %107

96:                                               ; preds = %79, %70
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pvcalls_front_dev, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @xenbus_free_evtchn(%struct.TYPE_10__* %101, i32 %103)
  br label %105

105:                                              ; preds = %100, %96
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %81
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @gnttab_grant_foreign_access(i32, i32, i32) #1

declare dso_local i32 @pfn_to_gfn(i64) #1

declare dso_local i64 @virt_to_pfn(i8*) #1

declare dso_local i32 @xenbus_alloc_evtchn(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32, i32, i8*, %struct.sock_mapping*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @xenbus_free_evtchn(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
