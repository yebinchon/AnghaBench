; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_create_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_create_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32, i32, i32, %struct.TYPE_5__*, i32, i32*, %struct.device*, %struct.regulator_dev* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.regulator_dev = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@REG_STR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"could not add device link %s err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to create debugfs directory\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"uA_load\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"min_uV\00", align 1
@PM_SUSPEND_ON = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"max_uV\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"constraint_flags\00", align 1
@constraint_flags_fops = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regulator* (%struct.regulator_dev*, %struct.device*, i8*)* @create_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regulator* @create_regulator(%struct.regulator_dev* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.regulator*, align 8
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.regulator*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @REG_STR_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.regulator* @kzalloc(i32 56, i32 %18)
  store %struct.regulator* %19, %struct.regulator** %8, align 8
  %20 = load %struct.regulator*, %struct.regulator** %8, align 8
  %21 = icmp eq %struct.regulator* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store %struct.regulator* null, %struct.regulator** %4, align 8
  store i32 1, i32* %13, align 4
  br label %164

23:                                               ; preds = %3
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %25 = call i32 @regulator_lock(%struct.regulator_dev* %24)
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %27 = load %struct.regulator*, %struct.regulator** %8, align 8
  %28 = getelementptr inbounds %struct.regulator, %struct.regulator* %27, i32 0, i32 7
  store %struct.regulator_dev* %26, %struct.regulator_dev** %28, align 8
  %29 = load %struct.regulator*, %struct.regulator** %8, align 8
  %30 = getelementptr inbounds %struct.regulator, %struct.regulator* %29, i32 0, i32 1
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %32 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %31, i32 0, i32 2
  %33 = call i32 @list_add(i32* %30, i32* %32)
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = icmp ne %struct.device* %34, null
  br i1 %35, label %36, label %79

36:                                               ; preds = %23
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load %struct.regulator*, %struct.regulator** %8, align 8
  %39 = getelementptr inbounds %struct.regulator, %struct.regulator* %38, i32 0, i32 6
  store %struct.device* %37, %struct.device** %39, align 8
  %40 = load i32, i32* @REG_STR_SIZE, align 4
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @snprintf(i8* %17, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @REG_STR_SIZE, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %156

51:                                               ; preds = %36
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32* @kstrdup(i8* %17, i32 %52)
  %54 = load %struct.regulator*, %struct.regulator** %8, align 8
  %55 = getelementptr inbounds %struct.regulator, %struct.regulator* %54, i32 0, i32 5
  store i32* %53, i32** %55, align 8
  %56 = load %struct.regulator*, %struct.regulator** %8, align 8
  %57 = getelementptr inbounds %struct.regulator, %struct.regulator* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %156

61:                                               ; preds = %51
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %63 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = call i32 @sysfs_create_link_nowarn(i32* %64, %struct.TYPE_6__* %66, i8* %17)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_dbg(%struct.regulator_dev* %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %61
  br label %91

79:                                               ; preds = %23
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32* @kstrdup_const(i8* %80, i32 %81)
  %83 = load %struct.regulator*, %struct.regulator** %8, align 8
  %84 = getelementptr inbounds %struct.regulator, %struct.regulator* %83, i32 0, i32 5
  store i32* %82, i32** %84, align 8
  %85 = load %struct.regulator*, %struct.regulator** %8, align 8
  %86 = getelementptr inbounds %struct.regulator, %struct.regulator* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %156

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %78
  %92 = load %struct.regulator*, %struct.regulator** %8, align 8
  %93 = getelementptr inbounds %struct.regulator, %struct.regulator* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %96 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @debugfs_create_dir(i32* %94, i32 %97)
  %99 = load %struct.regulator*, %struct.regulator** %8, align 8
  %100 = getelementptr inbounds %struct.regulator, %struct.regulator* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.regulator*, %struct.regulator** %8, align 8
  %102 = getelementptr inbounds %struct.regulator, %struct.regulator* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %91
  %106 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %107 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_dbg(%struct.regulator_dev* %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %140

108:                                              ; preds = %91
  %109 = load %struct.regulator*, %struct.regulator** %8, align 8
  %110 = getelementptr inbounds %struct.regulator, %struct.regulator* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.regulator*, %struct.regulator** %8, align 8
  %113 = getelementptr inbounds %struct.regulator, %struct.regulator* %112, i32 0, i32 4
  %114 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 292, i32 %111, i32* %113)
  %115 = load %struct.regulator*, %struct.regulator** %8, align 8
  %116 = getelementptr inbounds %struct.regulator, %struct.regulator* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.regulator*, %struct.regulator** %8, align 8
  %119 = getelementptr inbounds %struct.regulator, %struct.regulator* %118, i32 0, i32 3
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i64, i64* @PM_SUSPEND_ON, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 292, i32 %117, i32* %123)
  %125 = load %struct.regulator*, %struct.regulator** %8, align 8
  %126 = getelementptr inbounds %struct.regulator, %struct.regulator* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.regulator*, %struct.regulator** %8, align 8
  %129 = getelementptr inbounds %struct.regulator, %struct.regulator* %128, i32 0, i32 3
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i64, i64* @PM_SUSPEND_ON, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 292, i32 %127, i32* %133)
  %135 = load %struct.regulator*, %struct.regulator** %8, align 8
  %136 = getelementptr inbounds %struct.regulator, %struct.regulator* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.regulator*, %struct.regulator** %8, align 8
  %139 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 292, i32 %137, %struct.regulator* %138, i32* @constraint_flags_fops)
  br label %140

