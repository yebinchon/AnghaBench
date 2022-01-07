; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/cdev/extr_cdev.c_comp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/cdev/extr_cdev.c_comp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.most_interface = type { i32 }
%struct.most_channel_config = type { i32 }
%struct.comp_channel = type { i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i64, %struct.most_channel_config*, %struct.most_interface* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Probing component with bad arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@comp = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@channel_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ch_list_lock = common dso_local global i32 0, align 4
@channel_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to create new device node %s\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32, %struct.most_channel_config*, i8*, i8*)* @comp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_probe(%struct.most_interface* %0, i32 %1, %struct.most_channel_config* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.most_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.most_channel_config*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.comp_channel*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.most_interface* %0, %struct.most_interface** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.most_channel_config* %2, %struct.most_channel_config** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load %struct.most_interface*, %struct.most_interface** %7, align 8
  %17 = icmp ne %struct.most_interface* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %20 = icmp ne %struct.most_channel_config* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21, %18, %5
  %25 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %162

28:                                               ; preds = %21
  %29 = load %struct.most_interface*, %struct.most_interface** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.comp_channel* @get_channel(%struct.most_interface* %29, i32 %30)
  store %struct.comp_channel* %31, %struct.comp_channel** %12, align 8
  %32 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %33 = icmp ne %struct.comp_channel* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EEXIST, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %162

37:                                               ; preds = %28
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32 @ida_simple_get(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @comp, i32 0, i32 0), i32 0, i32 0, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %6, align 4
  br label %162

44:                                               ; preds = %37
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.comp_channel* @kzalloc(i32 64, i32 %45)
  store %struct.comp_channel* %46, %struct.comp_channel** %12, align 8
  %47 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %48 = icmp ne %struct.comp_channel* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  br label %158

52:                                               ; preds = %44
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @comp, i32 0, i32 2), align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @MKDEV(i32 %53, i32 %54)
  %56 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %57 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %59 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %58, i32 0, i32 1
  %60 = call i32 @cdev_init(%struct.TYPE_10__* %59, i32* @channel_fops)
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %63 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %66 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %65, i32 0, i32 1
  %67 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %68 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cdev_add(%struct.TYPE_10__* %66, i32 %69, i32 1)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  br label %155

74:                                               ; preds = %52
  %75 = load %struct.most_interface*, %struct.most_interface** %7, align 8
  %76 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %77 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %76, i32 0, i32 11
  store %struct.most_interface* %75, %struct.most_interface** %77, align 8
  %78 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %79 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %80 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %79, i32 0, i32 10
  store %struct.most_channel_config* %78, %struct.most_channel_config** %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %83 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %85 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %84, i32 0, i32 9
  store i64 0, i64* %85, align 8
  %86 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %87 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %86, i32 0, i32 8
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %90 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @INIT_KFIFO(i32 %91)
  %93 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %94 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %93, i32 0, i32 3
  %95 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %96 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i32 @kfifo_alloc(i32* %94, i32 %97, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %74
  br label %151

103:                                              ; preds = %74
  %104 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %105 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %104, i32 0, i32 7
  %106 = call i32 @init_waitqueue_head(i32* %105)
  %107 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %108 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %107, i32 0, i32 6
  %109 = call i32 @mutex_init(i32* %108)
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @spin_lock_irqsave(i32* @ch_list_lock, i64 %110)
  %112 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %113 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %112, i32 0, i32 2
  %114 = call i32 @list_add_tail(i32* %113, i32* @channel_list)
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* @ch_list_lock, i64 %115)
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @comp, i32 0, i32 1), align 4
  %118 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %119 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = call %struct.TYPE_8__* @device_create(i32 %117, i32* null, i32 %120, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  %123 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %124 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %123, i32 0, i32 4
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %124, align 8
  %125 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %126 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %125, i32 0, i32 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = call i64 @IS_ERR(%struct.TYPE_8__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %103
  %131 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %132 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %131, i32 0, i32 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = call i32 @PTR_ERR(%struct.TYPE_8__* %133)
  store i32 %134, i32* %14, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %135)
  br label %144

137:                                              ; preds = %103
  %138 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %139 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %138, i32 0, i32 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* @KOBJ_ADD, align 4
  %143 = call i32 @kobject_uevent(i32* %141, i32 %142)
  store i32 0, i32* %6, align 4
  br label %162

144:                                              ; preds = %130
  %145 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %146 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %145, i32 0, i32 3
  %147 = call i32 @kfifo_free(i32* %146)
  %148 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %149 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %148, i32 0, i32 2
  %150 = call i32 @list_del(i32* %149)
  br label %151

151:                                              ; preds = %144, %102
  %152 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %153 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %152, i32 0, i32 1
  %154 = call i32 @cdev_del(%struct.TYPE_10__* %153)
  br label %155

155:                                              ; preds = %151, %73
  %156 = load %struct.comp_channel*, %struct.comp_channel** %12, align 8
  %157 = call i32 @kfree(%struct.comp_channel* %156)
  br label %158

158:                                              ; preds = %155, %49
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @ida_simple_remove(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @comp, i32 0, i32 0), i32 %159)
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %137, %42, %34, %24
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local %struct.comp_channel* @get_channel(%struct.most_interface*, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local %struct.comp_channel* @kzalloc(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_KFIFO(i32) #1

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_8__* @device_create(i32, i32*, i32, i32*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.comp_channel*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
