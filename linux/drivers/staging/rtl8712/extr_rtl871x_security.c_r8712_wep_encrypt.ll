; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_wep_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_wep_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.xmit_priv, %struct.security_priv }
%struct.xmit_priv = type { i64 }
%struct.security_priv = type { i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.arc4context = type { i32 }
%struct.pkt_attrib = type { i64, i64, i32, i32, i64, i64 }
%struct.xmit_frame = type { i8*, %struct.pkt_attrib }

@TXDESC_OFFSET = common dso_local global i32 0, align 4
@_WEP40_ = common dso_local global i64 0, align 8
@_WEP104_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_wep_encrypt(%struct._adapter* %0, i8* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i8], align 1
  %6 = alloca %struct.arc4context, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca %struct.pkt_attrib*, align 8
  %16 = alloca %struct.security_priv*, align 8
  %17 = alloca %struct.xmit_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.xmit_frame*
  %20 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %19, i32 0, i32 1
  store %struct.pkt_attrib* %20, %struct.pkt_attrib** %15, align 8
  %21 = load %struct._adapter*, %struct._adapter** %3, align 8
  %22 = getelementptr inbounds %struct._adapter, %struct._adapter* %21, i32 0, i32 1
  store %struct.security_priv* %22, %struct.security_priv** %16, align 8
  %23 = load %struct._adapter*, %struct._adapter** %3, align 8
  %24 = getelementptr inbounds %struct._adapter, %struct._adapter* %23, i32 0, i32 0
  store %struct.xmit_priv* %24, %struct.xmit_priv** %17, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to %struct.xmit_frame*
  %27 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %198

31:                                               ; preds = %2
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to %struct.xmit_frame*
  %34 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @TXDESC_OFFSET, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %11, align 8
  %39 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %40 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @_WEP40_, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %31
  %45 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %46 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @_WEP104_, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %198

50:                                               ; preds = %44, %31
  %51 = load %struct.security_priv*, %struct.security_priv** %16, align 8
  %52 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load %struct.security_priv*, %struct.security_priv** %16, align 8
  %55 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %194, %50
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %63 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %197

66:                                               ; preds = %60
  %67 = load i8*, i8** %11, align 8
  %68 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %69 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  store i8* %72, i8** %13, align 8
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @memcpy(i8* %73, i8* %74, i64 3)
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 3
  %77 = load %struct.security_priv*, %struct.security_priv** %16, align 8
  %78 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load %struct.security_priv*, %struct.security_priv** %16, align 8
  %81 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @memcpy(i8* %76, i8* %86, i64 %87)
  %89 = load i8*, i8** %11, align 8
  %90 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %91 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %96 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  store i8* %99, i8** %12, align 8
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %100, 1
  %102 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %103 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %145

106:                                              ; preds = %66
  %107 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %108 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %111 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = sub i64 %109, %113
  %115 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %116 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = sub i64 %114, %118
  %120 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %121 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = sub i64 %119, %122
  store i64 %123, i64* %8, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @getcrc32(i8* %124, i64 %125)
  %127 = call i32 @cpu_to_le32(i32 %126)
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %129 = bitcast i8* %128 to i32*
  store i32 %127, i32* %129, align 1
  %130 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %131 = load i64, i64* %9, align 8
  %132 = add i64 3, %131
  %133 = trunc i64 %132 to i32
  %134 = call i32 @arcfour_init(%struct.arc4context* %6, i8* %130, i32 %133)
  %135 = load i8*, i8** %12, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = load i64, i64* %8, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @arcfour_encrypt(%struct.arc4context* %6, i8* %135, i8* %136, i32 %138)
  %140 = load i8*, i8** %12, align 8
  %141 = load i64, i64* %8, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %144 = call i32 @arcfour_encrypt(%struct.arc4context* %6, i8* %142, i8* %143, i32 4)
  br label %193

145:                                              ; preds = %66
  %146 = load %struct.xmit_priv*, %struct.xmit_priv** %17, align 8
  %147 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %150 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = sub i64 %148, %152
  %154 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %155 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 %153, %157
  %159 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %160 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = sub i64 %158, %161
  store i64 %162, i64* %8, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = load i64, i64* %8, align 8
  %165 = call i32 @getcrc32(i8* %163, i64 %164)
  %166 = call i32 @cpu_to_le32(i32 %165)
  %167 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %168 = bitcast i8* %167 to i32*
  store i32 %166, i32* %168, align 1
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %170 = load i64, i64* %9, align 8
  %171 = add i64 3, %170
  %172 = trunc i64 %171 to i32
  %173 = call i32 @arcfour_init(%struct.arc4context* %6, i8* %169, i32 %172)
  %174 = load i8*, i8** %12, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = load i64, i64* %8, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 @arcfour_encrypt(%struct.arc4context* %6, i8* %174, i8* %175, i32 %177)
  %179 = load i8*, i8** %12, align 8
  %180 = load i64, i64* %8, align 8
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  %182 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %183 = call i32 @arcfour_encrypt(%struct.arc4context* %6, i8* %181, i8* %182, i32 4)
  %184 = load %struct.xmit_priv*, %struct.xmit_priv** %17, align 8
  %185 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i8*, i8** %11, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 %186
  store i8* %188, i8** %11, align 8
  %189 = load i8*, i8** %11, align 8
  %190 = ptrtoint i8* %189 to i32
  %191 = call i64 @RND4(i32 %190)
  %192 = inttoptr i64 %191 to i8*
  store i8* %192, i8** %11, align 8
  br label %193

193:                                              ; preds = %145, %106
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %7, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %7, align 8
  br label %60

197:                                              ; preds = %60
  br label %198

198:                                              ; preds = %30, %197, %44
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @getcrc32(i8*, i64) #1

declare dso_local i32 @arcfour_init(%struct.arc4context*, i8*, i32) #1

declare dso_local i32 @arcfour_encrypt(%struct.arc4context*, i8*, i8*, i32) #1

declare dso_local i64 @RND4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
