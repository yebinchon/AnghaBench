; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.xmit_priv }
%struct.xmit_priv = type { i64 }
%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.pkt_attrib = type { i64, i64, i64, i64, i64, i64, i32*, %struct.sta_info* }
%struct.xmit_frame = type { i32*, %struct.pkt_attrib }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@TXDESC_OFFSET = common dso_local global i32 0, align 4
@_AES_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_aes_encrypt(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca %struct.pkt_attrib*, align 8
  %12 = alloca %struct.xmit_priv*, align 8
  %13 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.xmit_frame*
  %16 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %15, i32 0, i32 1
  store %struct.pkt_attrib* %16, %struct.pkt_attrib** %11, align 8
  %17 = load %struct._adapter*, %struct._adapter** %4, align 8
  %18 = getelementptr inbounds %struct._adapter, %struct._adapter* %17, i32 0, i32 1
  store %struct.xmit_priv* %18, %struct.xmit_priv** %12, align 8
  %19 = load i32, i32* @_SUCCESS, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to %struct.xmit_frame*
  %22 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @_FAIL, align 4
  store i32 %26, i32* %3, align 4
  br label %144

27:                                               ; preds = %2
  %28 = load i32*, i32** %5, align 8
  %29 = bitcast i32* %28 to %struct.xmit_frame*
  %30 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @TXDESC_OFFSET, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %8, align 8
  %35 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %36 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @_AES_, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %142

40:                                               ; preds = %27
  %41 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %42 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %41, i32 0, i32 7
  %43 = load %struct.sta_info*, %struct.sta_info** %42, align 8
  %44 = icmp ne %struct.sta_info* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %47 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %46, i32 0, i32 7
  %48 = load %struct.sta_info*, %struct.sta_info** %47, align 8
  store %struct.sta_info* %48, %struct.sta_info** %10, align 8
  br label %57

49:                                               ; preds = %40
  %50 = load %struct._adapter*, %struct._adapter** %4, align 8
  %51 = getelementptr inbounds %struct._adapter, %struct._adapter* %50, i32 0, i32 0
  %52 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %53 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call %struct.sta_info* @r8712_get_stainfo(i32* %51, i32* %55)
  store %struct.sta_info* %56, %struct.sta_info** %10, align 8
  br label %57

57:                                               ; preds = %49, %45
  %58 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %59 = icmp ne %struct.sta_info* %58, null
  br i1 %59, label %60, label %139

60:                                               ; preds = %57
  %61 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32* %65, i32** %9, align 8
  store i64 0, i64* %6, align 8
  br label %66

66:                                               ; preds = %135, %60
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %69 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %138

72:                                               ; preds = %66
  %73 = load i64, i64* %6, align 8
  %74 = add nsw i64 %73, 1
  %75 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %76 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %72
  %80 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %81 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %84 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %88 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %92 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  store i64 %94, i64* %7, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %97 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @aes_cipher(i32* %95, i64 %98, i32* %99, i64 %100)
  br label %134

102:                                              ; preds = %72
  %103 = load %struct.xmit_priv*, %struct.xmit_priv** %12, align 8
  %104 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %107 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %111 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %115 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  store i64 %117, i64* %7, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load %struct.pkt_attrib*, %struct.pkt_attrib** %11, align 8
  %120 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load i64, i64* %7, align 8
  %124 = call i32 @aes_cipher(i32* %118, i64 %121, i32* %122, i64 %123)
  %125 = load %struct.xmit_priv*, %struct.xmit_priv** %12, align 8
  %126 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 %127
  store i32* %129, i32** %8, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = ptrtoint i32* %130 to i32
  %132 = call i64 @RND4(i32 %131)
  %133 = inttoptr i64 %132 to i32*
  store i32* %133, i32** %8, align 8
  br label %134

134:                                              ; preds = %102, %79
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %6, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %6, align 8
  br label %66

138:                                              ; preds = %66
  br label %141

139:                                              ; preds = %57
  %140 = load i32, i32* @_FAIL, align 4
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %139, %138
  br label %142

142:                                              ; preds = %141, %27
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %25
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.sta_info* @r8712_get_stainfo(i32*, i32*) #1

declare dso_local i32 @aes_cipher(i32*, i64, i32*, i64) #1

declare dso_local i64 @RND4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
