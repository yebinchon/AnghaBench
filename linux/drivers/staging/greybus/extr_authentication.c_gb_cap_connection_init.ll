; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_gb_cap_connection_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_gb_cap_connection_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gb_cap = type { i32, i32, i32, i32, i32*, i32, i32, %struct.gb_connection* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@list_mutex = common dso_local global i32 0, align 4
@cap_list = common dso_local global i32 0, align 4
@cap_minors_map = common dso_local global i32 0, align 4
@NUM_MINORS = common dso_local global i32 0, align 4
@cap_dev_num = common dso_local global i32 0, align 4
@cap_fops = common dso_local global i32 0, align 4
@cap_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"gb-authenticate-%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_cap_connection_init(%struct.gb_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_connection*, align 8
  %4 = alloca %struct.gb_cap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %3, align 8
  %7 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %8 = icmp ne %struct.gb_connection* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %116

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gb_cap* @kzalloc(i32 40, i32 %11)
  store %struct.gb_cap* %12, %struct.gb_cap** %4, align 8
  %13 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %14 = icmp ne %struct.gb_cap* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %116

18:                                               ; preds = %10
  %19 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %20 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %24 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %23, i32 0, i32 4
  store i32* %22, i32** %24, align 8
  %25 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %26 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %27 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %26, i32 0, i32 7
  store %struct.gb_connection* %25, %struct.gb_connection** %27, align 8
  %28 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %29 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %28, i32 0, i32 6
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %32 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %33 = call i32 @gb_connection_set_data(%struct.gb_connection* %31, %struct.gb_cap* %32)
  %34 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %35 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %34, i32 0, i32 5
  %36 = call i32 @kref_init(i32* %35)
  %37 = call i32 @mutex_lock(i32* @list_mutex)
  %38 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %39 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %38, i32 0, i32 0
  %40 = call i32 @list_add(i32* %39, i32* @cap_list)
  %41 = call i32 @mutex_unlock(i32* @list_mutex)
  %42 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %43 = call i32 @gb_connection_enable(%struct.gb_connection* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %18
  br label %107

47:                                               ; preds = %18
  %48 = load i32, i32* @NUM_MINORS, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @ida_simple_get(i32* @cap_minors_map, i32 0, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %5, align 4
  br label %104

55:                                               ; preds = %47
  %56 = load i32, i32* @cap_dev_num, align 4
  %57 = call i32 @MAJOR(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @MKDEV(i32 %57, i32 %58)
  %60 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %61 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %63 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %62, i32 0, i32 1
  %64 = call i32 @cdev_init(i32* %63, i32* @cap_fops)
  %65 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %66 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %65, i32 0, i32 1
  %67 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %68 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cdev_add(i32* %66, i32 %69, i32 1)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %55
  br label %101

74:                                               ; preds = %55
  %75 = load i32, i32* @cap_class, align 4
  %76 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %77 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %80 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @device_create(i32 %75, i32* %78, i32 %81, i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %85 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %87 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @IS_ERR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %74
  %92 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %93 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %5, align 4
  br label %97

96:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %116

97:                                               ; preds = %91
  %98 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %99 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %98, i32 0, i32 1
  %100 = call i32 @cdev_del(i32* %99)
  br label %101

101:                                              ; preds = %97, %73
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @ida_simple_remove(i32* @cap_minors_map, i32 %102)
  br label %104

104:                                              ; preds = %101, %53
  %105 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %106 = call i32 @gb_connection_disable(%struct.gb_connection* %105)
  br label %107

107:                                              ; preds = %104, %46
  %108 = call i32 @mutex_lock(i32* @list_mutex)
  %109 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %110 = getelementptr inbounds %struct.gb_cap, %struct.gb_cap* %109, i32 0, i32 0
  %111 = call i32 @list_del(i32* %110)
  %112 = call i32 @mutex_unlock(i32* @list_mutex)
  %113 = load %struct.gb_cap*, %struct.gb_cap** %4, align 8
  %114 = call i32 @put_cap(%struct.gb_cap* %113)
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %107, %96, %15, %9
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.gb_cap* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_cap*) #1

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

declare dso_local i32 @put_cap(%struct.gb_cap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
