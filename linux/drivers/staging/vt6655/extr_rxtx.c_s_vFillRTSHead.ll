; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_vFillRTSHead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_vFillRTSHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i16, i16 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.vnt_rts_g = type { %struct.TYPE_6__, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i8* }
%struct.vnt_rts_g_fb = type { %struct.TYPE_7__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i8*, i8* }
%struct.vnt_rts_ab = type { %struct.TYPE_8__, i8*, i32 }
%struct.TYPE_8__ = type { i32, i32, i8*, i8* }
%struct.vnt_rts_a_fb = type { %struct.TYPE_5__, i8*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i8* }

@PK_TYPE_11GB = common dso_local global i8 0, align 1
@PK_TYPE_11GA = common dso_local global i8 0, align 1
@AUTO_FB_NONE = common dso_local global i8 0, align 1
@PK_TYPE_11B = common dso_local global i8 0, align 1
@RTSDUR_BB = common dso_local global i32 0, align 4
@RTSDUR_AA = common dso_local global i32 0, align 4
@RTSDUR_BA = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_STYPE_RTS = common dso_local global i32 0, align 4
@RTSDUR_BA_F0 = common dso_local global i32 0, align 4
@RTSDUR_AA_F0 = common dso_local global i32 0, align 4
@RTSDUR_BA_F1 = common dso_local global i32 0, align 4
@RTSDUR_AA_F1 = common dso_local global i32 0, align 4
@PK_TYPE_11A = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*, i8, i8*, i32, i32, i32, %struct.ieee80211_hdr*, i16, i8)* @s_vFillRTSHead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_vFillRTSHead(%struct.vnt_private* %0, i8 zeroext %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.ieee80211_hdr* %6, i16 zeroext %7, i8 zeroext %8) #0 {
  %10 = alloca %struct.vnt_private*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ieee80211_hdr*, align 8
  %17 = alloca i16, align 2
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca %struct.vnt_rts_g*, align 8
  %21 = alloca %struct.vnt_rts_g_fb*, align 8
  %22 = alloca %struct.vnt_rts_ab*, align 8
  %23 = alloca %struct.vnt_rts_a_fb*, align 8
  %24 = alloca %struct.vnt_rts_ab*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %10, align 8
  store i8 %1, i8* %11, align 1
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.ieee80211_hdr* %6, %struct.ieee80211_hdr** %16, align 8
  store i16 %7, i16* %17, align 2
  store i8 %8, i8* %18, align 1
  store i32 20, i32* %19, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %9
  br label %451

28:                                               ; preds = %9
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %19, align 4
  %33 = sub i32 %32, 4
  store i32 %33, i32* %19, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @PK_TYPE_11GB, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8, i8* %11, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @PK_TYPE_11GA, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %257

46:                                               ; preds = %40, %34
  %47 = load i8, i8* %18, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @AUTO_FB_NONE, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %134

