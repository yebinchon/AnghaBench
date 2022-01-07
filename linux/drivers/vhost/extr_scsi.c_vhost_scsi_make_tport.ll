; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_make_tport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_make_tport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_wwn = type { i32 }
%struct.target_fabric_configfs = type { i32 }
%struct.config_group = type { i32 }
%struct.vhost_scsi_tport = type { %struct.se_wwn, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to allocate struct vhost_scsi_tport\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"naa.\00", align 1
@SCSI_PROTOCOL_SAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"fc.\00", align 1
@SCSI_PROTOCOL_FCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"iqn.\00", align 1
@SCSI_PROTOCOL_ISCSI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Unable to locate prefix for emulated Target Port: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VHOST_SCSI_NAMELEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"Emulated %s Address: %s, exceeds max: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"TCM_VHost_ConfigFS: Allocated emulated Target %s Address: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_wwn* (%struct.target_fabric_configfs*, %struct.config_group*, i8*)* @vhost_scsi_make_tport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_wwn* @vhost_scsi_make_tport(%struct.target_fabric_configfs* %0, %struct.config_group* %1, i8* %2) #0 {
  %4 = alloca %struct.se_wwn*, align 8
  %5 = alloca %struct.target_fabric_configfs*, align 8
  %6 = alloca %struct.config_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vhost_scsi_tport*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.target_fabric_configfs* %0, %struct.target_fabric_configfs** %5, align 8
  store %struct.config_group* %1, %struct.config_group** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.vhost_scsi_tport* @kzalloc(i32 24, i32 %12)
  store %struct.vhost_scsi_tport* %13, %struct.vhost_scsi_tport** %8, align 8
  %14 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %8, align 8
  %15 = icmp ne %struct.vhost_scsi_tport* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.se_wwn* @ERR_PTR(i32 %19)
  store %struct.se_wwn* %20, %struct.se_wwn** %4, align 8
  br label %92

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %8, align 8
  %24 = getelementptr inbounds %struct.vhost_scsi_tport, %struct.vhost_scsi_tport* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @SCSI_PROTOCOL_SAS, align 4
  %31 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %8, align 8
  %32 = getelementptr inbounds %struct.vhost_scsi_tport, %struct.vhost_scsi_tport* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %59

33:                                               ; preds = %21
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @SCSI_PROTOCOL_FCP, align 4
  %40 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %8, align 8
  %41 = getelementptr inbounds %struct.vhost_scsi_tport, %struct.vhost_scsi_tport* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  store i32 3, i32* %11, align 4
  br label %59

42:                                               ; preds = %33
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @strstr(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @SCSI_PROTOCOL_ISCSI, align 4
  %49 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %8, align 8
  %50 = getelementptr inbounds %struct.vhost_scsi_tport, %struct.vhost_scsi_tport* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %59

51:                                               ; preds = %42
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  %54 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %8, align 8
  %55 = call i32 @kfree(%struct.vhost_scsi_tport* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.se_wwn* @ERR_PTR(i32 %57)
  store %struct.se_wwn* %58, %struct.se_wwn** %4, align 8
  br label %92

59:                                               ; preds = %47, %38, %29
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = load i64, i64* @VHOST_SCSI_NAMELEN, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %8, align 8
  %67 = call i32 @vhost_scsi_dump_proto_id(%struct.vhost_scsi_tport* %66)
  %68 = load i64, i64* @VHOST_SCSI_NAMELEN, align 8
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %65, i32 %67, i64 %68)
  %70 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %8, align 8
  %71 = call i32 @kfree(%struct.vhost_scsi_tport* %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.se_wwn* @ERR_PTR(i32 %73)
  store %struct.se_wwn* %74, %struct.se_wwn** %4, align 8
  br label %92

75:                                               ; preds = %59
  %76 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %8, align 8
  %77 = getelementptr inbounds %struct.vhost_scsi_tport, %struct.vhost_scsi_tport* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i64, i64* @VHOST_SCSI_NAMELEN, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = call i32 @snprintf(i32* %79, i64 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  %86 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %8, align 8
  %87 = call i32 @vhost_scsi_dump_proto_id(%struct.vhost_scsi_tport* %86)
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %87, i8* %88)
  %90 = load %struct.vhost_scsi_tport*, %struct.vhost_scsi_tport** %8, align 8
  %91 = getelementptr inbounds %struct.vhost_scsi_tport, %struct.vhost_scsi_tport* %90, i32 0, i32 0
  store %struct.se_wwn* %91, %struct.se_wwn** %4, align 8
  br label %92

92:                                               ; preds = %75, %64, %51, %16
  %93 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  ret %struct.se_wwn* %93
}

declare dso_local %struct.vhost_scsi_tport* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.se_wwn* @ERR_PTR(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @kfree(%struct.vhost_scsi_tport*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @vhost_scsi_dump_proto_id(%struct.vhost_scsi_tport*) #1

declare dso_local i32 @snprintf(i32*, i64, i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
