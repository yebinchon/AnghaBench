; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_master_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_master_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, i32, %struct.vme_bridge* }
%struct.vme_bridge = type { %struct.fake_driver* }
%struct.fake_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid VME Window alignment\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid size alignment\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Size must be non-zero for enabled windows\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Invalid data width\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i32, i64, i64, i32, i32, i32)* @fake_master_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_master_set(%struct.vme_master_resource* %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vme_master_resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.vme_bridge*, align 8
  %19 = alloca %struct.fake_driver*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %21 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %20, i32 0, i32 2
  %22 = load %struct.vme_bridge*, %struct.vme_bridge** %21, align 8
  store %struct.vme_bridge* %22, %struct.vme_bridge** %18, align 8
  %23 = load %struct.vme_bridge*, %struct.vme_bridge** %18, align 8
  %24 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %23, i32 0, i32 0
  %25 = load %struct.fake_driver*, %struct.fake_driver** %24, align 8
  store %struct.fake_driver* %25, %struct.fake_driver** %19, align 8
  %26 = load i64, i64* %11, align 8
  %27 = and i64 %26, 65535
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %7
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %16, align 4
  br label %125

33:                                               ; preds = %7
  %34 = load i64, i64* %12, align 8
  %35 = and i64 %34, 65535
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %16, align 4
  br label %125

41:                                               ; preds = %33
  %42 = load i64, i64* %12, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %16, align 4
  br label %125

51:                                               ; preds = %44, %41
  %52 = load i32, i32* %15, align 4
  switch i32 %52, label %54 [
    i32 132, label %53
    i32 134, label %53
    i32 133, label %53
  ]

53:                                               ; preds = %51, %51, %51
  br label %58

54:                                               ; preds = %51
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %16, align 4
  br label %124

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  switch i32 %59, label %61 [
    i32 139, label %60
    i32 138, label %60
    i32 137, label %60
    i32 136, label %60
    i32 135, label %60
    i32 131, label %60
    i32 130, label %60
    i32 129, label %60
    i32 128, label %60
  ]

60:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58
  br label %65

61:                                               ; preds = %58
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %16, align 4
  br label %123

65:                                               ; preds = %60
  %66 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %67 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %66, i32 0, i32 1
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %70 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.fake_driver*, %struct.fake_driver** %19, align 8
  %74 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.fake_driver*, %struct.fake_driver** %19, align 8
  %82 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %17, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i64 %80, i64* %87, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.fake_driver*, %struct.fake_driver** %19, align 8
  %90 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i64 %88, i64* %95, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.fake_driver*, %struct.fake_driver** %19, align 8
  %98 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  store i32 %96, i32* %103, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.fake_driver*, %struct.fake_driver** %19, align 8
  %106 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  store i32 %104, i32* %111, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.fake_driver*, %struct.fake_driver** %19, align 8
  %114 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %17, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 5
  store i32 %112, i32* %119, align 8
  %120 = load %struct.vme_master_resource*, %struct.vme_master_resource** %9, align 8
  %121 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %120, i32 0, i32 1
  %122 = call i32 @spin_unlock(i32* %121)
  store i32 0, i32* %8, align 4
  br label %127

123:                                              ; preds = %61
  br label %124

124:                                              ; preds = %123, %54
  br label %125

125:                                              ; preds = %124, %47, %37, %29
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %125, %65
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
