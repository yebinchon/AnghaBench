; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-cmdq-helper.c_cmdq_mbox_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-cmdq-helper.c_cmdq_mbox_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_client = type { i32, %struct.TYPE_2__, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@CMDQ_NO_TIMEOUT = common dso_local global i64 0, align 8
@cmdq_client_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to request channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmdq_client* @cmdq_mbox_create(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.cmdq_client*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cmdq_client*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cmdq_client* @kzalloc(i32 48, i32 %10)
  store %struct.cmdq_client* %11, %struct.cmdq_client** %8, align 8
  %12 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %13 = icmp ne %struct.cmdq_client* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @ENOMEM, align 8
  %16 = sub nsw i64 0, %15
  %17 = inttoptr i64 %16 to %struct.cmdq_client*
  store %struct.cmdq_client* %17, %struct.cmdq_client** %4, align 8
  br label %67

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %21 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %20, i32 0, i32 5
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @CMDQ_NO_TIMEOUT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %27 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %26, i32 0, i32 4
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %30 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %29, i32 0, i32 3
  %31 = load i32, i32* @cmdq_client_timeout, align 4
  %32 = call i32 @timer_setup(i32* %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %25, %18
  %34 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %35 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %38 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store %struct.device* %36, %struct.device** %39, align 8
  %40 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %41 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %44 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %43, i32 0, i32 1
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mbox_request_channel(%struct.TYPE_2__* %44, i32 %45)
  %47 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %48 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %50 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %33
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %58 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @PTR_ERR(i32 %59)
  store i64 %60, i64* %9, align 8
  %61 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  %62 = call i32 @kfree(%struct.cmdq_client* %61)
  %63 = load i64, i64* %9, align 8
  %64 = call %struct.cmdq_client* @ERR_PTR(i64 %63)
  store %struct.cmdq_client* %64, %struct.cmdq_client** %4, align 8
  br label %67

65:                                               ; preds = %33
  %66 = load %struct.cmdq_client*, %struct.cmdq_client** %8, align 8
  store %struct.cmdq_client* %66, %struct.cmdq_client** %4, align 8
  br label %67

67:                                               ; preds = %65, %54, %14
  %68 = load %struct.cmdq_client*, %struct.cmdq_client** %4, align 8
  ret %struct.cmdq_client* %68
}

declare dso_local %struct.cmdq_client* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mbox_request_channel(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.cmdq_client*) #1

declare dso_local %struct.cmdq_client* @ERR_PTR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
