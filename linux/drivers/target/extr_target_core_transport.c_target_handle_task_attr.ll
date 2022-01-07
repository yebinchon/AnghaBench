; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_handle_task_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_handle_task_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32*, i32, i32, %struct.se_device* }
%struct.se_device = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TRANSPORT_FLAG_PASSTHROUGH = common dso_local global i32 0, align 4
@SCF_TASK_ATTR_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Added HEAD_OF_QUEUE for CDB: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Added ORDERED for CDB: 0x%02x to ordered list\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Added CDB: 0x%02x Task Attr: 0x%02x to delayed CMD listn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @target_handle_task_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_handle_task_attr(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 4
  %7 = load %struct.se_device*, %struct.se_device** %6, align 8
  store %struct.se_device* %7, %struct.se_device** %4, align 8
  %8 = load %struct.se_device*, %struct.se_device** %4, align 8
  %9 = getelementptr inbounds %struct.se_device, %struct.se_device* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TRANSPORT_FLAG_PASSTHROUGH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  %18 = load i32, i32* @SCF_TASK_ATTR_SET, align 4
  %19 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %49 [
    i32 129, label %26
    i32 128, label %33
  ]

26:                                               ; preds = %17
  %27 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %2, align 4
  br label %80

33:                                               ; preds = %17
  %34 = load %struct.se_device*, %struct.se_device** %4, align 8
  %35 = getelementptr inbounds %struct.se_device, %struct.se_device* %34, i32 0, i32 2
  %36 = call i32 @atomic_inc_mb(i32* %35)
  %37 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %38 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.se_device*, %struct.se_device** %4, align 8
  %44 = getelementptr inbounds %struct.se_device, %struct.se_device* %43, i32 0, i32 3
  %45 = call i64 @atomic_read(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %80

48:                                               ; preds = %33
  br label %53

49:                                               ; preds = %17
  %50 = load %struct.se_device*, %struct.se_device** %4, align 8
  %51 = getelementptr inbounds %struct.se_device, %struct.se_device* %50, i32 0, i32 3
  %52 = call i32 @atomic_inc_mb(i32* %51)
  br label %53

53:                                               ; preds = %49, %48
  %54 = load %struct.se_device*, %struct.se_device** %4, align 8
  %55 = getelementptr inbounds %struct.se_device, %struct.se_device* %54, i32 0, i32 2
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %80

59:                                               ; preds = %53
  %60 = load %struct.se_device*, %struct.se_device** %4, align 8
  %61 = getelementptr inbounds %struct.se_device, %struct.se_device* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %63, i32 0, i32 2
  %65 = load %struct.se_device*, %struct.se_device** %4, align 8
  %66 = getelementptr inbounds %struct.se_device, %struct.se_device* %65, i32 0, i32 1
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.se_device*, %struct.se_device** %4, align 8
  %69 = getelementptr inbounds %struct.se_device, %struct.se_device* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %72 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %77 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78)
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %59, %58, %47, %26, %16
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @atomic_inc_mb(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
