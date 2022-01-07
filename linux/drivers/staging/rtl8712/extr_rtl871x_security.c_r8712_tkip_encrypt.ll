; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_tkip_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_tkip_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.xmit_priv }
%struct.xmit_priv = type { i64 }
%struct.arc4context = type { i32 }
%union.pn48 = type { i32 }
%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.pkt_attrib = type { i64, i64, i32, i32, i64, i64, i32*, i32*, %struct.sta_info* }
%struct.xmit_frame = type { i32*, %struct.pkt_attrib }

@_SUCCESS = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i64 0, align 8
@TXDESC_OFFSET = common dso_local global i32 0, align 4
@_TKIP_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @r8712_tkip_encrypt(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca [16 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca %struct.arc4context, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %union.pn48, align 4
  %19 = alloca %struct.sta_info*, align 8
  %20 = alloca %struct.pkt_attrib*, align 8
  %21 = alloca %struct.xmit_priv*, align 8
  %22 = alloca i64, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = bitcast i32* %23 to %struct.xmit_frame*
  %25 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %24, i32 0, i32 1
  store %struct.pkt_attrib* %25, %struct.pkt_attrib** %20, align 8
  %26 = load %struct._adapter*, %struct._adapter** %4, align 8
  %27 = getelementptr inbounds %struct._adapter, %struct._adapter* %26, i32 0, i32 1
  store %struct.xmit_priv* %27, %struct.xmit_priv** %21, align 8
  %28 = load i64, i64* @_SUCCESS, align 8
  store i64 %28, i64* %22, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = bitcast i32* %29 to %struct.xmit_frame*
  %31 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i64, i64* @_FAIL, align 8
  store i64 %35, i64* %3, align 8
  br label %220

36:                                               ; preds = %2
  %37 = load i32*, i32** %5, align 8
  %38 = bitcast i32* %37 to %struct.xmit_frame*
  %39 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @TXDESC_OFFSET, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %14, align 8
  %44 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %45 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @_TKIP_, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %218

49:                                               ; preds = %36
  %50 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %51 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %50, i32 0, i32 8
  %52 = load %struct.sta_info*, %struct.sta_info** %51, align 8
  %53 = icmp ne %struct.sta_info* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %56 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %55, i32 0, i32 8
  %57 = load %struct.sta_info*, %struct.sta_info** %56, align 8
  store %struct.sta_info* %57, %struct.sta_info** %19, align 8
  br label %66

58:                                               ; preds = %49
  %59 = load %struct._adapter*, %struct._adapter** %4, align 8
  %60 = getelementptr inbounds %struct._adapter, %struct._adapter* %59, i32 0, i32 0
  %61 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %62 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %61, i32 0, i32 7
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = call %struct.sta_info* @r8712_get_stainfo(i32* %60, i32* %64)
  store %struct.sta_info* %65, %struct.sta_info** %19, align 8
  br label %66

66:                                               ; preds = %58, %54
  %67 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %68 = icmp ne %struct.sta_info* %67, null
  br i1 %68, label %69, label %215

69:                                               ; preds = %66
  %70 = load %struct.sta_info*, %struct.sta_info** %19, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32* %74, i32** %17, align 8
  store i64 0, i64* %12, align 8
  br label %75

75:                                               ; preds = %211, %69
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %78 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %214

81:                                               ; preds = %75
  %82 = load i32*, i32** %14, align 8
  %83 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %84 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  store i32* %87, i32** %16, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %90 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %95 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  store i32* %98, i32** %15, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = getelementptr inbounds %union.pn48, %union.pn48* %18, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @GET_TKIP_PN(i32* %99, i32 %101)
  %103 = bitcast %union.pn48* %18 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %6, align 8
  %106 = bitcast %union.pn48* %18 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 16
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %7, align 8
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %111 = bitcast i32* %110 to i64*
  %112 = load i32*, i32** %17, align 8
  %113 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %114 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @phase1(i64* %111, i32* %112, i32* %116, i64 %117)
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %120 = load i32*, i32** %17, align 8
  %121 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %122 = bitcast i32* %121 to i64*
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @phase2(i32* %119, i32* %120, i64* %122, i64 %123)
  %125 = load i64, i64* %12, align 8
  %126 = add nsw i64 %125, 1
  %127 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %128 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %166

131:                                              ; preds = %81
  %132 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %133 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %136 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = sub nsw i64 %134, %138
  %140 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %141 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = sub nsw i64 %139, %143
  %145 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %146 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  store i64 %148, i64* %13, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = load i64, i64* %13, align 8
  %151 = call i32 @getcrc32(i32* %149, i64 %150)
  %152 = call i32 @cpu_to_le32(i32 %151)
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %152, i32* %153, align 16
  %154 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %155 = call i32 @arcfour_init(%struct.arc4context* %11, i32* %154, i32 16)
  %156 = load i32*, i32** %15, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = load i64, i64* %13, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @arcfour_encrypt(%struct.arc4context* %11, i32* %156, i32* %157, i32 %159)
  %161 = load i32*, i32** %15, align 8
  %162 = load i64, i64* %13, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %165 = call i32 @arcfour_encrypt(%struct.arc4context* %11, i32* %163, i32* %164, i32 4)
  br label %210

166:                                              ; preds = %81
  %167 = load %struct.xmit_priv*, %struct.xmit_priv** %21, align 8
  %168 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %171 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = sub nsw i64 %169, %173
  %175 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %176 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = sub nsw i64 %174, %178
  %180 = load %struct.pkt_attrib*, %struct.pkt_attrib** %20, align 8
  %181 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %179, %182
  store i64 %183, i64* %13, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = load i64, i64* %13, align 8
  %186 = call i32 @getcrc32(i32* %184, i64 %185)
  %187 = call i32 @cpu_to_le32(i32 %186)
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %187, i32* %188, align 16
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %190 = call i32 @arcfour_init(%struct.arc4context* %11, i32* %189, i32 16)
  %191 = load i32*, i32** %15, align 8
  %192 = load i32*, i32** %15, align 8
  %193 = load i64, i64* %13, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i32 @arcfour_encrypt(%struct.arc4context* %11, i32* %191, i32* %192, i32 %194)
  %196 = load i32*, i32** %15, align 8
  %197 = load i64, i64* %13, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %200 = call i32 @arcfour_encrypt(%struct.arc4context* %11, i32* %198, i32* %199, i32 4)
  %201 = load %struct.xmit_priv*, %struct.xmit_priv** %21, align 8
  %202 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i32*, i32** %14, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 %203
  store i32* %205, i32** %14, align 8
  %206 = load i32*, i32** %14, align 8
  %207 = ptrtoint i32* %206 to i32
  %208 = call i64 @RND4(i32 %207)
  %209 = inttoptr i64 %208 to i32*
  store i32* %209, i32** %14, align 8
  br label %210

210:                                              ; preds = %166, %131
  br label %211

211:                                              ; preds = %210
  %212 = load i64, i64* %12, align 8
  %213 = add nsw i64 %212, 1
  store i64 %213, i64* %12, align 8
  br label %75

214:                                              ; preds = %75
  br label %217

215:                                              ; preds = %66
  %216 = load i64, i64* @_FAIL, align 8
  store i64 %216, i64* %22, align 8
  br label %217

217:                                              ; preds = %215, %214
  br label %218

218:                                              ; preds = %217, %36
  %219 = load i64, i64* %22, align 8
  store i64 %219, i64* %3, align 8
  br label %220

220:                                              ; preds = %218, %34
  %221 = load i64, i64* %3, align 8
  ret i64 %221
}

declare dso_local %struct.sta_info* @r8712_get_stainfo(i32*, i32*) #1

declare dso_local i32 @GET_TKIP_PN(i32*, i32) #1

declare dso_local i32 @phase1(i64*, i32*, i32*, i64) #1

declare dso_local i32 @phase2(i32*, i32*, i64*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @getcrc32(i32*, i64) #1

declare dso_local i32 @arcfour_init(%struct.arc4context*, i32*, i32) #1

declare dso_local i32 @arcfour_encrypt(%struct.arc4context*, i32*, i32*, i32) #1

declare dso_local i64 @RND4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
