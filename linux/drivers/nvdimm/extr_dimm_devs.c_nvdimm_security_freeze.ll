; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nvdimm_security_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nvdimm_security_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NDD_SECURITY_OVERWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Overwrite operation in progress.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@NVDIMM_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvdimm_security_freeze(%struct.nvdimm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvdimm*, align 8
  %4 = alloca i32, align 4
  store %struct.nvdimm* %0, %struct.nvdimm** %3, align 8
  %5 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %6 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %5, i32 0, i32 1
  %7 = call i32 @is_nvdimm_bus_locked(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %13 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %19 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.nvdimm*)**
  %24 = load i32 (%struct.nvdimm*)*, i32 (%struct.nvdimm*)** %23, align 8
  %25 = icmp ne i32 (%struct.nvdimm*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17, %1
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %67

29:                                               ; preds = %17
  %30 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %31 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %67

38:                                               ; preds = %29
  %39 = load i32, i32* @NDD_SECURITY_OVERWRITE, align 4
  %40 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %41 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %40, i32 0, i32 2
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %46 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %45, i32 0, i32 1
  %47 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %67

50:                                               ; preds = %38
  %51 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %52 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to i32 (%struct.nvdimm*)**
  %57 = load i32 (%struct.nvdimm*)*, i32 (%struct.nvdimm*)** %56, align 8
  %58 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %59 = call i32 %57(%struct.nvdimm* %58)
  store i32 %59, i32* %4, align 4
  %60 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %61 = load i32, i32* @NVDIMM_USER, align 4
  %62 = call i64 @nvdimm_security_flags(%struct.nvdimm* %60, i32 %61)
  %63 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %64 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %50, %44, %35, %26
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @nvdimm_security_flags(%struct.nvdimm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
