; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_rio_mport_cdev.c_rio_mport_create_inbound_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_rio_mport_cdev.c_rio_mport_create_inbound_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mport_dev = type { i32, i32, %struct.rio_mport* }
%struct.rio_mport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.rio_mport_mapping = type { i32, i32, i32, i32*, i32, i32, %struct.mport_dev*, %struct.file*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RIO_MAP_ANY_ADDR = common dso_local global i32 0, align 4
@MAP_INBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mport_dev*, %struct.file*, i32, i32, %struct.rio_mport_mapping**)* @rio_mport_create_inbound_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_mport_create_inbound_mapping(%struct.mport_dev* %0, %struct.file* %1, i32 %2, i32 %3, %struct.rio_mport_mapping** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mport_dev*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rio_mport_mapping**, align 8
  %12 = alloca %struct.rio_mport*, align 8
  %13 = alloca %struct.rio_mport_mapping*, align 8
  %14 = alloca i32, align 4
  store %struct.mport_dev* %0, %struct.mport_dev** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.rio_mport_mapping** %4, %struct.rio_mport_mapping*** %11, align 8
  %15 = load %struct.mport_dev*, %struct.mport_dev** %7, align 8
  %16 = getelementptr inbounds %struct.mport_dev, %struct.mport_dev* %15, i32 0, i32 2
  %17 = load %struct.rio_mport*, %struct.rio_mport** %16, align 8
  store %struct.rio_mport* %17, %struct.rio_mport** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ugt i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %118

23:                                               ; preds = %5
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.rio_mport_mapping* @kzalloc(i32 56, i32 %24)
  store %struct.rio_mport_mapping* %25, %struct.rio_mport_mapping** %13, align 8
  %26 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %27 = icmp eq %struct.rio_mport_mapping* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %118

31:                                               ; preds = %23
  %32 = load %struct.rio_mport*, %struct.rio_mport** %12, align 8
  %33 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %38 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32* @dma_alloc_coherent(i32 %35, i32 %36, i32* %38, i32 %39)
  %41 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %42 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %44 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %14, align 4
  br label %114

50:                                               ; preds = %31
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @RIO_MAP_ANY_ADDR, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %56 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.rio_mport*, %struct.rio_mport** %12, align 8
  %60 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %61 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @rio_map_inb_region(%struct.rio_mport* %59, i32 %62, i32 %63, i32 %64, i32 0)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %101

69:                                               ; preds = %58
  %70 = load i32, i32* @MAP_INBOUND, align 4
  %71 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %72 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %75 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %78 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.file*, %struct.file** %8, align 8
  %80 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %81 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %80, i32 0, i32 7
  store %struct.file* %79, %struct.file** %81, align 8
  %82 = load %struct.mport_dev*, %struct.mport_dev** %7, align 8
  %83 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %84 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %83, i32 0, i32 6
  store %struct.mport_dev* %82, %struct.mport_dev** %84, align 8
  %85 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %86 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %85, i32 0, i32 5
  %87 = call i32 @kref_init(i32* %86)
  %88 = load %struct.mport_dev*, %struct.mport_dev** %7, align 8
  %89 = getelementptr inbounds %struct.mport_dev, %struct.mport_dev* %88, i32 0, i32 0
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %92 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %91, i32 0, i32 4
  %93 = load %struct.mport_dev*, %struct.mport_dev** %7, align 8
  %94 = getelementptr inbounds %struct.mport_dev, %struct.mport_dev* %93, i32 0, i32 1
  %95 = call i32 @list_add_tail(i32* %92, i32* %94)
  %96 = load %struct.mport_dev*, %struct.mport_dev** %7, align 8
  %97 = getelementptr inbounds %struct.mport_dev, %struct.mport_dev* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %100 = load %struct.rio_mport_mapping**, %struct.rio_mport_mapping*** %11, align 8
  store %struct.rio_mport_mapping* %99, %struct.rio_mport_mapping** %100, align 8
  store i32 0, i32* %6, align 4
  br label %118

101:                                              ; preds = %68
  %102 = load %struct.rio_mport*, %struct.rio_mport** %12, align 8
  %103 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %108 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %111 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dma_free_coherent(i32 %105, i32 %106, i32* %109, i32 %112)
  br label %114

114:                                              ; preds = %101, %47
  %115 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %13, align 8
  %116 = call i32 @kfree(%struct.rio_mport_mapping* %115)
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %69, %28, %20
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.rio_mport_mapping* @kzalloc(i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @rio_map_inb_region(%struct.rio_mport*, i32, i32, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.rio_mport_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