140:                                              ; preds = %108, %105
  %141 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %142 = load i32, i32* @REGULATOR_CHANGE_STATUS, align 4
  %143 = call i32 @regulator_ops_is_valid(%struct.regulator_dev* %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %140
  %146 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %147 = call i64 @_regulator_is_enabled(%struct.regulator_dev* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load %struct.regulator*, %struct.regulator** %8, align 8
  %151 = getelementptr inbounds %struct.regulator, %struct.regulator* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %145, %140
  %153 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %154 = call i32 @regulator_unlock(%struct.regulator_dev* %153)
  %155 = load %struct.regulator*, %struct.regulator** %8, align 8
  store %struct.regulator* %155, %struct.regulator** %4, align 8
  store i32 1, i32* %13, align 4
  br label %164

156:                                              ; preds = %89, %60, %50
  %157 = load %struct.regulator*, %struct.regulator** %8, align 8
  %158 = getelementptr inbounds %struct.regulator, %struct.regulator* %157, i32 0, i32 1
  %159 = call i32 @list_del(i32* %158)
  %160 = load %struct.regulator*, %struct.regulator** %8, align 8
  %161 = call i32 @kfree(%struct.regulator* %160)
  %162 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %163 = call i32 @regulator_unlock(%struct.regulator_dev* %162)
  store %struct.regulator* null, %struct.regulator** %4, align 8
  store i32 1, i32* %13, align 4
  br label %164

164:                                              ; preds = %156, %152, %22
  %165 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load %struct.regulator*, %struct.regulator** %4, align 8
  ret %struct.regulator* %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.regulator* @kzalloc(i32, i32) #2

declare dso_local i32 @regulator_lock(%struct.regulator_dev*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @kstrdup(i8*, i32) #2

declare dso_local i32 @sysfs_create_link_nowarn(i32*, %struct.TYPE_6__*, i8*) #2

declare dso_local i32 @rdev_dbg(%struct.regulator_dev*, i8*, ...) #2

declare dso_local i32* @kstrdup_const(i8*, i32) #2

declare dso_local i32 @debugfs_create_dir(i32*, i32) #2

declare dso_local i32 @debugfs_create_u32(i8*, i32, i32, i32*) #2

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.regulator*, i32*) #2

declare dso_local i32 @regulator_ops_is_valid(%struct.regulator_dev*, i32) #2

declare dso_local i64 @_regulator_is_enabled(%struct.regulator_dev*) #2

declare dso_local i32 @regulator_unlock(%struct.regulator_dev*) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @kfree(%struct.regulator*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
