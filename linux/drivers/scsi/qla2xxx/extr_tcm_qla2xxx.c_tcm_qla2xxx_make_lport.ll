; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_make_lport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_make_lport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_wwn = type { i32 }
%struct.target_fabric_configfs = type { i32 }
%struct.config_group = type { i32 }
%struct.tcm_qla2xxx_lport = type { i32, i32, %struct.se_wwn, i32, i32*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to allocate struct tcm_qla2xxx_lport\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TCM_QLA2XXX_NAMELEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"naa.%016llx\00", align 1
@tcm_qla2xxx_lport_register_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_wwn* (%struct.target_fabric_configfs*, %struct.config_group*, i8*)* @tcm_qla2xxx_make_lport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_wwn* @tcm_qla2xxx_make_lport(%struct.target_fabric_configfs* %0, %struct.config_group* %1, i8* %2) #0 {
  %4 = alloca %struct.se_wwn*, align 8
  %5 = alloca %struct.target_fabric_configfs*, align 8
  %6 = alloca %struct.config_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tcm_qla2xxx_lport*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.target_fabric_configfs* %0, %struct.target_fabric_configfs** %5, align 8
  store %struct.config_group* %1, %struct.config_group** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @tcm_qla2xxx_parse_wwn(i8* %13, i64* %9, i32 1)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.se_wwn* @ERR_PTR(i32 %18)
  store %struct.se_wwn* %19, %struct.se_wwn** %4, align 8
  br label %75

20:                                               ; preds = %3
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.tcm_qla2xxx_lport* @kzalloc(i32 32, i32 %21)
  store %struct.tcm_qla2xxx_lport* %22, %struct.tcm_qla2xxx_lport** %8, align 8
  %23 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %24 = icmp ne %struct.tcm_qla2xxx_lport* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.se_wwn* @ERR_PTR(i32 %28)
  store %struct.se_wwn* %29, %struct.se_wwn** %4, align 8
  br label %75

30:                                               ; preds = %20
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %33 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %32, i32 0, i32 5
  store i64 %31, i64* %33, align 8
  %34 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %35 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* @TCM_QLA2XXX_NAMELEN, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @tcm_qla2xxx_format_wwn(i32* %37, i32 %38, i64 %39)
  %41 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %42 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @sprintf(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %47 = call i32 @tcm_qla2xxx_init_lport(%struct.tcm_qla2xxx_lport* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %70

51:                                               ; preds = %30
  %52 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* @tcm_qla2xxx_lport_register_cb, align 4
  %55 = call i32 @qlt_lport_register(%struct.tcm_qla2xxx_lport* %52, i64 %53, i32 0, i32 0, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %62

59:                                               ; preds = %51
  %60 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %61 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %60, i32 0, i32 2
  store %struct.se_wwn* %61, %struct.se_wwn** %4, align 8
  br label %75

62:                                               ; preds = %58
  %63 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %64 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vfree(i32 %65)
  %67 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %68 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %67, i32 0, i32 0
  %69 = call i32 @btree_destroy32(i32* %68)
  br label %70

70:                                               ; preds = %62, %50
  %71 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %72 = call i32 @kfree(%struct.tcm_qla2xxx_lport* %71)
  %73 = load i32, i32* %10, align 4
  %74 = call %struct.se_wwn* @ERR_PTR(i32 %73)
  store %struct.se_wwn* %74, %struct.se_wwn** %4, align 8
  br label %75

75:                                               ; preds = %70, %59, %25, %16
  %76 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  ret %struct.se_wwn* %76
}

declare dso_local i64 @tcm_qla2xxx_parse_wwn(i8*, i64*, i32) #1

declare dso_local %struct.se_wwn* @ERR_PTR(i32) #1

declare dso_local %struct.tcm_qla2xxx_lport* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @tcm_qla2xxx_format_wwn(i32*, i32, i64) #1

declare dso_local i32 @sprintf(i32, i8*, i64) #1

declare dso_local i32 @tcm_qla2xxx_init_lport(%struct.tcm_qla2xxx_lport*) #1

declare dso_local i32 @qlt_lport_register(%struct.tcm_qla2xxx_lport*, i64, i32, i32, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @btree_destroy32(i32*) #1

declare dso_local i32 @kfree(%struct.tcm_qla2xxx_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
