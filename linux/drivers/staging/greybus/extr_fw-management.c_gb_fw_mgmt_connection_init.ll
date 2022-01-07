; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-management.c_gb_fw_mgmt_connection_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-management.c_gb_fw_mgmt_connection_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fw_mgmt = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, %struct.gb_connection*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_MGMT_TIMEOUT_MS = common dso_local global i32 0, align 4
@list_mutex = common dso_local global i32 0, align 4
@fw_mgmt_list = common dso_local global i32 0, align 4
@fw_mgmt_minors_map = common dso_local global i32 0, align 4
@NUM_MINORS = common dso_local global i32 0, align 4
@fw_mgmt_dev_num = common dso_local global i32 0, align 4
@fw_mgmt_fops = common dso_local global i32 0, align 4
@fw_mgmt_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"gb-fw-mgmt-%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_fw_mgmt_connection_init(%struct.gb_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_connection*, align 8
  %4 = alloca %struct.fw_mgmt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %3, align 8
  %7 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %8 = icmp ne %struct.gb_connection* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %126

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fw_mgmt* @kzalloc(i32 56, i32 %11)
  store %struct.fw_mgmt* %12, %struct.fw_mgmt** %4, align 8
  %13 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %14 = icmp ne %struct.fw_mgmt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %126

18:                                               ; preds = %10
  %19 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %20 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %24 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %23, i32 0, i32 4
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* @FW_MGMT_TIMEOUT_MS, align 4
  %26 = call i32 @msecs_to_jiffies(i32 %25)
  %27 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %28 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 8
  %29 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %30 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %31 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %30, i32 0, i32 9
  store %struct.gb_connection* %29, %struct.gb_connection** %31, align 8
  %32 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %33 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %34 = call i32 @gb_connection_set_data(%struct.gb_connection* %32, %struct.fw_mgmt* %33)
  %35 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %36 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %35, i32 0, i32 8
  %37 = call i32 @init_completion(i32* %36)
  %38 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %39 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %38, i32 0, i32 7
  %40 = call i32 @ida_init(i32* %39)
  %41 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %42 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %41, i32 0, i32 6
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %45 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %44, i32 0, i32 5
  %46 = call i32 @kref_init(i32* %45)
  %47 = call i32 @mutex_lock(i32* @list_mutex)
  %48 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %49 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %48, i32 0, i32 0
  %50 = call i32 @list_add(i32* %49, i32* @fw_mgmt_list)
  %51 = call i32 @mutex_unlock(i32* @list_mutex)
  %52 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %53 = call i32 @gb_connection_enable(%struct.gb_connection* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %18
  br label %117

57:                                               ; preds = %18
  %58 = load i32, i32* @NUM_MINORS, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32 @ida_simple_get(i32* @fw_mgmt_minors_map, i32 0, i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %5, align 4
  br label %114

65:                                               ; preds = %57
  %66 = load i32, i32* @fw_mgmt_dev_num, align 4
  %67 = call i32 @MAJOR(i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @MKDEV(i32 %67, i32 %68)
  %70 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %71 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %73 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %72, i32 0, i32 1
  %74 = call i32 @cdev_init(i32* %73, i32* @fw_mgmt_fops)
  %75 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %76 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %75, i32 0, i32 1
  %77 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %78 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cdev_add(i32* %76, i32 %79, i32 1)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  br label %111

84:                                               ; preds = %65
  %85 = load i32, i32* @fw_mgmt_class, align 4
  %86 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %87 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %90 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @device_create(i32 %85, i32* %88, i32 %91, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %95 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %97 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @IS_ERR(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %84
  %102 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %103 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @PTR_ERR(i32 %104)
  store i32 %105, i32* %5, align 4
  br label %107

106:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %126

107:                                              ; preds = %101
  %108 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %109 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %108, i32 0, i32 1
  %110 = call i32 @cdev_del(i32* %109)
  br label %111

111:                                              ; preds = %107, %83
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @ida_simple_remove(i32* @fw_mgmt_minors_map, i32 %112)
  br label %114

114:                                              ; preds = %111, %63
  %115 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %116 = call i32 @gb_connection_disable(%struct.gb_connection* %115)
  br label %117

117:                                              ; preds = %114, %56
  %118 = call i32 @mutex_lock(i32* @list_mutex)
  %119 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %120 = getelementptr inbounds %struct.fw_mgmt, %struct.fw_mgmt* %119, i32 0, i32 0
  %121 = call i32 @list_del(i32* %120)
  %122 = call i32 @mutex_unlock(i32* @list_mutex)
  %123 = load %struct.fw_mgmt*, %struct.fw_mgmt** %4, align 8
  %124 = call i32 @put_fw_mgmt(%struct.fw_mgmt* %123)
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %117, %106, %15, %9
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.fw_mgmt* @kzalloc(i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.fw_mgmt*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @cdev_add(i32*, i32, i32) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_fw_mgmt(%struct.fw_mgmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
