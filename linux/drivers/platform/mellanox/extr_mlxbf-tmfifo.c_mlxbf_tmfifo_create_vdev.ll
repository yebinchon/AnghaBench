; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_create_vdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_create_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mlxbf_tmfifo = type { i32, %struct.mlxbf_tmfifo_vdev** }
%struct.mlxbf_tmfifo_vdev = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"vdev %d already exists\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxbf_tmfifo_virtio_config_ops = common dso_local global i32 0, align 4
@tmfifo_virtio_dev_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to allocate vring\0A\00", align 1
@VIRTIO_ID_CONSOLE = common dso_local global i32 0, align 4
@MLXBF_TMFIFO_CON_TX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"register_virtio_device failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mlxbf_tmfifo*, i32, i32, i8*, i32)* @mlxbf_tmfifo_create_vdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxbf_tmfifo_create_vdev(%struct.device* %0, %struct.mlxbf_tmfifo* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.mlxbf_tmfifo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  %15 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.mlxbf_tmfifo* %1, %struct.mlxbf_tmfifo** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.mlxbf_tmfifo_vdev* null, %struct.mlxbf_tmfifo_vdev** %15, align 8
  %17 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %18 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %21 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %20, i32 0, i32 1
  %22 = load %struct.mlxbf_tmfifo_vdev**, %struct.mlxbf_tmfifo_vdev*** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %22, i64 %24
  %26 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %25, align 8
  store %struct.mlxbf_tmfifo_vdev* %26, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %27 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %28 = icmp ne %struct.mlxbf_tmfifo_vdev* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EEXIST, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %16, align 4
  br label %137

35:                                               ; preds = %6
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mlxbf_tmfifo_vdev* @kzalloc(i32 48, i32 %36)
  store %struct.mlxbf_tmfifo_vdev* %37, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %38 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %39 = icmp ne %struct.mlxbf_tmfifo_vdev* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %16, align 4
  br label %137

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %46 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  %49 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %50 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32* @mlxbf_tmfifo_virtio_config_ops, i32** %51, align 8
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %54 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store %struct.device* %52, %struct.device** %56, align 8
  %57 = load i32, i32* @tmfifo_virtio_dev_release, align 4
  %58 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %59 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %64 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %43
  %68 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %69 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %68, i32 0, i32 2
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @memcpy(i32* %69, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %43
  %74 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %75 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %76 = call i64 @mlxbf_tmfifo_alloc_vrings(%struct.mlxbf_tmfifo* %74, %struct.mlxbf_tmfifo_vdev* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.device*, %struct.device** %8, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %16, align 4
  br label %116

83:                                               ; preds = %73
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @VIRTIO_ID_CONSOLE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.device*, %struct.device** %8, align 8
  %89 = load i32, i32* @MLXBF_TMFIFO_CON_TX_BUF_SIZE, align 4
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i32 @devm_kmalloc(%struct.device* %88, i32 %89, i32 %90)
  %92 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %93 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  br label %95

95:                                               ; preds = %87, %83
  %96 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %97 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %98 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %97, i32 0, i32 1
  %99 = load %struct.mlxbf_tmfifo_vdev**, %struct.mlxbf_tmfifo_vdev*** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %99, i64 %101
  store %struct.mlxbf_tmfifo_vdev* %96, %struct.mlxbf_tmfifo_vdev** %102, align 8
  %103 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %104 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %103, i32 0, i32 0
  %105 = call i32 @register_virtio_device(%struct.TYPE_7__* %104)
  store i32 %105, i32* %16, align 4
  %106 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  store %struct.mlxbf_tmfifo_vdev* %106, %struct.mlxbf_tmfifo_vdev** %15, align 8
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %95
  %110 = load %struct.device*, %struct.device** %8, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %116

112:                                              ; preds = %95
  %113 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %114 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  store i32 0, i32* %7, align 4
  br label %142

116:                                              ; preds = %109, %78
  %117 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %118 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %119 = call i32 @mlxbf_tmfifo_free_vrings(%struct.mlxbf_tmfifo* %117, %struct.mlxbf_tmfifo_vdev* %118)
  %120 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %121 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %120, i32 0, i32 1
  %122 = load %struct.mlxbf_tmfifo_vdev**, %struct.mlxbf_tmfifo_vdev*** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %122, i64 %124
  store %struct.mlxbf_tmfifo_vdev* null, %struct.mlxbf_tmfifo_vdev** %125, align 8
  %126 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %15, align 8
  %127 = icmp ne %struct.mlxbf_tmfifo_vdev* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %116
  %129 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %130 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = call i32 @put_device(%struct.TYPE_8__* %131)
  br label %136

133:                                              ; preds = %116
  %134 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %135 = call i32 @kfree(%struct.mlxbf_tmfifo_vdev* %134)
  br label %136

136:                                              ; preds = %133, %128
  br label %137

137:                                              ; preds = %136, %40, %29
  %138 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %139 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %138, i32 0, i32 0
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %137, %112
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.mlxbf_tmfifo_vdev* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i64 @mlxbf_tmfifo_alloc_vrings(%struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo_vdev*) #1

declare dso_local i32 @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @register_virtio_device(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlxbf_tmfifo_free_vrings(%struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo_vdev*) #1

declare dso_local i32 @put_device(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.mlxbf_tmfifo_vdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
