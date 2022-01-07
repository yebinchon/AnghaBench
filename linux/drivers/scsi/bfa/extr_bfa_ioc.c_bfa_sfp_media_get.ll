; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_media_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_media_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sfp_s = type { i32*, i32, i64 }
%union.sfp_xcvr_e10g_code_u = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.sfp_mem_s = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@BFA_SFP_MEDIA_UNKNOWN = common dso_local global i32 0, align 4
@BFA_SFP_STATE_UNSUPPORT = common dso_local global i32 0, align 4
@BFA_SFP_MEDIA_UNSUPPORT = common dso_local global i32 0, align 4
@BFA_SFP_STATE_VALID = common dso_local global i32 0, align 4
@SFP_XMTR_TECH_CU = common dso_local global i32 0, align 4
@SFP_XMTR_TECH_CP = common dso_local global i32 0, align 4
@SFP_XMTR_TECH_CA = common dso_local global i32 0, align 4
@BFA_SFP_MEDIA_CU = common dso_local global i32 0, align 4
@SFP_XMTR_TECH_EL_INTRA = common dso_local global i32 0, align 4
@SFP_XMTR_TECH_EL_INTER = common dso_local global i32 0, align 4
@BFA_SFP_MEDIA_EL = common dso_local global i32 0, align 4
@SFP_XMTR_TECH_LL = common dso_local global i32 0, align 4
@SFP_XMTR_TECH_LC = common dso_local global i32 0, align 4
@BFA_SFP_MEDIA_LW = common dso_local global i32 0, align 4
@SFP_XMTR_TECH_SL = common dso_local global i32 0, align 4
@SFP_XMTR_TECH_SN = common dso_local global i32 0, align 4
@SFP_XMTR_TECH_SA = common dso_local global i32 0, align 4
@BFA_SFP_MEDIA_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_sfp_s*)* @bfa_sfp_media_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_sfp_media_get(%struct.bfa_sfp_s* %0) #0 {
  %2 = alloca %struct.bfa_sfp_s*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %union.sfp_xcvr_e10g_code_u, align 8
  %5 = alloca %struct.sfp_mem_s*, align 8
  %6 = alloca i32, align 4
  store %struct.bfa_sfp_s* %0, %struct.bfa_sfp_s** %2, align 8
  %7 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %8 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load i32, i32* @BFA_SFP_MEDIA_UNKNOWN, align 4
  %11 = load i32*, i32** %3, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %13 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BFA_SFP_STATE_UNSUPPORT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @BFA_SFP_MEDIA_UNSUPPORT, align 4
  %19 = load i32*, i32** %3, align 8
  store i32 %18, i32* %19, align 4
  br label %168

20:                                               ; preds = %1
  %21 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %22 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BFA_SFP_STATE_VALID, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %161

26:                                               ; preds = %20
  %27 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.sfp_mem_s*
  store %struct.sfp_mem_s* %30, %struct.sfp_mem_s** %5, align 8
  %31 = load %struct.sfp_mem_s*, %struct.sfp_mem_s** %5, align 8
  %32 = getelementptr inbounds %struct.sfp_mem_s, %struct.sfp_mem_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 3
  %38 = shl i32 %37, 7
  %39 = load %struct.sfp_mem_s*, %struct.sfp_mem_s** %5, align 8
  %40 = getelementptr inbounds %struct.sfp_mem_s, %struct.sfp_mem_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 1
  %46 = or i32 %38, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.sfp_mem_s*, %struct.sfp_mem_s** %5, align 8
  %48 = getelementptr inbounds %struct.sfp_mem_s, %struct.sfp_mem_s* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %union.sfp_xcvr_e10g_code_u* %4 to i32*
  store i32 %52, i32* %53, align 8
  %54 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %55 = bitcast %union.sfp_xcvr_e10g_code_u* %4 to i32*
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @bfa_trc(%struct.bfa_sfp_s* %54, i32 %56)
  %58 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @bfa_trc(%struct.bfa_sfp_s* %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @SFP_XMTR_TECH_CU, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %26
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SFP_XMTR_TECH_CP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SFP_XMTR_TECH_CA, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70, %65, %26
  %76 = load i32, i32* @BFA_SFP_MEDIA_CU, align 4
  %77 = load i32*, i32** %3, align 8
  store i32 %76, i32* %77, align 4
  br label %160

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @SFP_XMTR_TECH_EL_INTRA, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @SFP_XMTR_TECH_EL_INTER, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @BFA_SFP_MEDIA_EL, align 4
  %90 = load i32*, i32** %3, align 8
  store i32 %89, i32* %90, align 4
  br label %159

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @SFP_XMTR_TECH_LL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @SFP_XMTR_TECH_LC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96, %91
  %102 = load i32, i32* @BFA_SFP_MEDIA_LW, align 4
  %103 = load i32*, i32** %3, align 8
  store i32 %102, i32* %103, align 4
  br label %158

104:                                              ; preds = %96
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @SFP_XMTR_TECH_SL, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @SFP_XMTR_TECH_SN, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @SFP_XMTR_TECH_SA, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %109, %104
  %120 = load i32, i32* @BFA_SFP_MEDIA_SW, align 4
  %121 = load i32*, i32** %3, align 8
  store i32 %120, i32* %121, align 4
  br label %157

122:                                              ; preds = %114
  %123 = bitcast %union.sfp_xcvr_e10g_code_u* %4 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* @BFA_SFP_MEDIA_SW, align 4
  %129 = load i32*, i32** %3, align 8
  store i32 %128, i32* %129, align 4
  br label %156

130:                                              ; preds = %122
  %131 = bitcast %union.sfp_xcvr_e10g_code_u* %4 to %struct.TYPE_4__*
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = bitcast %union.sfp_xcvr_e10g_code_u* %4 to %struct.TYPE_4__*
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @BFA_SFP_MEDIA_LW, align 4
  %142 = load i32*, i32** %3, align 8
  store i32 %141, i32* %142, align 4
  br label %155

143:                                              ; preds = %135, %130
  %144 = bitcast %union.sfp_xcvr_e10g_code_u* %4 to %struct.TYPE_4__*
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* @BFA_SFP_MEDIA_UNKNOWN, align 4
  %150 = load i32*, i32** %3, align 8
  store i32 %149, i32* %150, align 4
  br label %154

151:                                              ; preds = %143
  %152 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %153 = call i32 @bfa_trc(%struct.bfa_sfp_s* %152, i32 0)
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %140
  br label %156

156:                                              ; preds = %155, %127
  br label %157

157:                                              ; preds = %156, %119
  br label %158

158:                                              ; preds = %157, %101
  br label %159

159:                                              ; preds = %158, %88
  br label %160

160:                                              ; preds = %159, %75
  br label %167

161:                                              ; preds = %20
  %162 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %163 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %164 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @bfa_trc(%struct.bfa_sfp_s* %162, i32 %165)
  br label %167

167:                                              ; preds = %161, %160
  br label %168

168:                                              ; preds = %167, %17
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_sfp_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
