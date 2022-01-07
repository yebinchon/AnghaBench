; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_insert_emcontent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_insert_emcontent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_tcb_desc = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_tcb_desc*, i32*)* @rtl8821ae_insert_emcontent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8821ae_insert_emcontent(%struct.rtl_tcb_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.rtl_tcb_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.rtl_tcb_desc* %0, %struct.rtl_tcb_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @memset(i32* %6, i32 0, i32 8)
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @set_earlymode_pktnum(i32* %8, i32 %11)
  %13 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %19 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %49

23:                                               ; preds = %2
  %24 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %25 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = srem i32 %29, 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = srem i32 %33, 4
  %35 = sub nsw i32 4, %34
  br label %37

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 0, %36 ]
  %39 = add nsw i32 %38, 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %43 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %37, %17
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @set_earlymode_len0(i32* %50, i32 %51)
  %53 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %54 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %55, 3
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %59 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  br label %89

63:                                               ; preds = %49
  %64 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %65 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = srem i32 %69, 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* %5, align 4
  %74 = srem i32 %73, 4
  %75 = sub nsw i32 4, %74
  br label %77

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i32 [ %75, %72 ], [ 0, %76 ]
  %79 = add nsw i32 %78, 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %83 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %77, %57
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @set_earlymode_len1(i32* %90, i32 %91)
  %93 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %94 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sle i32 %95, 5
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %99 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %5, align 4
  br label %129

103:                                              ; preds = %89
  %104 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %105 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = srem i32 %109, 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load i32, i32* %5, align 4
  %114 = srem i32 %113, 4
  %115 = sub nsw i32 4, %114
  br label %117

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %112
  %118 = phi i32 [ %115, %112 ], [ 0, %116 ]
  %119 = add nsw i32 %118, 4
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %5, align 4
  %122 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %123 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %117, %97
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = and i32 %131, 15
  %133 = call i32 @set_earlymode_len2_1(i32* %130, i32 %132)
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = ashr i32 %135, 4
  %137 = call i32 @set_earlymode_len2_2(i32* %134, i32 %136)
  %138 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %139 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sle i32 %140, 7
  br i1 %141, label %142, label %148

142:                                              ; preds = %129
  %143 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %144 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 6
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %5, align 4
  br label %174

148:                                              ; preds = %129
  %149 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %150 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 6
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = srem i32 %154, 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = load i32, i32* %5, align 4
  %159 = srem i32 %158, 4
  %160 = sub nsw i32 4, %159
  br label %162

161:                                              ; preds = %148
  br label %162

162:                                              ; preds = %161, %157
  %163 = phi i32 [ %160, %157 ], [ 0, %161 ]
  %164 = add nsw i32 %163, 4
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %5, align 4
  %167 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %168 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 7
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %162, %142
  %175 = load i32*, i32** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @set_earlymode_len3(i32* %175, i32 %176)
  %178 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %179 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp sle i32 %180, 9
  br i1 %181, label %182, label %188

182:                                              ; preds = %174
  %183 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %184 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 8
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %5, align 4
  br label %214

188:                                              ; preds = %174
  %189 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %190 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 8
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = srem i32 %194, 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %188
  %198 = load i32, i32* %5, align 4
  %199 = srem i32 %198, 4
  %200 = sub nsw i32 4, %199
  br label %202

201:                                              ; preds = %188
  br label %202

202:                                              ; preds = %201, %197
  %203 = phi i32 [ %200, %197 ], [ 0, %201 ]
  %204 = add nsw i32 %203, 4
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %5, align 4
  %207 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %208 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 9
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %202, %182
  %215 = load i32*, i32** %4, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @set_earlymode_len4(i32* %215, i32 %216)
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