52:                                               ; preds = %46
  %53 = load i8*, i8** %12, align 8
  %54 = bitcast i8* %53 to %struct.vnt_rts_g*
  store %struct.vnt_rts_g* %54, %struct.vnt_rts_g** %20, align 8
  %55 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %56 = load i32, i32* %19, align 4
  %57 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %58 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %57, i32 0, i32 0
  %59 = load i16, i16* %58, align 2
  %60 = load i8, i8* @PK_TYPE_11B, align 1
  %61 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %20, align 8
  %62 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %61, i32 0, i32 5
  %63 = call i32 @vnt_get_phy_field(%struct.vnt_private* %55, i32 %56, i16 zeroext %59, i8 zeroext %60, i32* %62)
  %64 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %65 = load i32, i32* %19, align 4
  %66 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %67 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %66, i32 0, i32 1
  %68 = load i16, i16* %67, align 2
  %69 = load i8, i8* %11, align 1
  %70 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %20, align 8
  %71 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %70, i32 0, i32 4
  %72 = call i32 @vnt_get_phy_field(%struct.vnt_private* %64, i32 %65, i16 zeroext %68, i8 zeroext %69, i32* %71)
  %73 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %74 = load i32, i32* @RTSDUR_BB, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i8, i8* @PK_TYPE_11B, align 1
  %77 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %78 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %77, i32 0, i32 0
  %79 = load i16, i16* %78, align 2
  %80 = load i32, i32* %14, align 4
  %81 = load i8, i8* %18, align 1
  %82 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %73, i32 %74, i32 %75, i8 zeroext %76, i16 zeroext %79, i32 %80, i8 zeroext %81)
  %83 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %20, align 8
  %84 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %86 = load i32, i32* @RTSDUR_AA, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i8, i8* %11, align 1
  %89 = load i16, i16* %17, align 2
  %90 = load i32, i32* %14, align 4
  %91 = load i8, i8* %18, align 1
  %92 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %85, i32 %86, i32 %87, i8 zeroext %88, i16 zeroext %89, i32 %90, i8 zeroext %91)
  %93 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %20, align 8
  %94 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %96 = load i32, i32* @RTSDUR_BA, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i8, i8* %11, align 1
  %99 = load i16, i16* %17, align 2
  %100 = load i32, i32* %14, align 4
  %101 = load i8, i8* %18, align 1
  %102 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %95, i32 %96, i32 %97, i8 zeroext %98, i16 zeroext %99, i32 %100, i8 zeroext %101)
  %103 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %20, align 8
  %104 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %20, align 8
  %106 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %20, align 8
  %109 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  store i8* %107, i8** %110, align 8
  %111 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %112 = load i32, i32* @IEEE80211_STYPE_RTS, align 4
  %113 = or i32 %111, %112
  %114 = call i8* @cpu_to_le16(i32 %113)
  %115 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %20, align 8
  %116 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  %118 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %20, align 8
  %119 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %123 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ether_addr_copy(i32 %121, i32 %124)
  %126 = load %struct.vnt_rts_g*, %struct.vnt_rts_g** %20, align 8
  %127 = getelementptr inbounds %struct.vnt_rts_g, %struct.vnt_rts_g* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %131 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ether_addr_copy(i32 %129, i32 %132)
  br label %256

