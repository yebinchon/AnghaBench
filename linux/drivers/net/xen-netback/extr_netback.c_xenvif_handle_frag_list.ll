; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_handle_frag_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_handle_frag_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.ubuf_info = type { i32 (%struct.ubuf_info*, i32)* }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.ubuf_info*, %struct.sk_buff* }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenvif_queue*, %struct.sk_buff*)* @xenvif_handle_frag_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenvif_handle_frag_list(%struct.xenvif_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenvif_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubuf_info*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @skb_headlen(%struct.sk_buff* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %12, align 8
  %27 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %28 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %29, align 4
  %32 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %33 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = call i32 @xenvif_fill_frags(%struct.xenvif_queue* %37, %struct.sk_buff* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %145, %2
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %148

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %70 = icmp sge i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call %struct.page* @alloc_page(i32 %73)
  store %struct.page* %74, %struct.page** %13, align 8
  %75 = load %struct.page*, %struct.page** %13, align 8
  %76 = icmp ne %struct.page* %75, null
  br i1 %76, label %101, label %77

77:                                               ; preds = %67
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, %80
  store i32 %84, i32* %82, align 4
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %95, %77
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %22, i64 %91
  %93 = call i32 @skb_frag_page(i32* %92)
  %94 = call i32 @put_page(i32 %93)
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %85

98:                                               ; preds = %85
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %199

101:                                              ; preds = %67
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = add i32 %102, %103
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %110, i32* %14, align 4
  br label %117

111:                                              ; preds = %101
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sub i32 %114, %115
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %111, %109
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.page*, %struct.page** %13, align 8
  %121 = call i32 @page_address(%struct.page* %120)
  %122 = load i32, i32* %14, align 4
  %123 = call i64 @skb_copy_bits(%struct.sk_buff* %118, i32 %119, i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = call i32 (...) @BUG()
  br label %127

127:                                              ; preds = %125, %117
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %6, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %22, i64 %132
  %134 = load %struct.page*, %struct.page** %13, align 8
  %135 = call i32 @__skb_frag_set_page(i32* %133, %struct.page* %134)
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %22, i64 %137
  %139 = call i32 @skb_frag_off_set(i32* %138, i32 0)
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %22, i64 %141
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @skb_frag_size_set(i32* %142, i32 %143)
  br label %145

145:                                              ; preds = %127
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %61

148:                                              ; preds = %61
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %160, %148
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %151)
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %149
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @skb_frag_unref(%struct.sk_buff* %157, i32 %158)
  br label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %149

163:                                              ; preds = %149
  %164 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %165 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %164)
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load %struct.ubuf_info*, %struct.ubuf_info** %166, align 8
  store %struct.ubuf_info* %167, %struct.ubuf_info** %11, align 8
  %168 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %169 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %168, i32 0, i32 0
  %170 = call i32 @atomic_inc(i32* %169)
  %171 = load %struct.ubuf_info*, %struct.ubuf_info** %11, align 8
  %172 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %171, i32 0, i32 0
  %173 = load i32 (%struct.ubuf_info*, i32)*, i32 (%struct.ubuf_info*, i32)** %172, align 8
  %174 = load %struct.ubuf_info*, %struct.ubuf_info** %11, align 8
  %175 = call i32 %173(%struct.ubuf_info* %174, i32 1)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %176)
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  store %struct.ubuf_info* null, %struct.ubuf_info** %178, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %180 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %179)
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 4
  %186 = trunc i64 %185 to i32
  %187 = call i32 @memcpy(i32 %182, i32* %22, i32 %186)
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %190 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %189)
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* @PAGE_SIZE, align 4
  %194 = mul i32 %192, %193
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = add i32 %197, %194
  store i32 %198, i32* %196, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %199

199:                                              ; preds = %163, %98
  %200 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @xenvif_fill_frags(%struct.xenvif_queue*, %struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__skb_frag_set_page(i32*, %struct.page*) #1

declare dso_local i32 @skb_frag_off_set(i32*, i32) #1

declare dso_local i32 @skb_frag_size_set(i32*, i32) #1

declare dso_local i32 @skb_frag_unref(%struct.sk_buff*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
