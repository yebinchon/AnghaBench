; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_manager.c_pnp_stop_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_manager.c_pnp_stop_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.pnp_dev*)* }

@.str = private unnamed_addr constant [25 x i8] c"disabling not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"disable failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnp_stop_dev(%struct.pnp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %5 = call i32 @pnp_can_disable(%struct.pnp_dev* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %8, i32 0, i32 0
  %10 = call i32 @pnp_dbg(i32* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64 (%struct.pnp_dev*)*, i64 (%struct.pnp_dev*)** %17, align 8
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %20 = call i64 %18(%struct.pnp_dev* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %13
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %30 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %22, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @pnp_can_disable(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_dbg(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