134:                                              ; preds = %46
  %135 = load i8*, i8** %12, align 8
  %136 = bitcast i8* %135 to %struct.vnt_rts_g_fb*
  store %struct.vnt_rts_g_fb* %136, %struct.vnt_rts_g_fb** %21, align 8
  %137 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %138 = load i32, i32* %19, align 4
  %139 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %140 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %139, i32 0, i32 0
  %141 = load i16, i16* %140, align 2
  %142 = load i8, i8* @PK_TYPE_11B, align 1
  %143 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %144 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %143, i32 0, i32 9
  %145 = call i32 @vnt_get_phy_field(%struct.vnt_private* %137, i32 %138, i16 zeroext %141, i8 zeroext %142, i32* %144)
  %146 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %149 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %148, i32 0, i32 1
  %150 = load i16, i16* %149, align 2
  %151 = load i8, i8* %11, align 1
  %152 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %153 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %152, i32 0, i32 8
  %154 = call i32 @vnt_get_phy_field(%struct.vnt_private* %146, i32 %147, i16 zeroext %150, i8 zeroext %151, i32* %153)
  %155 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %156 = load i32, i32* @RTSDUR_BB, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i8, i8* @PK_TYPE_11B, align 1
  %159 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %160 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %159, i32 0, i32 0
  %161 = load i16, i16* %160, align 2
  %162 = load i32, i32* %14, align 4
  %163 = load i8, i8* %18, align 1
  %164 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %155, i32 %156, i32 %157, i8 zeroext %158, i16 zeroext %161, i32 %162, i8 zeroext %163)
  %165 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %166 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %165, i32 0, i32 7
  store i8* %164, i8** %166, align 8
  %167 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %168 = load i32, i32* @RTSDUR_AA, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load i8, i8* %11, align 1
  %171 = load i16, i16* %17, align 2
  %172 = load i32, i32* %14, align 4
  %173 = load i8, i8* %18, align 1
  %174 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %167, i32 %168, i32 %169, i8 zeroext %170, i16 zeroext %171, i32 %172, i8 zeroext %173)
  %175 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %176 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  %177 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %178 = load i32, i32* @RTSDUR_BA, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i8, i8* %11, align 1
  %181 = load i16, i16* %17, align 2
  %182 = load i32, i32* %14, align 4
  %183 = load i8, i8* %18, align 1
  %184 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %177, i32 %178, i32 %179, i8 zeroext %180, i16 zeroext %181, i32 %182, i8 zeroext %183)
  %185 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %186 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %185, i32 0, i32 6
  store i8* %184, i8** %186, align 8
  %187 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %188 = load i32, i32* @RTSDUR_BA_F0, align 4
  %189 = load i32, i32* %13, align 4
  %190 = load i8, i8* %11, align 1
  %191 = load i16, i16* %17, align 2
  %192 = load i32, i32* %14, align 4
  %193 = load i8, i8* %18, align 1
  %194 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %187, i32 %188, i32 %189, i8 zeroext %190, i16 zeroext %191, i32 %192, i8 zeroext %193)
  %195 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %196 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %195, i32 0, i32 5
  store i8* %194, i8** %196, align 8
  %197 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %198 = load i32, i32* @RTSDUR_AA_F0, align 4
  %199 = load i32, i32* %13, align 4
  %200 = load i8, i8* %11, align 1
  %201 = load i16, i16* %17, align 2
  %202 = load i32, i32* %14, align 4
  %203 = load i8, i8* %18, align 1
  %204 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %197, i32 %198, i32 %199, i8 zeroext %200, i16 zeroext %201, i32 %202, i8 zeroext %203)
  %205 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %206 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %205, i32 0, i32 4
  store i8* %204, i8** %206, align 8
  %207 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %208 = load i32, i32* @RTSDUR_BA_F1, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i8, i8* %11, align 1
  %211 = load i16, i16* %17, align 2
  %212 = load i32, i32* %14, align 4
  %213 = load i8, i8* %18, align 1
  %214 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %207, i32 %208, i32 %209, i8 zeroext %210, i16 zeroext %211, i32 %212, i8 zeroext %213)
  %215 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %216 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %215, i32 0, i32 3
  store i8* %214, i8** %216, align 8
  %217 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %218 = load i32, i32* @RTSDUR_AA_F1, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i8, i8* %11, align 1
  %221 = load i16, i16* %17, align 2
  %222 = load i32, i32* %14, align 4
  %223 = load i8, i8* %18, align 1
  %224 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %217, i32 %218, i32 %219, i8 zeroext %220, i16 zeroext %221, i32 %222, i8 zeroext %223)
  %225 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %226 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %225, i32 0, i32 2
  store i8* %224, i8** %226, align 8
  %227 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %228 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %231 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 3
  store i8* %229, i8** %232, align 8
  %233 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %234 = load i32, i32* @IEEE80211_STYPE_RTS, align 4
  %235 = or i32 %233, %234
  %236 = call i8* @cpu_to_le16(i32 %235)
  %237 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %238 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 2
  store i8* %236, i8** %239, align 8
  %240 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %241 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %245 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @ether_addr_copy(i32 %243, i32 %246)
  %248 = load %struct.vnt_rts_g_fb*, %struct.vnt_rts_g_fb** %21, align 8
  %249 = getelementptr inbounds %struct.vnt_rts_g_fb, %struct.vnt_rts_g_fb* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %253 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @ether_addr_copy(i32 %251, i32 %254)
  br label %256

256:                                              ; preds = %134, %52
  br label %451

257:                                              ; preds = %40
  %258 = load i8, i8* %11, align 1
  %259 = zext i8 %258 to i32
  %260 = load i8, i8* @PK_TYPE_11A, align 1
  %261 = zext i8 %260 to i32
  %262 = icmp eq i32 %259, %261
  br i1 %262, label %263, label %392

263:                                              ; preds = %257
  %264 = load i8, i8* %18, align 1
  %265 = zext i8 %264 to i32
  %266 = load i8, i8* @AUTO_FB_NONE, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %269, label %320

