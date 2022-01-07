; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c___beiscsi_iface_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c___beiscsi_iface_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.iscsi_iface = type { i64 }
%struct.be_cmd_get_if_info_resp = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BEISCSI_IP_TYPE_V4 = common dso_local global i32 0, align 4
@ISCSI_IFACE_TYPE_IPV6 = common dso_local global i64 0, align 8
@BEISCSI_IP_TYPE_V6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"static\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dhcp\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@BEISCSI_VLAN_DISABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ISCSI_MAX_VLAN_ID = common dso_local global i32 0, align 4
@ISCSI_MAX_VLAN_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.iscsi_iface*, i32, i8*)* @__beiscsi_iface_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__beiscsi_iface_get_param(%struct.beiscsi_hba* %0, %struct.iscsi_iface* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.iscsi_iface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.be_cmd_get_if_info_resp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store %struct.iscsi_iface* %1, %struct.iscsi_iface** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @BEISCSI_IP_TYPE_V4, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.iscsi_iface*, %struct.iscsi_iface** %7, align 8
  %15 = getelementptr inbounds %struct.iscsi_iface, %struct.iscsi_iface* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ISCSI_IFACE_TYPE_IPV6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @BEISCSI_IP_TYPE_V6, align 4
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %19, %4
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @beiscsi_if_get_info(%struct.beiscsi_hba* %22, i32 %23, %struct.be_cmd_get_if_info_resp** %10)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %117

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %111 [
    i32 134, label %31
    i32 131, label %38
    i32 133, label %45
    i32 132, label %57
    i32 130, label %64
    i32 129, label %74
    i32 128, label %92
  ]

31:                                               ; preds = %29
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %34 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %11, align 4
  br label %113

38:                                               ; preds = %29
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %41 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %11, align 4
  br label %113

45:                                               ; preds = %29
  %46 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %47 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %52, i32* %11, align 4
  br label %56

53:                                               ; preds = %45
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %113

57:                                               ; preds = %29
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %60 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 %63, i32* %11, align 4
  br label %113

64:                                               ; preds = %29
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %67 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BEISCSI_VLAN_DISABLE, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  store i32 %73, i32* %11, align 4
  br label %113

74:                                               ; preds = %29
  %75 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %76 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BEISCSI_VLAN_DISABLE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %91

83:                                               ; preds = %74
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %86 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ISCSI_MAX_VLAN_ID, align 4
  %89 = and i32 %87, %88
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %83, %80
  br label %113

92:                                               ; preds = %29
  %93 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %94 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BEISCSI_VLAN_DISABLE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %11, align 4
  br label %110

101:                                              ; preds = %92
  %102 = load i8*, i8** %9, align 8
  %103 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %104 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, %struct.be_cmd_get_if_info_resp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 13
  %107 = load i32, i32* @ISCSI_MAX_VLAN_PRIORITY, align 4
  %108 = and i32 %106, %107
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %108)
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %101, %98
  br label %113

111:                                              ; preds = %29
  %112 = call i32 @WARN_ON(i32 1)
  br label %113

113:                                              ; preds = %111, %110, %91, %64, %57, %56, %38, %31
  %114 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %10, align 8
  %115 = call i32 @kfree(%struct.be_cmd_get_if_info_resp* %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %27
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @beiscsi_if_get_info(%struct.beiscsi_hba*, i32, %struct.be_cmd_get_if_info_resp**) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.be_cmd_get_if_info_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
