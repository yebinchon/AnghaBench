; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_get_asm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_get_asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.rio_dev = type { i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head* }

@rio_global_list_lock = common dso_local global i32 0, align 4
@rio_devices = common dso_local global %struct.list_head zeroinitializer, align 8
@RIO_ANY_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rio_dev* @rio_get_asm(i64 %0, i64 %1, i64 %2, i64 %3, %struct.rio_dev* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rio_dev*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.rio_dev*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.rio_dev* %4, %struct.rio_dev** %10, align 8
  %13 = call i32 (...) @in_interrupt()
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = call i32 @spin_lock(i32* @rio_global_list_lock)
  %16 = load %struct.rio_dev*, %struct.rio_dev** %10, align 8
  %17 = icmp ne %struct.rio_dev* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.rio_dev*, %struct.rio_dev** %10, align 8
  %20 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.list_head*, %struct.list_head** %21, align 8
  br label %25

23:                                               ; preds = %5
  %24 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @rio_devices, i32 0, i32 0), align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi %struct.list_head* [ %22, %18 ], [ %24, %23 ]
  store %struct.list_head* %26, %struct.list_head** %11, align 8
  br label %27

27:                                               ; preds = %78, %25
  %28 = load %struct.list_head*, %struct.list_head** %11, align 8
  %29 = icmp ne %struct.list_head* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.list_head*, %struct.list_head** %11, align 8
  %32 = icmp ne %struct.list_head* %31, @rio_devices
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ]
  br i1 %34, label %35, label %82

35:                                               ; preds = %33
  %36 = load %struct.list_head*, %struct.list_head** %11, align 8
  %37 = call %struct.rio_dev* @rio_dev_g(%struct.list_head* %36)
  store %struct.rio_dev* %37, %struct.rio_dev** %12, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @RIO_ANY_ID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.rio_dev*, %struct.rio_dev** %12, align 8
  %43 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %41, %35
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @RIO_ANY_ID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load %struct.rio_dev*, %struct.rio_dev** %12, align 8
  %53 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51, %47
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @RIO_ANY_ID, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load %struct.rio_dev*, %struct.rio_dev** %12, align 8
  %63 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61, %57
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @RIO_ANY_ID, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load %struct.rio_dev*, %struct.rio_dev** %12, align 8
  %73 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %67
  br label %83

78:                                               ; preds = %71, %61, %51, %41
  %79 = load %struct.list_head*, %struct.list_head** %11, align 8
  %80 = getelementptr inbounds %struct.list_head, %struct.list_head* %79, i32 0, i32 0
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8
  store %struct.list_head* %81, %struct.list_head** %11, align 8
  br label %27

82:                                               ; preds = %33
  store %struct.rio_dev* null, %struct.rio_dev** %12, align 8
  br label %83

83:                                               ; preds = %82, %77
  %84 = load %struct.rio_dev*, %struct.rio_dev** %10, align 8
  %85 = call i32 @rio_dev_put(%struct.rio_dev* %84)
  %86 = load %struct.rio_dev*, %struct.rio_dev** %12, align 8
  %87 = call %struct.rio_dev* @rio_dev_get(%struct.rio_dev* %86)
  store %struct.rio_dev* %87, %struct.rio_dev** %12, align 8
  %88 = call i32 @spin_unlock(i32* @rio_global_list_lock)
  %89 = load %struct.rio_dev*, %struct.rio_dev** %12, align 8
  ret %struct.rio_dev* %89
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.rio_dev* @rio_dev_g(%struct.list_head*) #1

declare dso_local i32 @rio_dev_put(%struct.rio_dev*) #1

declare dso_local %struct.rio_dev* @rio_dev_get(%struct.rio_dev*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
