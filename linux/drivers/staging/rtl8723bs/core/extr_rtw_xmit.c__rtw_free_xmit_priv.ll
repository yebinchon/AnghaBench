; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c__rtw_free_xmit_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c__rtw_free_xmit_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_priv = type { i32, %struct.xmit_buf*, i64, i64, i64, i64, i64, i64, i64, i64, %struct.adapter* }
%struct.xmit_buf = type { i32 }
%struct.adapter = type { i32 }
%struct.xmit_frame = type { i32 }

@NR_XMITFRAME = common dso_local global i32 0, align 4
@NR_XMITBUFF = common dso_local global i32 0, align 4
@MAX_XMITBUF_SZ = common dso_local global i64 0, align 8
@XMITBUF_ALIGN_SZ = common dso_local global i64 0, align 8
@NR_XMIT_EXTBUFF = common dso_local global i32 0, align 4
@MAX_XMIT_EXTBUF_SZ = common dso_local global i64 0, align 8
@CMDBUF_MAX = common dso_local global i32 0, align 4
@MAX_CMDBUF_SZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rtw_free_xmit_priv(%struct.xmit_priv* %0) #0 {
  %2 = alloca %struct.xmit_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca %struct.xmit_buf*, align 8
  store %struct.xmit_priv* %0, %struct.xmit_priv** %2, align 8
  %7 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %8 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %7, i32 0, i32 10
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %4, align 8
  %10 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %11 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.xmit_frame*
  store %struct.xmit_frame* %13, %struct.xmit_frame** %5, align 8
  %14 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %15 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.xmit_buf*
  store %struct.xmit_buf* %17, %struct.xmit_buf** %6, align 8
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = call i32 @rtw_hal_free_xmit_priv(%struct.adapter* %18)
  %20 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %21 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %170

25:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @NR_XMITFRAME, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %33 = call i32 @rtw_os_xmit_complete(%struct.adapter* %31, %struct.xmit_frame* %32)
  %34 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %35 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %34, i32 1
  store %struct.xmit_frame* %35, %struct.xmit_frame** %5, align 8
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %26

39:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @NR_XMITBUFF, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %47 = load i64, i64* @MAX_XMITBUF_SZ, align 8
  %48 = load i64, i64* @XMITBUF_ALIGN_SZ, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @rtw_os_xmit_resource_free(%struct.adapter* %45, %struct.xmit_buf* %46, i64 %49, i32 1)
  %51 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %52 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %51, i32 1
  store %struct.xmit_buf* %52, %struct.xmit_buf** %6, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %40

56:                                               ; preds = %40
  %57 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %58 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %63 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @vfree(i64 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %68 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %73 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @vfree(i64 %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %78 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.xmit_frame*
  store %struct.xmit_frame* %80, %struct.xmit_frame** %5, align 8
  %81 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %82 = icmp ne %struct.xmit_frame* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %94, %83
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @NR_XMIT_EXTBUFF, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load %struct.adapter*, %struct.adapter** %4, align 8
  %90 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %91 = call i32 @rtw_os_xmit_complete(%struct.adapter* %89, %struct.xmit_frame* %90)
  %92 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %93 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %92, i32 1
  store %struct.xmit_frame* %93, %struct.xmit_frame** %5, align 8
  br label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %84

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %100 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %105 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @vfree(i64 %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %110 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.xmit_buf*
  store %struct.xmit_buf* %112, %struct.xmit_buf** %6, align 8
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %126, %108
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @NR_XMIT_EXTBUFF, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load %struct.adapter*, %struct.adapter** %4, align 8
  %119 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %120 = load i64, i64* @MAX_XMIT_EXTBUF_SZ, align 8
  %121 = load i64, i64* @XMITBUF_ALIGN_SZ, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @rtw_os_xmit_resource_free(%struct.adapter* %118, %struct.xmit_buf* %119, i64 %122, i32 1)
  %124 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %125 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %124, i32 1
  store %struct.xmit_buf* %125, %struct.xmit_buf** %6, align 8
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %113

129:                                              ; preds = %113
  %130 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %131 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %136 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @vfree(i64 %137)
  br label %139

139:                                              ; preds = %134, %129
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %161, %139
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @CMDBUF_MAX, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %164

144:                                              ; preds = %140
  %145 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %146 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %145, i32 0, i32 1
  %147 = load %struct.xmit_buf*, %struct.xmit_buf** %146, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %147, i64 %149
  store %struct.xmit_buf* %150, %struct.xmit_buf** %6, align 8
  %151 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %152 = icmp ne %struct.xmit_buf* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %144
  %154 = load %struct.adapter*, %struct.adapter** %4, align 8
  %155 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %156 = load i64, i64* @MAX_CMDBUF_SZ, align 8
  %157 = load i64, i64* @XMITBUF_ALIGN_SZ, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @rtw_os_xmit_resource_free(%struct.adapter* %154, %struct.xmit_buf* %155, i64 %158, i32 1)
  br label %160

160:                                              ; preds = %153, %144
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %3, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %3, align 4
  br label %140

164:                                              ; preds = %140
  %165 = load %struct.adapter*, %struct.adapter** %4, align 8
  %166 = call i32 @rtw_free_hwxmits(%struct.adapter* %165)
  %167 = load %struct.xmit_priv*, %struct.xmit_priv** %2, align 8
  %168 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %167, i32 0, i32 0
  %169 = call i32 @mutex_destroy(i32* %168)
  br label %170

170:                                              ; preds = %164, %24
  ret void
}

declare dso_local i32 @rtw_hal_free_xmit_priv(%struct.adapter*) #1

declare dso_local i32 @rtw_os_xmit_complete(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @rtw_os_xmit_resource_free(%struct.adapter*, %struct.xmit_buf*, i64, i32) #1

declare dso_local i32 @vfree(i64) #1

declare dso_local i32 @rtw_free_hwxmits(%struct.adapter*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
