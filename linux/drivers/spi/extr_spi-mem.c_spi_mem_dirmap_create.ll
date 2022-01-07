; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_dirmap_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_dirmap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem_dirmap_desc = type { i32, %struct.spi_mem_dirmap_info, %struct.spi_mem* }
%struct.spi_mem_dirmap_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.spi_mem = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.spi_controller* }
%struct.spi_controller = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.spi_mem_dirmap_desc*)* }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPI_MEM_NO_DATA = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spi_mem_dirmap_desc* @spi_mem_dirmap_create(%struct.spi_mem* %0, %struct.spi_mem_dirmap_info* %1) #0 {
  %3 = alloca %struct.spi_mem_dirmap_desc*, align 8
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_dirmap_info*, align 8
  %6 = alloca %struct.spi_controller*, align 8
  %7 = alloca %struct.spi_mem_dirmap_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_dirmap_info* %1, %struct.spi_mem_dirmap_info** %5, align 8
  %9 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %10 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.spi_controller*, %struct.spi_controller** %12, align 8
  store %struct.spi_controller* %13, %struct.spi_controller** %6, align 8
  %14 = load i32, i32* @ENOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.spi_mem_dirmap_info*, %struct.spi_mem_dirmap_info** %5, align 8
  %17 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.spi_mem_dirmap_info*, %struct.spi_mem_dirmap_info** %5, align 8
  %24 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 8
  br i1 %28, label %29, label %33

29:                                               ; preds = %22, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.spi_mem_dirmap_desc* @ERR_PTR(i32 %31)
  store %struct.spi_mem_dirmap_desc* %32, %struct.spi_mem_dirmap_desc** %3, align 8
  br label %111

33:                                               ; preds = %22
  %34 = load %struct.spi_mem_dirmap_info*, %struct.spi_mem_dirmap_info** %5, align 8
  %35 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPI_MEM_NO_DATA, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.spi_mem_dirmap_desc* @ERR_PTR(i32 %43)
  store %struct.spi_mem_dirmap_desc* %44, %struct.spi_mem_dirmap_desc** %3, align 8
  br label %111

45:                                               ; preds = %33
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.spi_mem_dirmap_desc* @kzalloc(i32 32, i32 %46)
  store %struct.spi_mem_dirmap_desc* %47, %struct.spi_mem_dirmap_desc** %7, align 8
  %48 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %7, align 8
  %49 = icmp ne %struct.spi_mem_dirmap_desc* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.spi_mem_dirmap_desc* @ERR_PTR(i32 %52)
  store %struct.spi_mem_dirmap_desc* %53, %struct.spi_mem_dirmap_desc** %3, align 8
  br label %111

54:                                               ; preds = %45
  %55 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %56 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %7, align 8
  %57 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %56, i32 0, i32 2
  store %struct.spi_mem* %55, %struct.spi_mem** %57, align 8
  %58 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %7, align 8
  %59 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %58, i32 0, i32 1
  %60 = load %struct.spi_mem_dirmap_info*, %struct.spi_mem_dirmap_info** %5, align 8
  %61 = bitcast %struct.spi_mem_dirmap_info* %59 to i8*
  %62 = bitcast %struct.spi_mem_dirmap_info* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  %63 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %64 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = icmp ne %struct.TYPE_9__* %65, null
  br i1 %66, label %67, label %82

67:                                               ; preds = %54
  %68 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %69 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32 (%struct.spi_mem_dirmap_desc*)*, i32 (%struct.spi_mem_dirmap_desc*)** %71, align 8
  %73 = icmp ne i32 (%struct.spi_mem_dirmap_desc*)* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %76 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32 (%struct.spi_mem_dirmap_desc*)*, i32 (%struct.spi_mem_dirmap_desc*)** %78, align 8
  %80 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %7, align 8
  %81 = call i32 %79(%struct.spi_mem_dirmap_desc* %80)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %74, %67, %54
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %7, align 8
  %87 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %7, align 8
  %89 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %88, i32 0, i32 2
  %90 = load %struct.spi_mem*, %struct.spi_mem** %89, align 8
  %91 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %7, align 8
  %92 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %92, i32 0, i32 0
  %94 = call i32 @spi_mem_supports_op(%struct.spi_mem* %90, %struct.TYPE_10__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %85
  %97 = load i32, i32* @ENOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %100

99:                                               ; preds = %85
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %99, %96
  br label %101

101:                                              ; preds = %100, %82
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %7, align 8
  %106 = call i32 @kfree(%struct.spi_mem_dirmap_desc* %105)
  %107 = load i32, i32* %8, align 4
  %108 = call %struct.spi_mem_dirmap_desc* @ERR_PTR(i32 %107)
  store %struct.spi_mem_dirmap_desc* %108, %struct.spi_mem_dirmap_desc** %3, align 8
  br label %111

109:                                              ; preds = %101
  %110 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %7, align 8
  store %struct.spi_mem_dirmap_desc* %110, %struct.spi_mem_dirmap_desc** %3, align 8
  br label %111

111:                                              ; preds = %109, %104, %50, %41, %29
  %112 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  ret %struct.spi_mem_dirmap_desc* %112
}

declare dso_local %struct.spi_mem_dirmap_desc* @ERR_PTR(i32) #1

declare dso_local %struct.spi_mem_dirmap_desc* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spi_mem_supports_op(%struct.spi_mem*, %struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.spi_mem_dirmap_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
