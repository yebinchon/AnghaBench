; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_fixup_iowidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_fixup_iowidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_8__*, %struct.pcmcia_socket* }
%struct.TYPE_8__ = type { i32 }
%struct.pcmcia_socket = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 (%struct.pcmcia_socket*, %struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"fixup iowidth to 8bit\0A\00", align 1
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@CONFIG_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"No card? Config not locked?\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@io_speed = common dso_local global i32 0, align 4
@MAX_IO_WIN = common dso_local global i32 0, align 4
@MAP_ACTIVE = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_fixup_iowidth(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.TYPE_12__, align 4
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 2
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %9, align 8
  store %struct.pcmcia_socket* %10, %struct.pcmcia_socket** %3, align 8
  %11 = bitcast %struct.TYPE_12__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 40, i1 false)
  %12 = bitcast i8* %11 to %struct.TYPE_12__*
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 0
  %19 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SOCKET_PRESENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CONFIG_LOCKED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %26, %1
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EACCES, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %109

41:                                               ; preds = %26
  %42 = load i32, i32* @io_speed, align 4
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 5
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %105, %41
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MAX_IO_WIN, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %44
  %49 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %50 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %49, i32 0, i32 3
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %105

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @MAP_ACTIVE, align 4
  %65 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %69 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %68, i32 0, i32 3
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 4
  store i32 %77, i32* %78, align 4
  %79 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %80 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %79, i32 0, i32 3
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  store i32 %88, i32* %89, align 4
  %90 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %91 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %90, i32 0, i32 2
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_12__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_12__*)** %93, align 8
  %95 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %96 = call i32 %94(%struct.pcmcia_socket* %95, %struct.TYPE_12__* %4)
  %97 = call i32 @msleep(i32 40)
  %98 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %99 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %98, i32 0, i32 2
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_12__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_12__*)** %101, align 8
  %103 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %104 = call i32 %102(%struct.pcmcia_socket* %103, %struct.TYPE_12__* %5)
  br label %105

105:                                              ; preds = %59, %58
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %44

108:                                              ; preds = %44
  br label %109

109:                                              ; preds = %108, %35
  %110 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %111 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %110, i32 0, i32 1
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @dev_dbg(i32*, i8*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
