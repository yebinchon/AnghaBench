; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_request_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_request_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, i32, %struct.TYPE_2__*, %struct.pcmcia_socket* }
%struct.TYPE_2__ = type { i32, %struct.resource* }
%struct.resource = type { i64, i32, i64 }
%struct.pcmcia_socket = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pcmcia_request_io: %pR , %pR\00", align 1
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"pcmcia_request_io: No card present\0A\00", align 1
@CONFIG_LOCKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Configuration is locked\0A\00", align 1
@CONFIG_IO_REQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"IO already configured\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"pcmcia_request_io succeeded: %pR , %pR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_request_io(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 4
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  store %struct.pcmcia_socket* %9, %struct.pcmcia_socket** %3, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %4, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %16 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.resource*, %struct.resource** %21, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i64 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.resource*, %struct.resource** %25, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i64 1
  %28 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.resource* %23, %struct.resource* %27)
  %29 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %30 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SOCKET_PRESENT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %1
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 1
  %38 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %153

39:                                               ; preds = %1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CONFIG_LOCKED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %48 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %47, i32 0, i32 1
  %49 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %153

50:                                               ; preds = %39
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CONFIG_IO_REQ, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 1
  %60 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %153

61:                                               ; preds = %50
  %62 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load %struct.resource*, %struct.resource** %64, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i64 0
  %67 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %68 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @alloc_io_space(%struct.pcmcia_socket* %62, %struct.resource* %66, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %153

74:                                               ; preds = %61
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load %struct.resource*, %struct.resource** %76, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i64 1
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %128

82:                                               ; preds = %74
  %83 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load %struct.resource*, %struct.resource** %85, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i64 1
  %88 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %89 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @alloc_io_space(%struct.pcmcia_socket* %83, %struct.resource* %87, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %127

94:                                               ; preds = %82
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load %struct.resource*, %struct.resource** %96, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i64 0
  %99 = bitcast %struct.resource* %6 to i8*
  %100 = bitcast %struct.resource* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 24, i1 false)
  %101 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load %struct.resource*, %struct.resource** %103, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i64 0
  %106 = call i32 @release_io_space(%struct.pcmcia_socket* %101, %struct.resource* %105)
  %107 = call i64 @resource_size(%struct.resource* %6)
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load %struct.resource*, %struct.resource** %109, align 8
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %110, i64 0
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %111, i32 0, i32 2
  store i64 %107, i64* %112, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load %struct.resource*, %struct.resource** %116, align 8
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i64 0
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %118, i32 0, i32 0
  store i64 %114, i64* %119, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load %struct.resource*, %struct.resource** %123, align 8
  %125 = getelementptr inbounds %struct.resource, %struct.resource* %124, i64 0
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 1
  store i32 %121, i32* %126, align 8
  br label %153

127:                                              ; preds = %82
  br label %134

128:                                              ; preds = %74
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load %struct.resource*, %struct.resource** %130, align 8
  %132 = getelementptr inbounds %struct.resource, %struct.resource* %131, i64 1
  %133 = getelementptr inbounds %struct.resource, %struct.resource* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %128, %127
  %135 = load i32, i32* @CONFIG_IO_REQ, align 4
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %141 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  %142 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %143 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load %struct.resource*, %struct.resource** %145, align 8
  %147 = getelementptr inbounds %struct.resource, %struct.resource* %146, i64 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load %struct.resource*, %struct.resource** %149, align 8
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %150, i64 1
  %152 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), %struct.resource* %147, %struct.resource* %151)
  br label %153

153:                                              ; preds = %134, %94, %73, %57, %46, %35
  %154 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %155 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %154, i32 0, i32 1
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @alloc_io_space(%struct.pcmcia_socket*, %struct.resource*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @release_io_space(%struct.pcmcia_socket*, %struct.resource*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
