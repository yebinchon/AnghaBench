; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_support_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_support_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i32 }
%struct.lpfc_fdmi_attr_def = type { i8*, i8*, i32 }
%struct.lpfc_fdmi_attr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HBA_FCOE_MODE = common dso_local global i32 0, align 4
@LMT_128Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_128GFC = common dso_local global i32 0, align 4
@LMT_64Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_64GFC = common dso_local global i32 0, align 4
@LMT_32Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_32GFC = common dso_local global i32 0, align 4
@LMT_16Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_16GFC = common dso_local global i32 0, align 4
@LMT_10Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_10GFC = common dso_local global i32 0, align 4
@LMT_8Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_8GFC = common dso_local global i32 0, align 4
@LMT_4Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_4GFC = common dso_local global i32 0, align 4
@LMT_2Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_2GFC = common dso_local global i32 0, align 4
@LMT_1Gb = common dso_local global i32 0, align 4
@HBA_PORTSPEED_1GFC = common dso_local global i32 0, align 4
@HBA_PORTSPEED_10GE = common dso_local global i32 0, align 4
@HBA_PORTSPEED_25GE = common dso_local global i32 0, align 4
@HBA_PORTSPEED_40GE = common dso_local global i32 0, align 4
@HBA_PORTSPEED_100GE = common dso_local global i32 0, align 4
@FOURBYTES = common dso_local global i32 0, align 4
@RPRT_SUPPORTED_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_fdmi_attr_def*)* @lpfc_fdmi_port_attr_support_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_fdmi_port_attr_support_speed(%struct.lpfc_vport* %0, %struct.lpfc_fdmi_attr_def* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_fdmi_attr_def*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_fdmi_attr_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_fdmi_attr_def* %1, %struct.lpfc_fdmi_attr_def** %4, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %8, i32 0, i32 0
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  store %struct.lpfc_hba* %10, %struct.lpfc_hba** %5, align 8
  %11 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %11, i32 0, i32 2
  %13 = bitcast i32* %12 to %struct.lpfc_fdmi_attr_entry*
  store %struct.lpfc_fdmi_attr_entry* %13, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %14 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %15 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HBA_FCOE_MODE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %150, label %23

23:                                               ; preds = %2
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LMT_128Gb, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @HBA_PORTSPEED_128GFC, align 4
  %32 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %33 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LMT_64Gb, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32, i32* @HBA_PORTSPEED_64GFC, align 4
  %46 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %47 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %44, %37
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LMT_32Gb, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load i32, i32* @HBA_PORTSPEED_32GFC, align 4
  %60 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %61 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @LMT_16Gb, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i32, i32* @HBA_PORTSPEED_16GFC, align 4
  %74 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %75 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %65
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @LMT_10Gb, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i32, i32* @HBA_PORTSPEED_10GFC, align 4
  %88 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %89 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @LMT_8Gb, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load i32, i32* @HBA_PORTSPEED_8GFC, align 4
  %102 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %103 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %93
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @LMT_4Gb, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load i32, i32* @HBA_PORTSPEED_4GFC, align 4
  %116 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %117 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %114, %107
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @LMT_2Gb, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load i32, i32* @HBA_PORTSPEED_2GFC, align 4
  %130 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %131 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %128, %121
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @LMT_1Gb, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load i32, i32* @HBA_PORTSPEED_1GFC, align 4
  %144 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %145 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %142, %135
  br label %175

150:                                              ; preds = %2
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %174 [
    i32 130, label %154
    i32 129, label %159
    i32 128, label %164
    i32 131, label %169
  ]

154:                                              ; preds = %150
  %155 = load i32, i32* @HBA_PORTSPEED_10GE, align 4
  %156 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %157 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 4
  br label %174

159:                                              ; preds = %150
  %160 = load i32, i32* @HBA_PORTSPEED_25GE, align 4
  %161 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %162 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 4
  br label %174

164:                                              ; preds = %150
  %165 = load i32, i32* @HBA_PORTSPEED_40GE, align 4
  %166 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %167 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 4
  br label %174

169:                                              ; preds = %150
  %170 = load i32, i32* @HBA_PORTSPEED_100GE, align 4
  %171 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %172 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 4
  br label %174

174:                                              ; preds = %150, %169, %164, %159, %154
  br label %175

175:                                              ; preds = %174, %149
  %176 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %177 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @cpu_to_be32(i32 %179)
  %181 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %182 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 4
  %184 = load i32, i32* @FOURBYTES, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 %185, 4
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i8* @cpu_to_be16(i32 %188)
  %190 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %191 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %190, i32 0, i32 1
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* @RPRT_SUPPORTED_SPEED, align 4
  %193 = call i8* @cpu_to_be16(i32 %192)
  %194 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %195 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %194, i32 0, i32 0
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
