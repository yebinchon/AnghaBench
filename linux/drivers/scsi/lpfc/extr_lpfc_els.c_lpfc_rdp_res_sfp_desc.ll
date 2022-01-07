; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_sfp_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_sfp_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rdp_sfp_desc = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sff_trasnceiver_codes_byte4 = type { i64, i64 }
%struct.sff_trasnceiver_codes_byte5 = type { i64, i64 }

@RDP_SFP_DESC_TAG = common dso_local global i32 0, align 4
@SSF_TRANSCEIVER_CODE_B4 = common dso_local global i64 0, align 8
@SSF_TRANSCEIVER_CODE_B5 = common dso_local global i64 0, align 8
@SFP_FLAG_PT_SWLASER = common dso_local global i32 0, align 4
@SFP_FLAG_PT_SHIFT = common dso_local global i32 0, align 4
@SSF_WAVELENGTH_B1 = common dso_local global i64 0, align 8
@SSF_WAVELENGTH_B0 = common dso_local global i64 0, align 8
@SFP_WAVELENGTH_LC1310 = common dso_local global i32 0, align 4
@SFP_FLAG_PT_LWLASER_LC1310 = common dso_local global i32 0, align 4
@SFP_WAVELENGTH_LL1550 = common dso_local global i32 0, align 4
@SFP_FLAG_PT_LWLASER_LL1550 = common dso_local global i32 0, align 4
@SSF_IDENTIFIER = common dso_local global i64 0, align 8
@SFF_PG0_IDENT_SFP = common dso_local global i32 0, align 4
@SFP_FLAG_CT_SFP_PLUS = common dso_local global i32 0, align 4
@SFP_FLAG_CT_UNKNOWN = common dso_local global i32 0, align 4
@SFP_FLAG_CT_SHIFT = common dso_local global i32 0, align 4
@SSF_CONNECTOR = common dso_local global i64 0, align 8
@SFF_PG0_CONNECTOR_LC = common dso_local global i32 0, align 4
@SFP_FLAG_IS_OPTICAL_PORT = common dso_local global i32 0, align 4
@SFP_FLAG_IS_OPTICAL_SHIFT = common dso_local global i32 0, align 4
@SFF_TEMPERATURE_B1 = common dso_local global i64 0, align 8
@SFF_TEMPERATURE_B0 = common dso_local global i64 0, align 8
@SFF_VCC_B1 = common dso_local global i64 0, align 8
@SFF_VCC_B0 = common dso_local global i64 0, align 8
@SFF_TXPOWER_B1 = common dso_local global i64 0, align 8
@SFF_TXPOWER_B0 = common dso_local global i64 0, align 8
@SFF_TX_BIAS_CURRENT_B1 = common dso_local global i64 0, align 8
@SFF_TX_BIAS_CURRENT_B0 = common dso_local global i64 0, align 8
@SFF_RXPOWER_B1 = common dso_local global i64 0, align 8
@SFF_RXPOWER_B0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rdp_sfp_desc*, i32*, i32*)* @lpfc_rdp_res_sfp_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rdp_res_sfp_desc(%struct.fc_rdp_sfp_desc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.fc_rdp_sfp_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sff_trasnceiver_codes_byte4*, align 8
  %15 = alloca %struct.sff_trasnceiver_codes_byte5*, align 8
  store %struct.fc_rdp_sfp_desc* %0, %struct.fc_rdp_sfp_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* @RDP_SFP_DESC_TAG, align 4
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = load %struct.fc_rdp_sfp_desc*, %struct.fc_rdp_sfp_desc** %4, align 8
  %19 = getelementptr inbounds %struct.fc_rdp_sfp_desc, %struct.fc_rdp_sfp_desc* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* @SSF_TRANSCEIVER_CODE_B4, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = bitcast i32* %22 to %struct.sff_trasnceiver_codes_byte4*
  store %struct.sff_trasnceiver_codes_byte4* %23, %struct.sff_trasnceiver_codes_byte4** %14, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* @SSF_TRANSCEIVER_CODE_B5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = bitcast i32* %26 to %struct.sff_trasnceiver_codes_byte5*
  store %struct.sff_trasnceiver_codes_byte5* %27, %struct.sff_trasnceiver_codes_byte5** %15, align 8
  %28 = load %struct.sff_trasnceiver_codes_byte4*, %struct.sff_trasnceiver_codes_byte4** %14, align 8
  %29 = getelementptr inbounds %struct.sff_trasnceiver_codes_byte4, %struct.sff_trasnceiver_codes_byte4* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %3
  %33 = load %struct.sff_trasnceiver_codes_byte5*, %struct.sff_trasnceiver_codes_byte5** %15, align 8
  %34 = getelementptr inbounds %struct.sff_trasnceiver_codes_byte5, %struct.sff_trasnceiver_codes_byte5* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.sff_trasnceiver_codes_byte5*, %struct.sff_trasnceiver_codes_byte5** %15, align 8
  %39 = getelementptr inbounds %struct.sff_trasnceiver_codes_byte5, %struct.sff_trasnceiver_codes_byte5* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37, %32, %3
  %43 = load i32, i32* @SFP_FLAG_PT_SWLASER, align 4
  %44 = load i32, i32* @SFP_FLAG_PT_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  br label %85

48:                                               ; preds = %37
  %49 = load %struct.sff_trasnceiver_codes_byte4*, %struct.sff_trasnceiver_codes_byte4** %14, align 8
  %50 = getelementptr inbounds %struct.sff_trasnceiver_codes_byte4, %struct.sff_trasnceiver_codes_byte4* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* @SSF_WAVELENGTH_B1, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i64, i64* @SSF_WAVELENGTH_B0, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %58, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @SFP_WAVELENGTH_LC1310, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load i32, i32* @SFP_FLAG_PT_LWLASER_LC1310, align 4
  %69 = load i32, i32* @SFP_FLAG_PT_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %67, %53
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @SFP_WAVELENGTH_LL1550, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* @SFP_FLAG_PT_LWLASER_LL1550, align 4
  %79 = load i32, i32* @SFP_FLAG_PT_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %77, %73
  br label %84

84:                                               ; preds = %83, %48
  br label %85

85:                                               ; preds = %84, %42
  %86 = load i32*, i32** %5, align 8
  %87 = load i64, i64* @SSF_IDENTIFIER, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SFF_PG0_IDENT_SFP, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @SFP_FLAG_CT_SFP_PLUS, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @SFP_FLAG_CT_UNKNOWN, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = load i32, i32* @SFP_FLAG_CT_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = load i64, i64* @SSF_CONNECTOR, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SFF_PG0_CONNECTOR_LC, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* @SFP_FLAG_IS_OPTICAL_PORT, align 4
  br label %111

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i32 [ %109, %108 ], [ 0, %110 ]
  %113 = load i32, i32* @SFP_FLAG_IS_OPTICAL_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = load i64, i64* @SFF_TEMPERATURE_B1, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 8
  %122 = load i32*, i32** %6, align 8
  %123 = load i64, i64* @SFF_TEMPERATURE_B0, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %121, %125
  store i32 %126, i32* %8, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = load i64, i64* @SFF_VCC_B1, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i64, i64* @SFF_VCC_B0, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %131, %135
  store i32 %136, i32* %12, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = load i64, i64* @SFF_TXPOWER_B1, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 8
  %142 = load i32*, i32** %6, align 8
  %143 = load i64, i64* @SFF_TXPOWER_B0, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %141, %145
  store i32 %146, i32* %11, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load i64, i64* @SFF_TX_BIAS_CURRENT_B1, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 8
  %152 = load i32*, i32** %6, align 8
  %153 = load i64, i64* @SFF_TX_BIAS_CURRENT_B0, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %151, %155
  store i32 %156, i32* %10, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load i64, i64* @SFF_RXPOWER_B1, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 8
  %162 = load i32*, i32** %6, align 8
  %163 = load i64, i64* @SFF_RXPOWER_B0, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %161, %165
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i8* @cpu_to_be16(i32 %167)
  %169 = load %struct.fc_rdp_sfp_desc*, %struct.fc_rdp_sfp_desc** %4, align 8
  %170 = getelementptr inbounds %struct.fc_rdp_sfp_desc, %struct.fc_rdp_sfp_desc* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 5
  store i8* %168, i8** %171, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i8* @cpu_to_be16(i32 %172)
  %174 = load %struct.fc_rdp_sfp_desc*, %struct.fc_rdp_sfp_desc** %4, align 8
  %175 = getelementptr inbounds %struct.fc_rdp_sfp_desc, %struct.fc_rdp_sfp_desc* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 4
  store i8* %173, i8** %176, align 8
  %177 = load i32, i32* %10, align 4
  %178 = call i8* @cpu_to_be16(i32 %177)
  %179 = load %struct.fc_rdp_sfp_desc*, %struct.fc_rdp_sfp_desc** %4, align 8
  %180 = getelementptr inbounds %struct.fc_rdp_sfp_desc, %struct.fc_rdp_sfp_desc* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 3
  store i8* %178, i8** %181, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i8* @cpu_to_be16(i32 %182)
  %184 = load %struct.fc_rdp_sfp_desc*, %struct.fc_rdp_sfp_desc** %4, align 8
  %185 = getelementptr inbounds %struct.fc_rdp_sfp_desc, %struct.fc_rdp_sfp_desc* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  store i8* %183, i8** %186, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i8* @cpu_to_be16(i32 %187)
  %189 = load %struct.fc_rdp_sfp_desc*, %struct.fc_rdp_sfp_desc** %4, align 8
  %190 = getelementptr inbounds %struct.fc_rdp_sfp_desc, %struct.fc_rdp_sfp_desc* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  store i8* %188, i8** %191, align 8
  %192 = load i32, i32* %13, align 4
  %193 = call i8* @cpu_to_be16(i32 %192)
  %194 = load %struct.fc_rdp_sfp_desc*, %struct.fc_rdp_sfp_desc** %4, align 8
  %195 = getelementptr inbounds %struct.fc_rdp_sfp_desc, %struct.fc_rdp_sfp_desc* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  store i8* %193, i8** %196, align 8
  %197 = call i8* @cpu_to_be32(i32 48)
  %198 = load %struct.fc_rdp_sfp_desc*, %struct.fc_rdp_sfp_desc** %4, align 8
  %199 = getelementptr inbounds %struct.fc_rdp_sfp_desc, %struct.fc_rdp_sfp_desc* %198, i32 0, i32 0
  store i8* %197, i8** %199, align 8
  ret i32 64
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