269:                                              ; preds = %263
  %270 = load i8*, i8** %12, align 8
  %271 = bitcast i8* %270 to %struct.vnt_rts_ab*
  store %struct.vnt_rts_ab* %271, %struct.vnt_rts_ab** %22, align 8
  %272 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %273 = load i32, i32* %19, align 4
  %274 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %275 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %274, i32 0, i32 1
  %276 = load i16, i16* %275, align 2
  %277 = load i8, i8* %11, align 1
  %278 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %22, align 8
  %279 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %278, i32 0, i32 2
  %280 = call i32 @vnt_get_phy_field(%struct.vnt_private* %272, i32 %273, i16 zeroext %276, i8 zeroext %277, i32* %279)
  %281 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %282 = load i32, i32* @RTSDUR_AA, align 4
  %283 = load i32, i32* %13, align 4
  %284 = load i8, i8* %11, align 1
  %285 = load i16, i16* %17, align 2
  %286 = load i32, i32* %14, align 4
  %287 = load i8, i8* %18, align 1
  %288 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %281, i32 %282, i32 %283, i8 zeroext %284, i16 zeroext %285, i32 %286, i8 zeroext %287)
  %289 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %22, align 8
  %290 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %289, i32 0, i32 1
  store i8* %288, i8** %290, align 8
  %291 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %22, align 8
  %292 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %291, i32 0, i32 1
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %22, align 8
  %295 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 3
  store i8* %293, i8** %296, align 8
  %297 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %298 = load i32, i32* @IEEE80211_STYPE_RTS, align 4
  %299 = or i32 %297, %298
  %300 = call i8* @cpu_to_le16(i32 %299)
  %301 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %22, align 8
  %302 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 2
  store i8* %300, i8** %303, align 8
  %304 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %22, align 8
  %305 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %309 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @ether_addr_copy(i32 %307, i32 %310)
  %312 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %22, align 8
  %313 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %317 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @ether_addr_copy(i32 %315, i32 %318)
  br label %391

320:                                              ; preds = %263
  %321 = load i8*, i8** %12, align 8
  %322 = bitcast i8* %321 to %struct.vnt_rts_a_fb*
  store %struct.vnt_rts_a_fb* %322, %struct.vnt_rts_a_fb** %23, align 8
  %323 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %324 = load i32, i32* %19, align 4
  %325 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %326 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %325, i32 0, i32 1
  %327 = load i16, i16* %326, align 2
  %328 = load i8, i8* %11, align 1
  %329 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %23, align 8
  %330 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %329, i32 0, i32 4
  %331 = call i32 @vnt_get_phy_field(%struct.vnt_private* %323, i32 %324, i16 zeroext %327, i8 zeroext %328, i32* %330)
  %332 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %333 = load i32, i32* @RTSDUR_AA, align 4
  %334 = load i32, i32* %13, align 4
  %335 = load i8, i8* %11, align 1
  %336 = load i16, i16* %17, align 2
  %337 = load i32, i32* %14, align 4
  %338 = load i8, i8* %18, align 1
  %339 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %332, i32 %333, i32 %334, i8 zeroext %335, i16 zeroext %336, i32 %337, i8 zeroext %338)
  %340 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %23, align 8
  %341 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %340, i32 0, i32 1
  store i8* %339, i8** %341, align 8
  %342 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %343 = load i32, i32* @RTSDUR_AA_F0, align 4
  %344 = load i32, i32* %13, align 4
  %345 = load i8, i8* %11, align 1
  %346 = load i16, i16* %17, align 2
  %347 = load i32, i32* %14, align 4
  %348 = load i8, i8* %18, align 1
  %349 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %342, i32 %343, i32 %344, i8 zeroext %345, i16 zeroext %346, i32 %347, i8 zeroext %348)
  %350 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %23, align 8
  %351 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %350, i32 0, i32 3
  store i8* %349, i8** %351, align 8
  %352 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %353 = load i32, i32* @RTSDUR_AA_F1, align 4
  %354 = load i32, i32* %13, align 4
  %355 = load i8, i8* %11, align 1
  %356 = load i16, i16* %17, align 2
  %357 = load i32, i32* %14, align 4
  %358 = load i8, i8* %18, align 1
  %359 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %352, i32 %353, i32 %354, i8 zeroext %355, i16 zeroext %356, i32 %357, i8 zeroext %358)
  %360 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %23, align 8
  %361 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %360, i32 0, i32 2
  store i8* %359, i8** %361, align 8
  %362 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %23, align 8
  %363 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %362, i32 0, i32 1
  %364 = load i8*, i8** %363, align 8
  %365 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %23, align 8
  %366 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 3
  store i8* %364, i8** %367, align 8
  %368 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %369 = load i32, i32* @IEEE80211_STYPE_RTS, align 4
  %370 = or i32 %368, %369
  %371 = call i8* @cpu_to_le16(i32 %370)
  %372 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %23, align 8
  %373 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i32 0, i32 2
  store i8* %371, i8** %374, align 8
  %375 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %23, align 8
  %376 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %380 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @ether_addr_copy(i32 %378, i32 %381)
  %383 = load %struct.vnt_rts_a_fb*, %struct.vnt_rts_a_fb** %23, align 8
  %384 = getelementptr inbounds %struct.vnt_rts_a_fb, %struct.vnt_rts_a_fb* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %388 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @ether_addr_copy(i32 %386, i32 %389)
  br label %391

