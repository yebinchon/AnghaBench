; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc_sch.c_chsc_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc_sch.c_chsc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_async_area = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.chsc_request = type { i32 }
%struct.chsc_private = type { %struct.chsc_request* }
%struct.subchannel = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_DEFAULT_KEY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"schid\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cc:%d\00", align 1
@SCSW_FCTL_START_FUNC = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"chsc on 0.%x.%04x returned cc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chsc_async_area*, %struct.chsc_request*)* @chsc_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chsc_async(%struct.chsc_async_area* %0, %struct.chsc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chsc_async_area*, align 8
  %5 = alloca %struct.chsc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chsc_private*, align 8
  %8 = alloca %struct.subchannel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [10 x i8], align 1
  store %struct.chsc_async_area* %0, %struct.chsc_async_area** %4, align 8
  store %struct.chsc_request* %1, %struct.chsc_request** %5, align 8
  store %struct.subchannel* null, %struct.subchannel** %8, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %14 = ashr i32 %13, 4
  %15 = load %struct.chsc_async_area*, %struct.chsc_async_area** %4, align 8
  %16 = getelementptr inbounds %struct.chsc_async_area, %struct.chsc_async_area* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  br label %18

18:                                               ; preds = %111, %34, %2
  %19 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %20 = call %struct.subchannel* @chsc_get_next_subchannel(%struct.subchannel* %19)
  store %struct.subchannel* %20, %struct.subchannel** %8, align 8
  %21 = icmp ne %struct.subchannel* %20, null
  br i1 %21, label %22, label %112

22:                                               ; preds = %18
  %23 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %24 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @spin_lock(i32 %25)
  %27 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %28 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %27, i32 0, i32 0
  %29 = call %struct.chsc_private* @dev_get_drvdata(i32* %28)
  store %struct.chsc_private* %29, %struct.chsc_private** %7, align 8
  %30 = load %struct.chsc_private*, %struct.chsc_private** %7, align 8
  %31 = getelementptr inbounds %struct.chsc_private, %struct.chsc_private* %30, i32 0, i32 0
  %32 = load %struct.chsc_request*, %struct.chsc_request** %31, align 8
  %33 = icmp ne %struct.chsc_request* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %36 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @spin_unlock(i32 %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %18

41:                                               ; preds = %22
  %42 = load %struct.chsc_async_area*, %struct.chsc_async_area** %4, align 8
  %43 = getelementptr inbounds %struct.chsc_async_area, %struct.chsc_async_area* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %46 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %45, i32 0, i32 1
  %47 = bitcast %struct.TYPE_10__* %44 to i8*
  %48 = bitcast %struct.TYPE_10__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  %49 = call i32 @CHSC_LOG(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %51 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %50, i32 0, i32 1
  %52 = call i32 @CHSC_LOG_HEX(i32 2, %struct.TYPE_10__* %51, i32 8)
  %53 = load %struct.chsc_async_area*, %struct.chsc_async_area** %4, align 8
  %54 = call i32 @chsc(%struct.chsc_async_area* %53)
  store i32 %54, i32* %6, align 4
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @snprintf(i8* %55, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %59 = call i32 @CHSC_LOG(i32 2, i8* %58)
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %79 [
    i32 0, label %61
    i32 1, label %62
    i32 2, label %76
  ]

61:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %82

62:                                               ; preds = %41
  %63 = load i32, i32* @SCSW_FCTL_START_FUNC, align 4
  %64 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %65 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %63
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @EINPROGRESS, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  %73 = load %struct.chsc_request*, %struct.chsc_request** %5, align 8
  %74 = load %struct.chsc_private*, %struct.chsc_private** %7, align 8
  %75 = getelementptr inbounds %struct.chsc_private, %struct.chsc_private* %74, i32 0, i32 0
  store %struct.chsc_request* %73, %struct.chsc_request** %75, align 8
  br label %82

76:                                               ; preds = %41
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  br label %82

79:                                               ; preds = %41
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %76, %62, %61
  %83 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %84 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @spin_unlock(i32 %85)
  %87 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %88 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %92 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @CHSC_MSG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %94, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @EINPROGRESS, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %82
  %102 = load i32, i32* @EINPROGRESS, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %114

104:                                              ; preds = %82
  %105 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %106 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %105, i32 0, i32 0
  %107 = call i32 @put_device(i32* %106)
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %114

111:                                              ; preds = %104
  br label %18

112:                                              ; preds = %18
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %110, %101
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.subchannel* @chsc_get_next_subchannel(%struct.subchannel*) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local %struct.chsc_private* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_unlock(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CHSC_LOG(i32, i8*) #1

declare dso_local i32 @CHSC_LOG_HEX(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @chsc(%struct.chsc_async_area*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @CHSC_MSG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
