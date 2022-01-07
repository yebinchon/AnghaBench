; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c___nvdimm_security_overwrite_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c___nvdimm_security_overwrite_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i8*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nvdimm*)* }
%struct.nvdimm_bus = type { i32 }

@NDD_WORK_PENDING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"overwrite failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"overwrite completed\0A\00", align 1
@NDD_SECURITY_OVERWRITE = common dso_local global i32 0, align 4
@NVDIMM_USER = common dso_local global i32 0, align 4
@NVDIMM_MASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__nvdimm_security_overwrite_query(%struct.nvdimm* %0) #0 {
  %2 = alloca %struct.nvdimm*, align 8
  %3 = alloca %struct.nvdimm_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvdimm* %0, %struct.nvdimm** %2, align 8
  %6 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %7 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %6, i32 0, i32 1
  %8 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(i32* %7)
  store %struct.nvdimm_bus* %8, %struct.nvdimm_bus** %3, align 8
  %9 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %10 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load i32, i32* @NDD_WORK_PENDING, align 4
  %13 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %14 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %13, i32 0, i32 2
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %121

18:                                               ; preds = %1
  %19 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %20 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %24 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %18
  %29 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %30 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.nvdimm*)*, i32 (%struct.nvdimm*)** %33, align 8
  %35 = icmp ne i32 (%struct.nvdimm*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %38 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36, %28, %18
  br label %121

43:                                               ; preds = %36
  %44 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %45 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.nvdimm*)*, i32 (%struct.nvdimm*)** %48, align 8
  %50 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %51 = call i32 %49(%struct.nvdimm* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %43
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, 10
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @system_wq, align 4
  %60 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %61 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %60, i32 0, i32 3
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @HZ, align 4
  %64 = mul i32 %62, %63
  %65 = call i32 @queue_delayed_work(i32 %59, i32* %61, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @min(i32 900, i32 %66)
  %68 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %69 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %121

71:                                               ; preds = %43
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %76 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %75, i32 0, i32 1
  %77 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %82

78:                                               ; preds = %71
  %79 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %80 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %79, i32 0, i32 1
  %81 = call i32 @dev_dbg(i32* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %84 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %90 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @sysfs_notify_dirent(i64 %92)
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %96 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load i32, i32* @NDD_SECURITY_OVERWRITE, align 4
  %99 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %100 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %99, i32 0, i32 2
  %101 = call i32 @clear_bit(i32 %98, i32* %100)
  %102 = load i32, i32* @NDD_WORK_PENDING, align 4
  %103 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %104 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %103, i32 0, i32 2
  %105 = call i32 @clear_bit(i32 %102, i32* %104)
  %106 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %107 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %106, i32 0, i32 1
  %108 = call i32 @put_device(i32* %107)
  %109 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %110 = load i32, i32* @NVDIMM_USER, align 4
  %111 = call i8* @nvdimm_security_flags(%struct.nvdimm* %109, i32 %110)
  %112 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %113 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  %115 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %116 = load i32, i32* @NVDIMM_MASTER, align 4
  %117 = call i8* @nvdimm_security_flags(%struct.nvdimm* %115, i32 %116)
  %118 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %119 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i8* %117, i8** %120, align 8
  br label %121

121:                                              ; preds = %94, %56, %42, %17
  ret void
}

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(i32*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @sysfs_notify_dirent(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i8* @nvdimm_security_flags(%struct.nvdimm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
