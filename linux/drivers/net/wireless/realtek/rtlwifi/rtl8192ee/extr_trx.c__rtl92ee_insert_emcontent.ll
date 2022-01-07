; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c__rtl92ee_insert_emcontent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c__rtl92ee_insert_emcontent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_tcb_desc = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_tcb_desc*, i32*)* @_rtl92ee_insert_emcontent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_insert_emcontent(%struct.rtl_tcb_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.rtl_tcb_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.rtl_tcb_desc* %0, %struct.rtl_tcb_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  store i32* %7, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @memset(i32* %8, i32 0, i32 8)
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @set_earlymode_pktnum(i32* %10, i32 %13)
  %15 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %16 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  br label %51

25:                                               ; preds = %2
  %26 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %27 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = srem i32 %31, 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = srem i32 %35, 4
  %37 = sub nsw i32 4, %36
  br label %39

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 0, %38 ]
  %41 = add nsw i32 %40, 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %45 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %39, %19
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @set_earlymode_len0(i32* %52, i32 %53)
  %55 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %56 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sle i32 %57, 3
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %61 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  br label %91

65:                                               ; preds = %51
  %66 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %67 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = srem i32 %71, 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* %5, align 4
  %76 = srem i32 %75, 4
  %77 = sub nsw i32 4, %76
  br label %79

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i32 [ %77, %74 ], [ 0, %78 ]
  %81 = add nsw i32 %80, 4
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %85 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %79, %59
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @set_earlymode_len1(i32* %92, i32 %93)
  %95 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %96 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sle i32 %97, 5
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %101 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %5, align 4
  br label %131

105:                                              ; preds = %91
  %106 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %107 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = srem i32 %111, 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load i32, i32* %5, align 4
  %116 = srem i32 %115, 4
  %117 = sub nsw i32 4, %116
  br label %119

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi i32 [ %117, %114 ], [ 0, %118 ]
  %121 = add nsw i32 %120, 4
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %125 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 5
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %119, %99
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, 15
  %135 = call i32 @set_earlymode_len2_1(i32* %132, i32 %134)
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %5, align 4
  %138 = ashr i32 %137, 4
  %139 = call i32 @set_earlymode_len2_2(i32* %136, i32 %138)
  %140 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %141 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp sle i32 %142, 7
  br i1 %143, label %144, label %150

144:                                              ; preds = %131
  %145 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %146 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 6
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %5, align 4
  br label %176

150:                                              ; preds = %131
  %151 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %152 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 6
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = srem i32 %156, 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %150
  %160 = load i32, i32* %5, align 4
  %161 = srem i32 %160, 4
  %162 = sub nsw i32 4, %161
  br label %164

163:                                              ; preds = %150
  br label %164

164:                                              ; preds = %163, %159
  %165 = phi i32 [ %162, %159 ], [ 0, %163 ]
  %166 = add nsw i32 %165, 4
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %5, align 4
  %169 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %170 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 7
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %164, %144
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @set_earlymode_len3(i32* %177, i32 %178)
  %180 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %181 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp sle i32 %182, 9
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  %185 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %186 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 8
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %5, align 4
  br label %216

190:                                              ; preds = %176
  %191 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %192 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 8
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = srem i32 %196, 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %190
  %200 = load i32, i32* %5, align 4
  %201 = srem i32 %200, 4
  %202 = sub nsw i32 4, %201
  br label %204

203:                                              ; preds = %190
  br label %204

204:                                              ; preds = %203, %199
  %205 = phi i32 [ %202, %199 ], [ 0, %203 ]
  %206 = add nsw i32 %205, 4
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %5, align 4
  %209 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %210 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 9
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %204, %184
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* %5, align 4
  %219 = call i32 @set_earlymode_len4(i32* %217, i32 %218)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_earlymode_pktnum(i32*, i32) #1

declare dso_local i32 @set_earlymode_len0(i32*, i32) #1

declare dso_local i32 @set_earlymode_len1(i32*, i32) #1

declare dso_local i32 @set_earlymode_len2_1(i32*, i32) #1

declare dso_local i32 @set_earlymode_len2_2(i32*, i32) #1

declare dso_local i32 @set_earlymode_len3(i32*, i32) #1

declare dso_local i32 @set_earlymode_len4(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
