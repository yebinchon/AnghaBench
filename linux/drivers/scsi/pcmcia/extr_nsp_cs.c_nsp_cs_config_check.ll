; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_config_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_cs_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_16 = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_CM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@NSP_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"next\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @nsp_cs_config_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_cs_config_check(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %114

16:                                               ; preds = %2
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %18 = call i64 @pcmcia_request_io(%struct.pcmcia_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %107

21:                                               ; preds = %16
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i64 @resource_size(%struct.TYPE_6__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %106

29:                                               ; preds = %21
  %30 = load i32, i32* @WIN_DATA_WIDTH_16, align 4
  %31 = load i32, i32* @WIN_MEMORY_TYPE_CM, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WIN_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %34
  store i32 %42, i32* %40, align 4
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 4096
  br i1 %50, label %51, label %58

51:                                               ; preds = %29
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %54, i64 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 4096, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %29
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %60 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %61 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %62, i64 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i64 @pcmcia_request_window(%struct.pcmcia_device* %59, %struct.TYPE_6__* %64, i32 0)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %107

68:                                               ; preds = %58
  %69 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %71 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %76 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @pcmcia_map_mem_page(%struct.pcmcia_device* %69, %struct.TYPE_6__* %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %107

81:                                               ; preds = %68
  %82 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %83 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %90 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %91, i64 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call i64 @resource_size(%struct.TYPE_6__* %93)
  %95 = call i64 @ioremap_nocache(i32 %88, i64 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %99 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %100, i64 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = call i64 @resource_size(%struct.TYPE_6__* %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %81, %21
  store i32 0, i32* %3, align 4
  br label %114

107:                                              ; preds = %80, %67, %20
  %108 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %109 = call i32 @nsp_dbg(i32 %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %110 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %111 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %110)
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %107, %106, %13
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @pcmcia_request_io(%struct.pcmcia_device*) #1

declare dso_local i64 @resource_size(%struct.TYPE_6__*) #1

declare dso_local i64 @pcmcia_request_window(%struct.pcmcia_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @pcmcia_map_mem_page(%struct.pcmcia_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @ioremap_nocache(i32, i64) #1

declare dso_local i32 @nsp_dbg(i32, i8*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
