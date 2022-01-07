; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ports_make.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_ports_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.nvmet_port = type { i32, %struct.config_group, %struct.config_group, %struct.TYPE_4__, %struct.config_group, %struct.config_group, %struct.TYPE_3__, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32, %struct.config_group, %struct.nvmet_port* }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVMET_MAX_ANAGRPS = common dso_local global i32 0, align 4
@NVMET_DEFAULT_ANA_GRPID = common dso_local global i32 0, align 4
@NVME_ANA_OPTIMIZED = common dso_local global i32 0, align 4
@NVME_ANA_INACCESSIBLE = common dso_local global i32 0, align 4
@nvmet_ports_list = common dso_local global i32 0, align 4
@NVMF_TREQ_DISABLE_SQFLOW = common dso_local global i32 0, align 4
@nvmet_port_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"subsystems\00", align 1
@nvmet_port_subsys_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"referrals\00", align 1
@nvmet_referrals_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ana_groups\00", align 1
@nvmet_ana_groups_type = common dso_local global i32 0, align 4
@nvmet_ana_group_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @nvmet_ports_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @nvmet_ports_make(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmet_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @kstrtou16(i8* %9, i32 0, i32* %7)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.config_group* @ERR_PTR(i32 %14)
  store %struct.config_group* %15, %struct.config_group** %3, align 8
  br label %143

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.nvmet_port* @kzalloc(i32 72, i32 %17)
  store %struct.nvmet_port* %18, %struct.nvmet_port** %6, align 8
  %19 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %20 = icmp ne %struct.nvmet_port* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.config_group* @ERR_PTR(i32 %23)
  store %struct.config_group* %24, %struct.config_group** %3, align 8
  br label %143

25:                                               ; preds = %16
  %26 = load i32, i32* @NVMET_MAX_ANAGRPS, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kcalloc(i32 %27, i32 4, i32 %28)
  %30 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %31 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %30, i32 0, i32 11
  store i32* %29, i32** %31, align 8
  %32 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %33 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %32, i32 0, i32 11
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %25
  %37 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %38 = call i32 @kfree(%struct.nvmet_port* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.config_group* @ERR_PTR(i32 %40)
  store %struct.config_group* %41, %struct.config_group** %3, align 8
  br label %143

42:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %66, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @NVMET_MAX_ANAGRPS, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @NVMET_DEFAULT_ANA_GRPID, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @NVME_ANA_OPTIMIZED, align 4
  %53 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %54 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %53, i32 0, i32 11
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %52, i32* %56, align 4
  br label %65

57:                                               ; preds = %47
  %58 = load i32, i32* @NVME_ANA_INACCESSIBLE, align 4
  %59 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %60 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %59, i32 0, i32 11
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %57, %51
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %43

69:                                               ; preds = %43
  %70 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %71 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %70, i32 0, i32 10
  %72 = call i32 @list_add(i32* %71, i32* @nvmet_ports_list)
  %73 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %74 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %73, i32 0, i32 9
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %77 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %76, i32 0, i32 8
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %80 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %79, i32 0, i32 7
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %83 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %82, i32 0, i32 0
  store i32 -1, i32* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @cpu_to_le16(i32 %84)
  %86 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %87 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @NVMF_TREQ_DISABLE_SQFLOW, align 4
  %90 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %91 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %94 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %93, i32 0, i32 1
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @config_group_init_type_name(%struct.config_group* %94, i8* %95, i32* @nvmet_port_type)
  %97 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %98 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %97, i32 0, i32 5
  %99 = call i32 @config_group_init_type_name(%struct.config_group* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* @nvmet_port_subsys_type)
  %100 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %101 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %100, i32 0, i32 5
  %102 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %103 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %102, i32 0, i32 1
  %104 = call i32 @configfs_add_default_group(%struct.config_group* %101, %struct.config_group* %103)
  %105 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %106 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %105, i32 0, i32 4
  %107 = call i32 @config_group_init_type_name(%struct.config_group* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* @nvmet_referrals_type)
  %108 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %109 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %108, i32 0, i32 4
  %110 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %111 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %110, i32 0, i32 1
  %112 = call i32 @configfs_add_default_group(%struct.config_group* %109, %struct.config_group* %111)
  %113 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %114 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %113, i32 0, i32 2
  %115 = call i32 @config_group_init_type_name(%struct.config_group* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* @nvmet_ana_groups_type)
  %116 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %117 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %116, i32 0, i32 2
  %118 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %119 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %118, i32 0, i32 1
  %120 = call i32 @configfs_add_default_group(%struct.config_group* %117, %struct.config_group* %119)
  %121 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %122 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %123 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  store %struct.nvmet_port* %121, %struct.nvmet_port** %124, align 8
  %125 = load i32, i32* @NVMET_DEFAULT_ANA_GRPID, align 4
  %126 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %127 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %130 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* @NVMET_DEFAULT_ANA_GRPID, align 4
  %133 = call i8* @__stringify(i32 %132)
  %134 = call i32 @config_group_init_type_name(%struct.config_group* %131, i8* %133, i32* @nvmet_ana_group_type)
  %135 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %136 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %139 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %138, i32 0, i32 2
  %140 = call i32 @configfs_add_default_group(%struct.config_group* %137, %struct.config_group* %139)
  %141 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %142 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %141, i32 0, i32 1
  store %struct.config_group* %142, %struct.config_group** %3, align 8
  br label %143

143:                                              ; preds = %69, %36, %21, %12
  %144 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %144
}

declare dso_local i64 @kstrtou16(i8*, i32, i32*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local %struct.nvmet_port* @kzalloc(i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nvmet_port*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @configfs_add_default_group(%struct.config_group*, %struct.config_group*) #1

declare dso_local i8* @__stringify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