391:                                              ; preds = %320, %269
  br label %450

392:                                              ; preds = %257
  %393 = load i8, i8* %11, align 1
  %394 = zext i8 %393 to i32
  %395 = load i8, i8* @PK_TYPE_11B, align 1
  %396 = zext i8 %395 to i32
  %397 = icmp eq i32 %394, %396
  br i1 %397, label %398, label %449

398:                                              ; preds = %392
  %399 = load i8*, i8** %12, align 8
  %400 = bitcast i8* %399 to %struct.vnt_rts_ab*
  store %struct.vnt_rts_ab* %400, %struct.vnt_rts_ab** %24, align 8
  %401 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %402 = load i32, i32* %19, align 4
  %403 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %404 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %403, i32 0, i32 0
  %405 = load i16, i16* %404, align 2
  %406 = load i8, i8* @PK_TYPE_11B, align 1
  %407 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %24, align 8
  %408 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %407, i32 0, i32 2
  %409 = call i32 @vnt_get_phy_field(%struct.vnt_private* %401, i32 %402, i16 zeroext %405, i8 zeroext %406, i32* %408)
  %410 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %411 = load i32, i32* @RTSDUR_BB, align 4
  %412 = load i32, i32* %13, align 4
  %413 = load i8, i8* %11, align 1
  %414 = load i16, i16* %17, align 2
  %415 = load i32, i32* %14, align 4
  %416 = load i8, i8* %18, align 1
  %417 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %410, i32 %411, i32 %412, i8 zeroext %413, i16 zeroext %414, i32 %415, i8 zeroext %416)
  %418 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %24, align 8
  %419 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %418, i32 0, i32 1
  store i8* %417, i8** %419, align 8
  %420 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %24, align 8
  %421 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %420, i32 0, i32 1
  %422 = load i8*, i8** %421, align 8
  %423 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %24, align 8
  %424 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 3
  store i8* %422, i8** %425, align 8
  %426 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %427 = load i32, i32* @IEEE80211_STYPE_RTS, align 4
  %428 = or i32 %426, %427
  %429 = call i8* @cpu_to_le16(i32 %428)
  %430 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %24, align 8
  %431 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 0, i32 2
  store i8* %429, i8** %432, align 8
  %433 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %24, align 8
  %434 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %438 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @ether_addr_copy(i32 %436, i32 %439)
  %441 = load %struct.vnt_rts_ab*, %struct.vnt_rts_ab** %24, align 8
  %442 = getelementptr inbounds %struct.vnt_rts_ab, %struct.vnt_rts_ab* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %446 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @ether_addr_copy(i32 %444, i32 %447)
  br label %449

449:                                              ; preds = %398, %392
  br label %450

450:                                              ; preds = %449, %391
  br label %451

451:                                              ; preds = %27, %450, %256
  ret void
}

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i16 zeroext, i8 zeroext, i32*) #1

declare dso_local i8* @s_uGetRTSCTSDuration(%struct.vnt_private*, i32, i32, i8 zeroext, i16 zeroext, i32, i8 zeroext) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
