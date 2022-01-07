; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_chk_dev_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_chk_dev_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_dev = type { i32, i64, %struct.TYPE_2__*, %struct.rio_dev* }
%struct.TYPE_2__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@RIO_PEF_SWITCH = common dso_local global i32 0, align 4
@RIO_DEV_ID_CAR = common dso_local global i32 0, align 4
@RIO_INVALID_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"RIO: link failed on [%s]-P%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"RIO: failed to trace route to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_dev*, %struct.rio_dev**, i32*)* @rio_chk_dev_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_chk_dev_route(%struct.rio_dev* %0, %struct.rio_dev** %1, i32* %2) #0 {
  %4 = alloca %struct.rio_dev*, align 8
  %5 = alloca %struct.rio_dev**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rio_dev*, align 8
  store %struct.rio_dev* %0, %struct.rio_dev** %4, align 8
  store %struct.rio_dev** %1, %struct.rio_dev*** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  store %struct.rio_dev* null, %struct.rio_dev** %10, align 8
  br label %13

13:                                               ; preds = %40, %3
  %14 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %14, i32 0, i32 3
  %16 = load %struct.rio_dev*, %struct.rio_dev** %15, align 8
  %17 = icmp ne %struct.rio_dev* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %20 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %19, i32 0, i32 3
  %21 = load %struct.rio_dev*, %struct.rio_dev** %20, align 8
  %22 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RIO_PEF_SWITCH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %18, %13
  %28 = phi i1 [ false, %13 ], [ %26, %18 ]
  br i1 %28, label %29, label %44

29:                                               ; preds = %27
  %30 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %31 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %30, i32 0, i32 3
  %32 = load %struct.rio_dev*, %struct.rio_dev** %31, align 8
  %33 = load i32, i32* @RIO_DEV_ID_CAR, align 4
  %34 = call i32 @rio_read_config_32(%struct.rio_dev* %32, i32 %33, i32* %7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %38 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %37, i32 0, i32 3
  %39 = load %struct.rio_dev*, %struct.rio_dev** %38, align 8
  store %struct.rio_dev* %39, %struct.rio_dev** %10, align 8
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %42 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %41, i32 0, i32 3
  %43 = load %struct.rio_dev*, %struct.rio_dev** %42, align 8
  store %struct.rio_dev* %43, %struct.rio_dev** %4, align 8
  br label %13

44:                                               ; preds = %36, %27
  %45 = load %struct.rio_dev*, %struct.rio_dev** %10, align 8
  %46 = icmp ne %struct.rio_dev* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %76

48:                                               ; preds = %44
  %49 = load %struct.rio_dev*, %struct.rio_dev** %10, align 8
  %50 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %55 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @RIO_INVALID_ROUTE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %48
  %63 = load %struct.rio_dev*, %struct.rio_dev** %10, align 8
  %64 = call i32 @rio_name(%struct.rio_dev* %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.rio_dev*, %struct.rio_dev** %10, align 8
  %68 = load %struct.rio_dev**, %struct.rio_dev*** %5, align 8
  store %struct.rio_dev* %67, %struct.rio_dev** %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %9, align 4
  br label %75

71:                                               ; preds = %48
  %72 = load %struct.rio_dev*, %struct.rio_dev** %4, align 8
  %73 = call i32 @rio_name(%struct.rio_dev* %72)
  %74 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %62
  br label %76

76:                                               ; preds = %75, %47
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i32 @rio_read_config_32(%struct.rio_dev*, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @rio_name(%struct.rio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
