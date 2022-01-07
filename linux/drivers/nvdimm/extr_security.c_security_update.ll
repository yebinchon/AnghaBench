; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_security_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_security_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { %struct.TYPE_4__, %struct.device }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nvdimm*, i8*, i8*, i32)* }
%struct.device = type { i32 }
%struct.nvdimm_bus = type { i32 }
%struct.key = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NVDIMM_BASE_KEY = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@NVDIMM_NEW_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"key: %d %d update%s: %s\0A\00", align 1
@NVDIMM_MASTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"(master)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(user)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@NVDIMM_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm*, i32, i32, i32)* @security_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @security_update(%struct.nvdimm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvdimm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.nvdimm_bus*, align 8
  %12 = alloca %struct.key*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.nvdimm* %0, %struct.nvdimm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %18 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %17, i32 0, i32 1
  store %struct.device* %18, %struct.device** %10, align 8
  %19 = load %struct.device*, %struct.device** %10, align 8
  %20 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device* %19)
  store %struct.nvdimm_bus* %20, %struct.nvdimm_bus** %11, align 8
  %21 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %11, align 8
  %22 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %21, i32 0, i32 0
  %23 = call i32 @lockdep_assert_held(i32* %22)
  %24 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %25 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %4
  %30 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %31 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.nvdimm*, i8*, i8*, i32)*, i32 (%struct.nvdimm*, i8*, i8*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.nvdimm*, i8*, i8*, i32)* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %39 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37, %29, %4
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %125

46:                                               ; preds = %37
  %47 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %48 = call i32 @check_security_state(%struct.nvdimm* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %5, align 4
  br label %125

53:                                               ; preds = %46
  %54 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NVDIMM_BASE_KEY, align 4
  %57 = call i8* @nvdimm_get_user_key_payload(%struct.nvdimm* %54, i32 %55, i32 %56, %struct.key** %12)
  store i8* %57, i8** %15, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ENOKEY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %125

63:                                               ; preds = %53
  %64 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @NVDIMM_NEW_KEY, align 4
  %67 = call i8* @nvdimm_get_user_key_payload(%struct.nvdimm* %64, i32 %65, i32 %66, %struct.key** %13)
  store i8* %67, i8** %16, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %63
  %71 = load %struct.key*, %struct.key** %12, align 8
  %72 = call i32 @nvdimm_put_key(%struct.key* %71)
  %73 = load i32, i32* @ENOKEY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %125

75:                                               ; preds = %63
  %76 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %77 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32 (%struct.nvdimm*, i8*, i8*, i32)*, i32 (%struct.nvdimm*, i8*, i8*, i32)** %80, align 8
  %82 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 %81(%struct.nvdimm* %82, i8* %83, i8* %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load %struct.device*, %struct.device** %10, align 8
  %88 = load %struct.key*, %struct.key** %12, align 8
  %89 = call i32 @key_serial(%struct.key* %88)
  %90 = load %struct.key*, %struct.key** %13, align 8
  %91 = call i32 @key_serial(%struct.key* %90)
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @NVDIMM_MASTER, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %101 = call i32 @dev_dbg(%struct.device* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %91, i8* %96, i8* %100)
  %102 = load %struct.key*, %struct.key** %13, align 8
  %103 = call i32 @nvdimm_put_key(%struct.key* %102)
  %104 = load %struct.key*, %struct.key** %12, align 8
  %105 = call i32 @nvdimm_put_key(%struct.key* %104)
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @NVDIMM_MASTER, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %75
  %110 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %111 = load i32, i32* @NVDIMM_MASTER, align 4
  %112 = call i8* @nvdimm_security_flags(%struct.nvdimm* %110, i32 %111)
  %113 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %114 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  br label %123

116:                                              ; preds = %75
  %117 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %118 = load i32, i32* @NVDIMM_USER, align 4
  %119 = call i8* @nvdimm_security_flags(%struct.nvdimm* %117, i32 %118)
  %120 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %121 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  br label %123

123:                                              ; preds = %116, %109
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %70, %60, %51, %43
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @check_security_state(%struct.nvdimm*) #1

declare dso_local i8* @nvdimm_get_user_key_payload(%struct.nvdimm*, i32, i32, %struct.key**) #1

declare dso_local i32 @nvdimm_put_key(%struct.key*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i8* @nvdimm_security_flags(%struct.nvdimm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
