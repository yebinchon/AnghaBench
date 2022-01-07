; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_eptdev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_eptdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_ctrldev = type { i32, %struct.rpmsg_device* }
%struct.rpmsg_device = type { i32 }
%struct.rpmsg_channel_info = type { i32 }
%struct.rpmsg_eptdev = type { %struct.TYPE_3__, i32, i32, i32, i32, %struct.rpmsg_channel_info, %struct.rpmsg_device*, %struct.device }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32, i32, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rpmsg_class = common dso_local global i32 0, align 4
@rpmsg_eptdev_groups = common dso_local global i32 0, align 4
@rpmsg_eptdev_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@rpmsg_minor_ida = common dso_local global i32 0, align 4
@RPMSG_DEV_MAX = common dso_local global i32 0, align 4
@rpmsg_major = common dso_local global i32 0, align 4
@rpmsg_ept_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rpmsg%d\00", align 1
@rpmsg_eptdev_release_device = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"device_add failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_ctrldev*, i32)* @rpmsg_eptdev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_eptdev_create(%struct.rpmsg_ctrldev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpmsg_channel_info, align 4
  %5 = alloca %struct.rpmsg_ctrldev*, align 8
  %6 = alloca %struct.rpmsg_device*, align 8
  %7 = alloca %struct.rpmsg_eptdev*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %4, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.rpmsg_ctrldev* %0, %struct.rpmsg_ctrldev** %5, align 8
  %11 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %5, align 8
  %12 = getelementptr inbounds %struct.rpmsg_ctrldev, %struct.rpmsg_ctrldev* %11, i32 0, i32 1
  %13 = load %struct.rpmsg_device*, %struct.rpmsg_device** %12, align 8
  store %struct.rpmsg_device* %13, %struct.rpmsg_device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.rpmsg_eptdev* @kzalloc(i32 64, i32 %14)
  store %struct.rpmsg_eptdev* %15, %struct.rpmsg_eptdev** %7, align 8
  %16 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %17 = icmp ne %struct.rpmsg_eptdev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %132

21:                                               ; preds = %2
  %22 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %23 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %22, i32 0, i32 7
  store %struct.device* %23, %struct.device** %8, align 8
  %24 = load %struct.rpmsg_device*, %struct.rpmsg_device** %6, align 8
  %25 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %26 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %25, i32 0, i32 6
  store %struct.rpmsg_device* %24, %struct.rpmsg_device** %26, align 8
  %27 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %28 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %27, i32 0, i32 5
  %29 = bitcast %struct.rpmsg_channel_info* %28 to i8*
  %30 = bitcast %struct.rpmsg_channel_info* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %32 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %31, i32 0, i32 4
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %35 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %34, i32 0, i32 3
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %38 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %37, i32 0, i32 2
  %39 = call i32 @skb_queue_head_init(i32* %38)
  %40 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %41 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %40, i32 0, i32 1
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = call i32 @device_initialize(%struct.device* %43)
  %45 = load i32, i32* @rpmsg_class, align 4
  %46 = load %struct.device*, %struct.device** %8, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rpmsg_ctrldev*, %struct.rpmsg_ctrldev** %5, align 8
  %49 = getelementptr inbounds %struct.rpmsg_ctrldev, %struct.rpmsg_ctrldev* %48, i32 0, i32 0
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 4
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* @rpmsg_eptdev_groups, align 4
  %53 = load %struct.device*, %struct.device** %8, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.device*, %struct.device** %8, align 8
  %56 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %57 = call i32 @dev_set_drvdata(%struct.device* %55, %struct.rpmsg_eptdev* %56)
  %58 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %59 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %58, i32 0, i32 0
  %60 = call i32 @cdev_init(%struct.TYPE_3__* %59, i32* @rpmsg_eptdev_fops)
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %63 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @RPMSG_DEV_MAX, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @ida_simple_get(i32* @rpmsg_minor_ida, i32 0, i32 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %21
  br label %126

71:                                               ; preds = %21
  %72 = load i32, i32* @rpmsg_major, align 4
  %73 = call i32 @MAJOR(i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @MKDEV(i32 %73, i32 %74)
  %76 = load %struct.device*, %struct.device** %8, align 8
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @ida_simple_get(i32* @rpmsg_ept_ida, i32 0, i32 0, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %120

83:                                               ; preds = %71
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.device*, %struct.device** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @dev_set_name(%struct.device* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %91 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %90, i32 0, i32 0
  %92 = load %struct.device*, %struct.device** %8, align 8
  %93 = getelementptr inbounds %struct.device, %struct.device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @cdev_add(%struct.TYPE_3__* %91, i32 %94, i32 1)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %83
  br label %115

99:                                               ; preds = %83
  %100 = load i32, i32* @rpmsg_eptdev_release_device, align 4
  %101 = load %struct.device*, %struct.device** %8, align 8
  %102 = getelementptr inbounds %struct.device, %struct.device* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.device*, %struct.device** %8, align 8
  %104 = call i32 @device_add(%struct.device* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load %struct.device*, %struct.device** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load %struct.device*, %struct.device** %8, align 8
  %112 = call i32 @put_device(%struct.device* %111)
  br label %113

113:                                              ; preds = %107, %99
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %132

115:                                              ; preds = %98
  %116 = load %struct.device*, %struct.device** %8, align 8
  %117 = getelementptr inbounds %struct.device, %struct.device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ida_simple_remove(i32* @rpmsg_ept_ida, i32 %118)
  br label %120

120:                                              ; preds = %115, %82
  %121 = load %struct.device*, %struct.device** %8, align 8
  %122 = getelementptr inbounds %struct.device, %struct.device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @MINOR(i32 %123)
  %125 = call i32 @ida_simple_remove(i32* @rpmsg_minor_ida, i32 %124)
  br label %126

126:                                              ; preds = %120, %70
  %127 = load %struct.device*, %struct.device** %8, align 8
  %128 = call i32 @put_device(%struct.device* %127)
  %129 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %130 = call i32 @kfree(%struct.rpmsg_eptdev* %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %126, %113, %18
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.rpmsg_eptdev* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.rpmsg_eptdev*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @cdev_add(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @kfree(%struct.rpmsg_eptdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
