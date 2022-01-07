; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_iface_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_iface_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iface = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.beiscsi_hba = type { i32, i32, i32 }
%struct.be_cmd_get_def_gateway_resp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }

@EPERM = common dso_local global i32 0, align 4
@ISCSI_NET_PARAM = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BS_%d : HBA in error 0x%lx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ISCSI_IFACE_TYPE_IPV4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@ISCSI_IFACE_TYPE_IPV6 = common dso_local global i32 0, align 4
@BEISCSI_IP_TYPE_V4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_iface_get_param(%struct.iscsi_iface* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_iface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.beiscsi_hba*, align 8
  %12 = alloca %struct.be_cmd_get_def_gateway_resp, align 1
  %13 = alloca i32, align 4
  store %struct.iscsi_iface* %0, %struct.iscsi_iface** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.iscsi_iface*, %struct.iscsi_iface** %6, align 8
  %15 = call %struct.Scsi_Host* @iscsi_iface_to_shost(%struct.iscsi_iface* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %10, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %17 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %16)
  store %struct.beiscsi_hba* %17, %struct.beiscsi_hba** %11, align 8
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ISCSI_NET_PARAM, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

24:                                               ; preds = %4
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %26 = call i32 @beiscsi_hba_is_online(%struct.beiscsi_hba* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %30 = load i32, i32* @KERN_INFO, align 4
  %31 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %33 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @beiscsi_log(%struct.beiscsi_hba* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %93

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %91 [
    i32 135, label %40
    i32 132, label %40
    i32 134, label %40
    i32 131, label %40
    i32 130, label %40
    i32 129, label %40
    i32 128, label %40
    i32 136, label %46
    i32 133, label %78
  ]

40:                                               ; preds = %38, %38, %38, %38, %38, %38, %38
  %41 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %42 = load %struct.iscsi_iface*, %struct.iscsi_iface** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @__beiscsi_iface_get_param(%struct.beiscsi_hba* %41, %struct.iscsi_iface* %42, i32 %43, i8* %44)
  store i32 %45, i32* %13, align 4
  br label %91

46:                                               ; preds = %38
  %47 = load %struct.iscsi_iface*, %struct.iscsi_iface** %6, align 8
  %48 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ISCSI_IFACE_TYPE_IPV4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %55 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %60 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i32 %60, i32* %13, align 4
  br label %77

61:                                               ; preds = %46
  %62 = load %struct.iscsi_iface*, %struct.iscsi_iface** %6, align 8
  %63 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ISCSI_IFACE_TYPE_IPV6, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %70 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %75 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %67, %61
  br label %77

77:                                               ; preds = %76, %52
  br label %91

78:                                               ; preds = %38
  %79 = call i32 @memset(%struct.be_cmd_get_def_gateway_resp* %12, i32 0, i32 1)
  %80 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  %81 = load i32, i32* @BEISCSI_IP_TYPE_V4, align 4
  %82 = call i32 @beiscsi_if_get_gw(%struct.beiscsi_hba* %80, i32 %81, %struct.be_cmd_get_def_gateway_resp* %12)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, %struct.be_cmd_get_def_gateway_resp* %12, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @sprintf(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %85, %78
  br label %91

91:                                               ; preds = %38, %90, %77, %40
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %28, %23
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.Scsi_Host* @iscsi_iface_to_shost(%struct.iscsi_iface*) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @beiscsi_hba_is_online(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @__beiscsi_iface_get_param(%struct.beiscsi_hba*, %struct.iscsi_iface*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @memset(%struct.be_cmd_get_def_gateway_resp*, i32, i32) #1

declare dso_local i32 @beiscsi_if_get_gw(%struct.beiscsi_hba*, i32, %struct.be_cmd_get_def_gateway_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
