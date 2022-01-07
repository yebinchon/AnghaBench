; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_slave_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_slave_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_slave_resource = type { i32, i32, %struct.vme_bridge* }
%struct.vme_bridge = type { %struct.fake_driver* }
%struct.fake_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid VME base alignment\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid VME bound alignment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_slave_resource*, i32, i64, i64, i32, i32, i32)* @fake_slave_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_slave_set(%struct.vme_slave_resource* %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vme_slave_resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.vme_bridge*, align 8
  %20 = alloca %struct.fake_driver*, align 8
  store %struct.vme_slave_resource* %0, %struct.vme_slave_resource** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %21 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %9, align 8
  %22 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %21, i32 0, i32 2
  %23 = load %struct.vme_bridge*, %struct.vme_bridge** %22, align 8
  store %struct.vme_bridge* %23, %struct.vme_bridge** %19, align 8
  %24 = load %struct.vme_bridge*, %struct.vme_bridge** %19, align 8
  %25 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %24, i32 0, i32 0
  %26 = load %struct.fake_driver*, %struct.fake_driver** %25, align 8
  store %struct.fake_driver* %26, %struct.fake_driver** %20, align 8
  %27 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %9, align 8
  %28 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %14, align 4
  switch i32 %30, label %36 [
    i32 136, label %31
    i32 135, label %32
    i32 134, label %33
    i32 133, label %34
    i32 132, label %35
    i32 131, label %35
    i32 130, label %35
    i32 129, label %35
    i32 128, label %35
  ]

31:                                               ; preds = %7
  store i32 16, i32* %17, align 4
  br label %40

32:                                               ; preds = %7
  store i32 4096, i32* %17, align 4
  br label %40

33:                                               ; preds = %7
  store i32 65536, i32* %17, align 4
  br label %40

34:                                               ; preds = %7
  store i32 65536, i32* %17, align 4
  br label %40

35:                                               ; preds = %7, %7, %7, %7, %7
  br label %36

36:                                               ; preds = %7, %35
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %124

40:                                               ; preds = %34, %33, %32, %31
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %41, %42
  %44 = load i32, i32* %17, align 4
  %45 = zext i32 %44 to i64
  %46 = sub i64 %43, %45
  store i64 %46, i64* %18, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sub i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = and i64 %47, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %124

57:                                               ; preds = %40
  %58 = load i64, i64* %18, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sub i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = and i64 %58, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %124

68:                                               ; preds = %57
  %69 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %9, align 8
  %70 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %69, i32 0, i32 1
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.fake_driver*, %struct.fake_driver** %20, align 8
  %74 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.fake_driver*, %struct.fake_driver** %20, align 8
  %82 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i64 %80, i64* %87, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.fake_driver*, %struct.fake_driver** %20, align 8
  %90 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %16, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i64 %88, i64* %95, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @fake_pci_to_ptr(i32 %96)
  %98 = load %struct.fake_driver*, %struct.fake_driver** %20, align 8
  %99 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 5
  store i32 %97, i32* %104, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.fake_driver*, %struct.fake_driver** %20, align 8
  %107 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  store i32 %105, i32* %112, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.fake_driver*, %struct.fake_driver** %20, align 8
  %115 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  store i32 %113, i32* %120, align 4
  %121 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %9, align 8
  %122 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %121, i32 0, i32 1
  %123 = call i32 @mutex_unlock(i32* %122)
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %68, %64, %53, %36
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fake_pci_to_ptr(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
