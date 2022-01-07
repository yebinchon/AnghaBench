; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_iface_config_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_iface_config_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_iface_param_info = type { i32, i32* }
%struct.beiscsi_hba = type { i32* }
%struct.nlattr = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@ISCSI_IFACE_ENABLE = common dso_local global i32 0, align 4
@BEISCSI_IP_TYPE_V4 = common dso_local global i32 0, align 4
@ISCSI_BOOTPROTO_DHCP = common dso_local global i32 0, align 4
@ISCSI_BOOTPROTO_STATIC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"BS_%d : Invalid BOOTPROTO: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.iscsi_iface_param_info*, i8*, i32)* @beiscsi_iface_config_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_iface_config_ipv4(%struct.Scsi_Host* %0, %struct.iscsi_iface_param_info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.iscsi_iface_param_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.beiscsi_hba*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.iscsi_iface_param_info* %1, %struct.iscsi_iface_param_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %16 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %15)
  store %struct.beiscsi_hba* %16, %struct.beiscsi_hba** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %14, align 4
  %19 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %127 [
    i32 132, label %22
    i32 129, label %41
    i32 130, label %49
    i32 131, label %85
    i32 128, label %106
  ]

22:                                               ; preds = %4
  %23 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %24 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ISCSI_IFACE_ENABLE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %32 = call i32 @beiscsi_iface_create_ipv4(%struct.beiscsi_hba* %31)
  store i32 %32, i32* %14, align 4
  br label %40

33:                                               ; preds = %22
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %35 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @iscsi_destroy_iface(i32* %36)
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %39 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %30
  br label %127

41:                                               ; preds = %4
  %42 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %12, align 8
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %46 = load i32, i32* @BEISCSI_IP_TYPE_V4, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @beiscsi_if_set_gw(%struct.beiscsi_hba* %45, i32 %46, i32* %47)
  store i32 %48, i32* %14, align 4
  br label %127

49:                                               ; preds = %4
  %50 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %51 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ISCSI_BOOTPROTO_DHCP, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %59 = load i32, i32* @BEISCSI_IP_TYPE_V4, align 4
  %60 = call i32 @beiscsi_if_en_dhcp(%struct.beiscsi_hba* %58, i32 %59)
  store i32 %60, i32* %14, align 4
  br label %84

61:                                               ; preds = %49
  %62 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %63 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ISCSI_BOOTPROTO_STATIC, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %71 = load i32, i32* @BEISCSI_IP_TYPE_V4, align 4
  %72 = call i32 @beiscsi_if_en_static(%struct.beiscsi_hba* %70, i32 %71, i32* null, i32* null)
  store i32 %72, i32* %14, align 4
  br label %83

73:                                               ; preds = %61
  %74 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %75 = load i32, i32* @KERN_ERR, align 4
  %76 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %77 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %78 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @beiscsi_log(%struct.beiscsi_hba* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %73, %69
  br label %84

84:                                               ; preds = %83, %57
  br label %127

85:                                               ; preds = %4
  %86 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %87 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %10, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call %struct.nlattr* @nla_find(i8* %89, i32 %90, i32 128)
  store %struct.nlattr* %91, %struct.nlattr** %13, align 8
  %92 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %96 = call %struct.iscsi_iface_param_info* @nla_data(%struct.nlattr* %95)
  store %struct.iscsi_iface_param_info* %96, %struct.iscsi_iface_param_info** %6, align 8
  %97 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %98 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %11, align 8
  br label %100

100:                                              ; preds = %94, %85
  %101 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %102 = load i32, i32* @BEISCSI_IP_TYPE_V4, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @beiscsi_if_en_static(%struct.beiscsi_hba* %101, i32 %102, i32* %103, i32* %104)
  store i32 %105, i32* %14, align 4
  br label %127

106:                                              ; preds = %4
  %107 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %108 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %11, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call %struct.nlattr* @nla_find(i8* %110, i32 %111, i32 131)
  store %struct.nlattr* %112, %struct.nlattr** %13, align 8
  %113 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %114 = icmp ne %struct.nlattr* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  %116 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %117 = call %struct.iscsi_iface_param_info* @nla_data(%struct.nlattr* %116)
  store %struct.iscsi_iface_param_info* %117, %struct.iscsi_iface_param_info** %6, align 8
  %118 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %6, align 8
  %119 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %10, align 8
  br label %121

121:                                              ; preds = %115, %106
  %122 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %123 = load i32, i32* @BEISCSI_IP_TYPE_V4, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @beiscsi_if_en_static(%struct.beiscsi_hba* %122, i32 %123, i32* %124, i32* %125)
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %4, %121, %100, %84, %41, %40
  %128 = load i32, i32* %14, align 4
  ret i32 %128
}

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @beiscsi_iface_create_ipv4(%struct.beiscsi_hba*) #1

declare dso_local i32 @iscsi_destroy_iface(i32*) #1

declare dso_local i32 @beiscsi_if_set_gw(%struct.beiscsi_hba*, i32, i32*) #1

declare dso_local i32 @beiscsi_if_en_dhcp(%struct.beiscsi_hba*, i32) #1

declare dso_local i32 @beiscsi_if_en_static(%struct.beiscsi_hba*, i32, i32*, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local %struct.nlattr* @nla_find(i8*, i32, i32) #1

declare dso_local %struct.iscsi_iface_param_info* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
