; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_release_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_release_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.pcmcia_device = type { i64, %struct.TYPE_10__*, %struct.pcmcia_socket* }
%struct.TYPE_10__ = type { i32 }
%struct.pcmcia_socket = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32 (%struct.pcmcia_socket*, %struct.TYPE_9__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_11__*)* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@__const.pcmcia_release_configuration.io = private unnamed_addr constant %struct.TYPE_9__ { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0 }, align 4
@SS_OUTPUT_ENA = common dso_local global i32 0, align 4
@CONFIG_LOCKED = common dso_local global i32 0, align 4
@CONFIG_IO_REQ = common dso_local global i32 0, align 4
@MAX_IO_WIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_release_configuration(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %7 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_9__* @__const.pcmcia_release_configuration.io to i8*), i64 24, i1 false)
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 2
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %9, align 8
  store %struct.pcmcia_socket* %10, %struct.pcmcia_socket** %4, align 8
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %5, align 8
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %1
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %21
  %30 = load i32, i32* @SS_OUTPUT_ENA, align 4
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %32 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %35 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %38 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %41 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_11__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_11__*)** %43, align 8
  %45 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %46 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %47 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %46, i32 0, i32 4
  %48 = call i32 %44(%struct.pcmcia_socket* %45, %struct.TYPE_11__* %47)
  br label %49

49:                                               ; preds = %29, %21
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CONFIG_LOCKED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %121

57:                                               ; preds = %50
  %58 = load i32, i32* @CONFIG_LOCKED, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CONFIG_IO_REQ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %120

70:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %116, %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @MAX_IO_WIN, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %119

75:                                               ; preds = %71
  %76 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %77 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %76, i32 0, i32 3
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  br label %116

86:                                               ; preds = %75
  %87 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %88 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* %93, align 8
  %96 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %97 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %96, i32 0, i32 3
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %86
  br label %116

106:                                              ; preds = %86
  %107 = load i32, i32* %6, align 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %110 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_9__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_9__*)** %112, align 8
  %114 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %115 = call i32 %113(%struct.pcmcia_socket* %114, %struct.TYPE_9__* %3)
  br label %116

116:                                              ; preds = %106, %105, %85
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %71

119:                                              ; preds = %71
  br label %120

120:                                              ; preds = %119, %57
  br label %121

121:                                              ; preds = %120, %50
  %122 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %123 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %122, i32 0, i32 1
  %124 = call i32 @mutex_unlock(i32* %123)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
