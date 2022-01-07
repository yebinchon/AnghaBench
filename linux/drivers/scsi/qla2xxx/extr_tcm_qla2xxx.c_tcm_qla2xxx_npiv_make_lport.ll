; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_npiv_make_lport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_npiv_make_lport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_wwn = type { i32 }
%struct.target_fabric_configfs = type { i32 }
%struct.config_group = type { i32 }
%struct.tcm_qla2xxx_lport = type { i32, i32, %struct.se_wwn, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to locate NPIV '@' separator\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Unable to allocate struct tcm_qla2xxx_lport for NPIV\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"naa.%016llx\00", align 1
@tcm_qla2xxx_lport_register_npiv_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_wwn* (%struct.target_fabric_configfs*, %struct.config_group*, i8*)* @tcm_qla2xxx_npiv_make_lport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_wwn* @tcm_qla2xxx_npiv_make_lport(%struct.target_fabric_configfs* %0, %struct.config_group* %1, i8* %2) #0 {
  %4 = alloca %struct.se_wwn*, align 8
  %5 = alloca %struct.target_fabric_configfs*, align 8
  %6 = alloca %struct.config_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tcm_qla2xxx_lport*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [128 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.target_fabric_configfs* %0, %struct.target_fabric_configfs** %5, align 8
  store %struct.config_group* %1, %struct.config_group** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @snprintf(i8* %15, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %19 = call i8* @strchr(i8* %18, i8 signext 64)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.se_wwn* @ERR_PTR(i32 %25)
  store %struct.se_wwn* %26, %struct.se_wwn** %4, align 8
  br label %102

27:                                               ; preds = %3
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %12, align 8
  store i8 0, i8* %28, align 1
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %31 = call i64 @tcm_qla2xxx_parse_wwn(i8* %30, i8** %9, i32 1)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.se_wwn* @ERR_PTR(i32 %35)
  store %struct.se_wwn* %36, %struct.se_wwn** %4, align 8
  br label %102

37:                                               ; preds = %27
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %40, 1
  %42 = call i64 @tcm_qla2xxx_npiv_parse_wwn(i8* %38, i64 %41, i8** %10, i8** %11)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.se_wwn* @ERR_PTR(i32 %46)
  store %struct.se_wwn* %47, %struct.se_wwn** %4, align 8
  br label %102

48:                                               ; preds = %37
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.tcm_qla2xxx_lport* @kzalloc(i32 32, i32 %49)
  store %struct.tcm_qla2xxx_lport* %50, %struct.tcm_qla2xxx_lport** %8, align 8
  %51 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %52 = icmp ne %struct.tcm_qla2xxx_lport* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.se_wwn* @ERR_PTR(i32 %56)
  store %struct.se_wwn* %57, %struct.se_wwn** %4, align 8
  br label %102

58:                                               ; preds = %48
  %59 = load i8*, i8** %10, align 8
  %60 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %61 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %64 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %66 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = call i32 @sprintf(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %72 = call i32 @tcm_qla2xxx_init_lport(%struct.tcm_qla2xxx_lport* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %97

76:                                               ; preds = %58
  %77 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* @tcm_qla2xxx_lport_register_npiv_cb, align 4
  %82 = call i32 @qlt_lport_register(%struct.tcm_qla2xxx_lport* %77, i8* %78, i8* %79, i8* %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %89

86:                                               ; preds = %76
  %87 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %88 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %87, i32 0, i32 2
  store %struct.se_wwn* %88, %struct.se_wwn** %4, align 8
  br label %102

89:                                               ; preds = %85
  %90 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %91 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @vfree(i32 %92)
  %94 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %95 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %94, i32 0, i32 0
  %96 = call i32 @btree_destroy32(i32* %95)
  br label %97

97:                                               ; preds = %89, %75
  %98 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %8, align 8
  %99 = call i32 @kfree(%struct.tcm_qla2xxx_lport* %98)
  %100 = load i32, i32* %14, align 4
  %101 = call %struct.se_wwn* @ERR_PTR(i32 %100)
  store %struct.se_wwn* %101, %struct.se_wwn** %4, align 8
  br label %102

102:                                              ; preds = %97, %86, %53, %44, %33, %22
  %103 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  ret %struct.se_wwn* %103
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.se_wwn* @ERR_PTR(i32) #1

declare dso_local i64 @tcm_qla2xxx_parse_wwn(i8*, i8**, i32) #1

declare dso_local i64 @tcm_qla2xxx_npiv_parse_wwn(i8*, i64, i8**, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.tcm_qla2xxx_lport* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i64) #1

declare dso_local i32 @tcm_qla2xxx_init_lport(%struct.tcm_qla2xxx_lport*) #1

declare dso_local i32 @qlt_lport_register(%struct.tcm_qla2xxx_lport*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @btree_destroy32(i32*) #1

declare dso_local i32 @kfree(%struct.tcm_qla2xxx_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
