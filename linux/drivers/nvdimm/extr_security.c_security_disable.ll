; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_security_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_security_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { %struct.TYPE_4__, %struct.device }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nvdimm*, i8*)* }
%struct.device = type { i32 }
%struct.nvdimm_bus = type { i32 }
%struct.key = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NVDIMM_BASE_KEY = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"key: %d disable: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@NVDIMM_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm*, i32)* @security_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @security_disable(%struct.nvdimm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvdimm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nvdimm_bus*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.nvdimm* %0, %struct.nvdimm** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %12 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device* %13)
  store %struct.nvdimm_bus* %14, %struct.nvdimm_bus** %7, align 8
  %15 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %7, align 8
  %16 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %19 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %25 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.nvdimm*, i8*)*, i32 (%struct.nvdimm*, i8*)** %28, align 8
  %30 = icmp ne i32 (%struct.nvdimm*, i8*)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %33 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31, %23, %2
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %84

40:                                               ; preds = %31
  %41 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %42 = call i32 @check_security_state(%struct.nvdimm* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %84

47:                                               ; preds = %40
  %48 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @NVDIMM_BASE_KEY, align 4
  %51 = call i8* @nvdimm_get_user_key_payload(%struct.nvdimm* %48, i32 %49, i32 %50, %struct.key** %8)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOKEY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %84

57:                                               ; preds = %47
  %58 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %59 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.nvdimm*, i8*)*, i32 (%struct.nvdimm*, i8*)** %62, align 8
  %64 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 %63(%struct.nvdimm* %64, i8* %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load %struct.key*, %struct.key** %8, align 8
  %69 = call i32 @key_serial(%struct.key* %68)
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %74 = call i32 @dev_dbg(%struct.device* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %69, i8* %73)
  %75 = load %struct.key*, %struct.key** %8, align 8
  %76 = call i32 @nvdimm_put_key(%struct.key* %75)
  %77 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %78 = load i32, i32* @NVDIMM_USER, align 4
  %79 = call i64 @nvdimm_security_flags(%struct.nvdimm* %77, i32 %78)
  %80 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %81 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %57, %54, %45, %37
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @check_security_state(%struct.nvdimm*) #1

declare dso_local i8* @nvdimm_get_user_key_payload(%struct.nvdimm*, i32, i32, %struct.key**) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @nvdimm_put_key(%struct.key*) #1

declare dso_local i64 @nvdimm_security_flags(%struct.nvdimm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
