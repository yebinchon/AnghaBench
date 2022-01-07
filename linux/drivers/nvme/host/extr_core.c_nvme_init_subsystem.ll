; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_init_subsystem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_init_subsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, %struct.nvme_subsystem*, %struct.TYPE_8__* }
%struct.nvme_subsystem = type { i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nvme_id_ctrl = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvme_subsys_class = common dso_local global i32 0, align 4
@nvme_release_subsystem = common dso_local global i32 0, align 4
@nvme_subsys_attrs_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"nvme-subsys%d\00", align 1
@nvme_subsystems_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to register subsystem device.\0A\00", align 1
@nvme_subsystems = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"failed to create sysfs link from subsystem.\0A\00", align 1
@NVME_IOPOLICY_NUMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, %struct.nvme_id_ctrl*)* @nvme_init_subsystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_init_subsystem(%struct.nvme_ctrl* %0, %struct.nvme_id_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca %struct.nvme_id_ctrl*, align 8
  %6 = alloca %struct.nvme_subsystem*, align 8
  %7 = alloca %struct.nvme_subsystem*, align 8
  %8 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store %struct.nvme_id_ctrl* %1, %struct.nvme_id_ctrl** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nvme_subsystem* @kzalloc(i32 88, i32 %9)
  store %struct.nvme_subsystem* %10, %struct.nvme_subsystem** %6, align 8
  %11 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %12 = icmp ne %struct.nvme_subsystem* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %181

16:                                               ; preds = %2
  %17 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %18 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %20 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %19, i32 0, i32 15
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %23 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %22, i32 0, i32 14
  %24 = call i32 @kref_init(i32* %23)
  %25 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %26 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %29 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %28, i32 0, i32 13
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %32 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %33 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %34 = call i32 @nvme_init_subnqn(%struct.nvme_subsystem* %31, %struct.nvme_ctrl* %32, %struct.nvme_id_ctrl* %33)
  %35 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %36 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %39 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %37, i32 %40, i32 4)
  %42 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %43 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %46 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32 %44, i32 %47, i32 4)
  %49 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %50 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %53 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32 %51, i32 %54, i32 4)
  %56 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %57 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le16_to_cpu(i32 %58)
  %60 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %61 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %60, i32 0, i32 9
  store i8* %59, i8** %61, align 8
  %62 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %63 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %66 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %68 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le16_to_cpu(i32 %69)
  %71 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %72 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %71, i32 0, i32 7
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @nvme_subsys_class, align 4
  %74 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %75 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @nvme_release_subsystem, align 4
  %78 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %79 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @nvme_subsys_attrs_groups, align 4
  %82 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %83 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %86 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %85, i32 0, i32 2
  %87 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %88 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_set_name(%struct.TYPE_7__* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %92 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %91, i32 0, i32 2
  %93 = call i32 @device_initialize(%struct.TYPE_7__* %92)
  %94 = call i32 @mutex_lock(i32* @nvme_subsystems_lock)
  %95 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %96 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call %struct.nvme_subsystem* @__nvme_find_get_subsystem(i32 %97)
  store %struct.nvme_subsystem* %98, %struct.nvme_subsystem** %7, align 8
  %99 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %7, align 8
  %100 = icmp ne %struct.nvme_subsystem* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %16
  %102 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %103 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %102, i32 0, i32 2
  %104 = call i32 @put_device(%struct.TYPE_7__* %103)
  %105 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %7, align 8
  store %struct.nvme_subsystem* %105, %struct.nvme_subsystem** %6, align 8
  %106 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %107 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %108 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %109 = call i32 @nvme_validate_cntlid(%struct.nvme_subsystem* %106, %struct.nvme_ctrl* %107, %struct.nvme_id_ctrl* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %101
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %175

114:                                              ; preds = %101
  br label %136

115:                                              ; preds = %16
  %116 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %117 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %116, i32 0, i32 2
  %118 = call i32 @device_add(%struct.TYPE_7__* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %123 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %122, i32 0, i32 3
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = call i32 @dev_err(%struct.TYPE_8__* %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %126 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %127 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %126, i32 0, i32 2
  %128 = call i32 @put_device(%struct.TYPE_7__* %127)
  br label %178

129:                                              ; preds = %115
  %130 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %131 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %130, i32 0, i32 4
  %132 = call i32 @ida_init(i32* %131)
  %133 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %134 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %133, i32 0, i32 3
  %135 = call i32 @list_add_tail(i32* %134, i32* @nvme_subsystems)
  br label %136

136:                                              ; preds = %129, %114
  %137 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %138 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %141 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %140, i32 0, i32 3
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %145 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %144, i32 0, i32 3
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = call i32 @dev_name(%struct.TYPE_8__* %146)
  %148 = call i32 @sysfs_create_link(i32* %139, i32* %143, i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %136
  %152 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %153 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %152, i32 0, i32 3
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = call i32 @dev_err(%struct.TYPE_8__* %154, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %175

156:                                              ; preds = %136
  %157 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %7, align 8
  %158 = icmp ne %struct.nvme_subsystem* %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %161 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %164 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %159, %156
  %166 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %167 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %168 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %167, i32 0, i32 2
  store %struct.nvme_subsystem* %166, %struct.nvme_subsystem** %168, align 8
  %169 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %170 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %169, i32 0, i32 1
  %171 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %172 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %171, i32 0, i32 1
  %173 = call i32 @list_add_tail(i32* %170, i32* %172)
  %174 = call i32 @mutex_unlock(i32* @nvme_subsystems_lock)
  store i32 0, i32* %3, align 4
  br label %181

175:                                              ; preds = %151, %111
  %176 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %6, align 8
  %177 = call i32 @nvme_put_subsystem(%struct.nvme_subsystem* %176)
  br label %178

178:                                              ; preds = %175, %121
  %179 = call i32 @mutex_unlock(i32* @nvme_subsystems_lock)
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %178, %165, %13
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.nvme_subsystem* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nvme_init_subnqn(%struct.nvme_subsystem*, %struct.nvme_ctrl*, %struct.nvme_id_ctrl*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nvme_subsystem* @__nvme_find_get_subsystem(i32) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local i32 @nvme_validate_cntlid(%struct.nvme_subsystem*, %struct.nvme_ctrl*, %struct.nvme_id_ctrl*) #1

declare dso_local i32 @device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nvme_put_subsystem(%struct.nvme_subsystem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
