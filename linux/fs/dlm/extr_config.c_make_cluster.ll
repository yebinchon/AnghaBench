; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_make_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_make_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.config_group = type { i32 }
%struct.dlm_cluster = type { %struct.config_group, %struct.config_group, %struct.config_group, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dlm_spaces = type { %struct.config_group, %struct.config_group, %struct.config_group, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dlm_comms = type { %struct.config_group, %struct.config_group, %struct.config_group, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@cluster_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"spaces\00", align 1
@spaces_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"comms\00", align 1
@comms_type = common dso_local global i32 0, align 4
@dlm_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DLM_LOCKSPACE_LEN = common dso_local global i32 0, align 4
@space_list = common dso_local global %struct.config_group* null, align 8
@comm_list = common dso_local global %struct.config_group* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @make_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @make_cluster(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dlm_cluster*, align 8
  %7 = alloca %struct.dlm_spaces*, align 8
  %8 = alloca %struct.dlm_comms*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dlm_cluster* null, %struct.dlm_cluster** %6, align 8
  store %struct.dlm_spaces* null, %struct.dlm_spaces** %7, align 8
  store %struct.dlm_comms* null, %struct.dlm_comms** %8, align 8
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.dlm_spaces* @kzalloc(i32 68, i32 %9)
  %11 = bitcast %struct.dlm_spaces* %10 to %struct.dlm_cluster*
  store %struct.dlm_cluster* %11, %struct.dlm_cluster** %6, align 8
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.dlm_spaces* @kzalloc(i32 68, i32 %12)
  store %struct.dlm_spaces* %13, %struct.dlm_spaces** %7, align 8
  %14 = load i32, i32* @GFP_NOFS, align 4
  %15 = call %struct.dlm_spaces* @kzalloc(i32 68, i32 %14)
  %16 = bitcast %struct.dlm_spaces* %15 to %struct.dlm_comms*
  store %struct.dlm_comms* %16, %struct.dlm_comms** %8, align 8
  %17 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %18 = icmp ne %struct.dlm_cluster* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.dlm_spaces*, %struct.dlm_spaces** %7, align 8
  %21 = icmp ne %struct.dlm_spaces* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.dlm_comms*, %struct.dlm_comms** %8, align 8
  %24 = icmp ne %struct.dlm_comms* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %19, %2
  br label %98

26:                                               ; preds = %22
  %27 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %28 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %27, i32 0, i32 0
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @config_group_init_type_name(%struct.config_group* %28, i8* %29, i32* @cluster_type)
  %31 = load %struct.dlm_spaces*, %struct.dlm_spaces** %7, align 8
  %32 = getelementptr inbounds %struct.dlm_spaces, %struct.dlm_spaces* %31, i32 0, i32 2
  %33 = call i32 @config_group_init_type_name(%struct.config_group* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @spaces_type)
  %34 = load %struct.dlm_comms*, %struct.dlm_comms** %8, align 8
  %35 = getelementptr inbounds %struct.dlm_comms, %struct.dlm_comms* %34, i32 0, i32 1
  %36 = call i32 @config_group_init_type_name(%struct.config_group* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @comms_type)
  %37 = load %struct.dlm_spaces*, %struct.dlm_spaces** %7, align 8
  %38 = getelementptr inbounds %struct.dlm_spaces, %struct.dlm_spaces* %37, i32 0, i32 2
  %39 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %40 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %39, i32 0, i32 0
  %41 = call i32 @configfs_add_default_group(%struct.config_group* %38, %struct.config_group* %40)
  %42 = load %struct.dlm_comms*, %struct.dlm_comms** %8, align 8
  %43 = getelementptr inbounds %struct.dlm_comms, %struct.dlm_comms* %42, i32 0, i32 1
  %44 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %45 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %44, i32 0, i32 0
  %46 = call i32 @configfs_add_default_group(%struct.config_group* %43, %struct.config_group* %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 13), align 4
  %48 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %49 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %48, i32 0, i32 16
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 12), align 4
  %51 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %52 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %51, i32 0, i32 15
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 11), align 4
  %54 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %55 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %54, i32 0, i32 14
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 10), align 4
  %57 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %58 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 9), align 4
  %60 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %61 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %60, i32 0, i32 12
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 8), align 4
  %63 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %64 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 7), align 4
  %66 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %67 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 6), align 4
  %69 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %70 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 5), align 4
  %72 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %73 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 4), align 4
  %75 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %76 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 3), align 4
  %78 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %79 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 2), align 4
  %81 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %82 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 1), align 4
  %84 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %85 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %87 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 0), align 4
  %90 = load i32, i32* @DLM_LOCKSPACE_LEN, align 4
  %91 = call i32 @memcpy(i32 %88, i32 %89, i32 %90)
  %92 = load %struct.dlm_spaces*, %struct.dlm_spaces** %7, align 8
  %93 = getelementptr inbounds %struct.dlm_spaces, %struct.dlm_spaces* %92, i32 0, i32 2
  store %struct.config_group* %93, %struct.config_group** @space_list, align 8
  %94 = load %struct.dlm_comms*, %struct.dlm_comms** %8, align 8
  %95 = getelementptr inbounds %struct.dlm_comms, %struct.dlm_comms* %94, i32 0, i32 1
  store %struct.config_group* %95, %struct.config_group** @comm_list, align 8
  %96 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %97 = getelementptr inbounds %struct.dlm_cluster, %struct.dlm_cluster* %96, i32 0, i32 0
  store %struct.config_group* %97, %struct.config_group** %3, align 8
  br label %110

98:                                               ; preds = %25
  %99 = load %struct.dlm_cluster*, %struct.dlm_cluster** %6, align 8
  %100 = bitcast %struct.dlm_cluster* %99 to %struct.dlm_spaces*
  %101 = call i32 @kfree(%struct.dlm_spaces* %100)
  %102 = load %struct.dlm_spaces*, %struct.dlm_spaces** %7, align 8
  %103 = call i32 @kfree(%struct.dlm_spaces* %102)
  %104 = load %struct.dlm_comms*, %struct.dlm_comms** %8, align 8
  %105 = bitcast %struct.dlm_comms* %104 to %struct.dlm_spaces*
  %106 = call i32 @kfree(%struct.dlm_spaces* %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  %109 = call %struct.config_group* @ERR_PTR(i32 %108)
  store %struct.config_group* %109, %struct.config_group** %3, align 8
  br label %110

110:                                              ; preds = %98, %26
  %111 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %111
}

declare dso_local %struct.dlm_spaces* @kzalloc(i32, i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @configfs_add_default_group(%struct.config_group*, %struct.config_group*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.dlm_spaces*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
