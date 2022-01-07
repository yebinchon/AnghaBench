; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_olpc_ec_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_olpc_ec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.olpc_ec_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ec_cmd_desc = type { i64, i64, i32, i32, i32*, i32*, i32 }

@ec_priv = common dso_local global %struct.olpc_ec_priv* null, align 8
@ec_driver = common dso_local global %struct.TYPE_2__* null, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @olpc_ec_cmd(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.olpc_ec_priv*, align 8
  %13 = alloca %struct.ec_cmd_desc, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** @ec_priv, align 8
  store %struct.olpc_ec_priv* %14, %struct.olpc_ec_priv** %12, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ec_driver, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EPROBE_DEFER, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %68

20:                                               ; preds = %5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ec_driver, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %68

32:                                               ; preds = %20
  %33 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %12, align 8
  %34 = icmp ne %struct.olpc_ec_priv* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %68

38:                                               ; preds = %32
  %39 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %12, align 8
  %40 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %68

47:                                               ; preds = %38
  %48 = call i32 (...) @might_sleep()
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds %struct.ec_cmd_desc, %struct.ec_cmd_desc* %13, i32 0, i32 6
  store i32 %49, i32* %50, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds %struct.ec_cmd_desc, %struct.ec_cmd_desc* %13, i32 0, i32 5
  store i32* %51, i32** %52, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds %struct.ec_cmd_desc, %struct.ec_cmd_desc* %13, i32 0, i32 4
  store i32* %53, i32** %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.ec_cmd_desc, %struct.ec_cmd_desc* %13, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.ec_cmd_desc, %struct.ec_cmd_desc* %13, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.ec_cmd_desc, %struct.ec_cmd_desc* %13, i32 0, i32 2
  store i32 0, i32* %59, align 8
  %60 = getelementptr inbounds %struct.ec_cmd_desc, %struct.ec_cmd_desc* %13, i32 0, i32 3
  %61 = call i32 @init_completion(i32* %60)
  %62 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %12, align 8
  %63 = call i32 @queue_ec_descriptor(%struct.ec_cmd_desc* %13, %struct.olpc_ec_priv* %62)
  %64 = getelementptr inbounds %struct.ec_cmd_desc, %struct.ec_cmd_desc* %13, i32 0, i32 3
  %65 = call i32 @wait_for_completion(i32* %64)
  %66 = getelementptr inbounds %struct.ec_cmd_desc, %struct.ec_cmd_desc* %13, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %47, %44, %35, %29, %17
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @queue_ec_descriptor(%struct.ec_cmd_desc*, %struct.olpc_ec_priv*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
