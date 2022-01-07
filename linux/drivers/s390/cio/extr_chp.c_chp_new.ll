; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chp_id = type { i64, i32 }
%struct.channel_subsystem = type { i32, %struct.channel_path**, i64, i32 }
%struct.channel_path = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.chp_id }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@chp_attr_groups = common dso_local global i32 0, align 4
@chp_release = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"chp%x.%02x\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not register chp%x.%02x: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chp_new(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.chp_id, align 8
  %4 = alloca %struct.channel_subsystem*, align 8
  %5 = alloca %struct.channel_path*, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.chp_id* %3 to { i64, i32 }*
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.channel_subsystem* @css_by_id(i32 %11)
  store %struct.channel_subsystem* %12, %struct.channel_subsystem** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %14 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = bitcast %struct.chp_id* %3 to { i64, i32 }*
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @chp_is_registered(i64 %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %119

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.channel_path* @kzalloc(i32 48, i32 %25)
  store %struct.channel_path* %26, %struct.channel_path** %5, align 8
  %27 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %28 = icmp ne %struct.channel_path* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %119

32:                                               ; preds = %24
  %33 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %34 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %33, i32 0, i32 4
  %35 = bitcast %struct.chp_id* %34 to i8*
  %36 = bitcast %struct.chp_id* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %38 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %40 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %39, i32 0, i32 3
  %41 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %42 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i32* %40, i32** %43, align 8
  %44 = load i32, i32* @chp_attr_groups, align 4
  %45 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %46 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @chp_release, align 4
  %49 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %50 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %53 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %52, i32 0, i32 3
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %56 = call i32 @chp_update_desc(%struct.channel_path* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %32
  br label %116

60:                                               ; preds = %32
  %61 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %62 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %116

70:                                               ; preds = %60
  %71 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %72 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @dev_set_name(%struct.TYPE_7__* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %74, i64 %76)
  %78 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %79 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %78, i32 0, i32 1
  %80 = call i32 @device_register(%struct.TYPE_7__* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %85, i64 %87, i32 %88)
  %90 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %91 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %90, i32 0, i32 1
  %92 = call i32 @put_device(%struct.TYPE_7__* %91)
  br label %119

93:                                               ; preds = %70
  %94 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %95 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %100 = call i32 @chp_add_cmg_attr(%struct.channel_path* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %105 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %104, i32 0, i32 1
  %106 = call i32 @device_unregister(%struct.TYPE_7__* %105)
  br label %119

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %93
  %109 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %110 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %111 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %110, i32 0, i32 1
  %112 = load %struct.channel_path**, %struct.channel_path*** %111, align 8
  %113 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.channel_path*, %struct.channel_path** %112, i64 %114
  store %struct.channel_path* %109, %struct.channel_path** %115, align 8
  br label %119

116:                                              ; preds = %67, %59
  %117 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %118 = call i32 @kfree(%struct.channel_path* %117)
  br label %119

119:                                              ; preds = %116, %108, %103, %83, %29, %23
  %120 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %121 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %120, i32 0, i32 0
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local %struct.channel_subsystem* @css_by_id(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @chp_is_registered(i64, i32) #1

declare dso_local %struct.channel_path* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @chp_update_desc(%struct.channel_path*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32, i64) #1

declare dso_local i32 @device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local i32 @chp_add_cmg_attr(%struct.channel_path*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.channel_path*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
