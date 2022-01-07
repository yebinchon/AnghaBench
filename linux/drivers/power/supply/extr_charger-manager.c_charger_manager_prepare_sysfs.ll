; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_charger_manager_prepare_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_charger_manager_prepare_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { i32, %struct.charger_desc* }
%struct.charger_desc = type { i32, %struct.charger_regulator*, %struct.TYPE_6__** }
%struct.charger_regulator = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__** }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_10__** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"charger.%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@charger_name_show = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@charger_state_show = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"externally_control\00", align 1
@charger_externally_control_show = common dso_local global i32 0, align 4
@charger_externally_control_store = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"'%s' regulator's externally_control is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"Cannot register regulator because charger-manager must need at least one charger for charging battery\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*)* @charger_manager_prepare_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charger_manager_prepare_sysfs(%struct.charger_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charger_manager*, align 8
  %4 = alloca %struct.charger_desc*, align 8
  %5 = alloca %struct.charger_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.charger_manager* %0, %struct.charger_manager** %3, align 8
  %9 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %10 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %9, i32 0, i32 1
  %11 = load %struct.charger_desc*, %struct.charger_desc** %10, align 8
  store %struct.charger_desc* %11, %struct.charger_desc** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %156, %1
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %15 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %159

18:                                               ; preds = %12
  %19 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %20 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %19, i32 0, i32 1
  %21 = load %struct.charger_regulator*, %struct.charger_regulator** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %21, i64 %23
  store %struct.charger_regulator* %24, %struct.charger_regulator** %5, align 8
  %25 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %26 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @devm_kasprintf(i32 %27, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %170

36:                                               ; preds = %18
  %37 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %38 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %41 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %40, i32 0, i32 6
  %42 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %42, i64 0
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %43, align 8
  %44 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %45 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %48 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %47, i32 0, i32 6
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 1
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %50, align 8
  %51 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %52 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %55 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %54, i32 0, i32 6
  %56 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %56, i64 2
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %57, align 8
  %58 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %59 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %58, i32 0, i32 6
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %60, i64 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %61, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %64 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %67 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %66, i32 0, i32 6
  %68 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %67, align 8
  %69 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %70 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store %struct.TYPE_10__** %68, %struct.TYPE_10__*** %71, align 8
  %72 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %73 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %72, i32 0, i32 5
  %74 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %75 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %78
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %79, align 8
  %80 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %81 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = call i32 @sysfs_attr_init(%struct.TYPE_10__* %82)
  %84 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %85 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %87, align 8
  %88 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %89 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i32 292, i32* %91, align 8
  %92 = load i32, i32* @charger_name_show, align 4
  %93 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %94 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %97 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = call i32 @sysfs_attr_init(%struct.TYPE_10__* %98)
  %100 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %101 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %103, align 8
  %104 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %105 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store i32 292, i32* %107, align 8
  %108 = load i32, i32* @charger_state_show, align 4
  %109 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %110 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %113 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = call i32 @sysfs_attr_init(%struct.TYPE_10__* %114)
  %116 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %117 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %119, align 8
  %120 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %121 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i32 420, i32* %123, align 8
  %124 = load i32, i32* @charger_externally_control_show, align 4
  %125 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %126 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* @charger_externally_control_store, align 4
  %129 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %130 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %133 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %132, i32 0, i32 1
  %134 = load %struct.charger_regulator*, %struct.charger_regulator** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %134, i64 %136
  %138 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %36
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141, %36
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %144, %141
  %146 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %147 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %150 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.charger_regulator*, %struct.charger_regulator** %5, align 8
  %153 = getelementptr inbounds %struct.charger_regulator, %struct.charger_regulator* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dev_info(i32 %148, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %12

159:                                              ; preds = %12
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %164 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @dev_err(i32 %165, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0))
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %170

169:                                              ; preds = %159
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %162, %33
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
