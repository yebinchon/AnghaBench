; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rdp_port_speed_desc = type { i8*, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.lpfc_hba = type { i32, i32, i64 }

@RDP_PORT_SPEED_DESC_TAG = common dso_local global i32 0, align 4
@RDP_PS_1GB = common dso_local global i32 0, align 4
@RDP_PS_2GB = common dso_local global i32 0, align 4
@RDP_PS_4GB = common dso_local global i32 0, align 4
@RDP_PS_8GB = common dso_local global i32 0, align 4
@RDP_PS_10GB = common dso_local global i32 0, align 4
@RDP_PS_16GB = common dso_local global i32 0, align 4
@RDP_PS_32GB = common dso_local global i32 0, align 4
@RDP_PS_64GB = common dso_local global i32 0, align 4
@RDP_PS_UNKNOWN = common dso_local global i32 0, align 4
@LMT_128Gb = common dso_local global i32 0, align 4
@RDP_PS_128GB = common dso_local global i32 0, align 4
@LMT_64Gb = common dso_local global i32 0, align 4
@LMT_32Gb = common dso_local global i32 0, align 4
@LMT_16Gb = common dso_local global i32 0, align 4
@LMT_10Gb = common dso_local global i32 0, align 4
@LMT_8Gb = common dso_local global i32 0, align 4
@LMT_4Gb = common dso_local global i32 0, align 4
@LMT_2Gb = common dso_local global i32 0, align 4
@LMT_1Gb = common dso_local global i32 0, align 4
@RDP_CAP_UNKNOWN = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_AUTO = common dso_local global i64 0, align 8
@RDP_CAP_USER_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rdp_port_speed_desc*, %struct.lpfc_hba*)* @lpfc_rdp_res_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rdp_res_speed(%struct.fc_rdp_port_speed_desc* %0, %struct.lpfc_hba* %1) #0 {
  %3 = alloca %struct.fc_rdp_port_speed_desc*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fc_rdp_port_speed_desc* %0, %struct.fc_rdp_port_speed_desc** %3, align 8
  store %struct.lpfc_hba* %1, %struct.lpfc_hba** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @RDP_PORT_SPEED_DESC_TAG, align 4
  %8 = call i8* @cpu_to_be32(i32 %7)
  %9 = load %struct.fc_rdp_port_speed_desc*, %struct.fc_rdp_port_speed_desc** %3, align 8
  %10 = getelementptr inbounds %struct.fc_rdp_port_speed_desc, %struct.fc_rdp_port_speed_desc* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %30 [
    i32 133, label %14
    i32 132, label %16
    i32 130, label %18
    i32 128, label %20
    i32 135, label %22
    i32 134, label %24
    i32 131, label %26
    i32 129, label %28
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @RDP_PS_1GB, align 4
  store i32 %15, i32* %6, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* @RDP_PS_2GB, align 4
  store i32 %17, i32* %6, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load i32, i32* @RDP_PS_4GB, align 4
  store i32 %19, i32* %6, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load i32, i32* @RDP_PS_8GB, align 4
  store i32 %21, i32* %6, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* @RDP_PS_10GB, align 4
  store i32 %23, i32* %6, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load i32, i32* @RDP_PS_16GB, align 4
  store i32 %25, i32* %6, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @RDP_PS_32GB, align 4
  store i32 %27, i32* %6, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @RDP_PS_64GB, align 4
  store i32 %29, i32* %6, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @RDP_PS_UNKNOWN, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %28, %26, %24, %22, %20, %18, %16, %14
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @cpu_to_be16(i32 %33)
  %35 = load %struct.fc_rdp_port_speed_desc*, %struct.fc_rdp_port_speed_desc** %3, align 8
  %36 = getelementptr inbounds %struct.fc_rdp_port_speed_desc, %struct.fc_rdp_port_speed_desc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %34, i8** %38, align 8
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @LMT_128Gb, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32, i32* @RDP_PS_128GB, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %32
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LMT_64Gb, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @RDP_PS_64GB, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @LMT_32Gb, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @RDP_PS_32GB, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @LMT_16Gb, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @RDP_PS_16GB, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %71
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @LMT_10Gb, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @RDP_PS_10GB, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %82
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @LMT_8Gb, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* @RDP_PS_8GB, align 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %93
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @LMT_4Gb, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32, i32* @RDP_PS_4GB, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %104
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %117 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @LMT_2Gb, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* @RDP_PS_2GB, align 4
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %122, %115
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @LMT_1Gb, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32, i32* @RDP_PS_1GB, align 4
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %126
  %138 = load i32, i32* %5, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @RDP_CAP_UNKNOWN, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %137
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @LPFC_USER_LINK_SPEED_AUTO, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i32, i32* @RDP_CAP_USER_CONFIGURED, align 4
  %150 = load i32, i32* %5, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %148, %142
  %153 = load i32, i32* %5, align 4
  %154 = call i8* @cpu_to_be16(i32 %153)
  %155 = load %struct.fc_rdp_port_speed_desc*, %struct.fc_rdp_port_speed_desc** %3, align 8
  %156 = getelementptr inbounds %struct.fc_rdp_port_speed_desc, %struct.fc_rdp_port_speed_desc* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  store i8* %154, i8** %158, align 8
  %159 = call i8* @cpu_to_be32(i32 16)
  %160 = load %struct.fc_rdp_port_speed_desc*, %struct.fc_rdp_port_speed_desc** %3, align 8
  %161 = getelementptr inbounds %struct.fc_rdp_port_speed_desc, %struct.fc_rdp_port_speed_desc* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  ret i32 32
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
