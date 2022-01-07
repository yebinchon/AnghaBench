; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_HDLC_Encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_HDLC_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32, i64 }

@PPP_INITFCS = common dso_local global i32 0, align 4
@PPP_FLAG = common dso_local global i8 0, align 1
@PPP_ESCAPE = common dso_local global i8 0, align 1
@PPP_TRANS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*)* @HDLC_Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @HDLC_Encode(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @PPP_INITFCS, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %29, %1
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @muststuff(i8 zeroext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %5, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 @crc_ccitt_byte(i32 %30, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  %38 = xor i32 %37, 65535
  store i32 %38, i32* %5, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %41, %42
  %44 = add i32 %43, 6
  %45 = zext i32 %44 to i64
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = call %struct.sk_buff* @dev_alloc_skb(i64 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %36
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %54)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %166

56:                                               ; preds = %36
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @skb_reset_mac_header(%struct.sk_buff* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @skb_reserve(%struct.sk_buff* %59, i64 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @skb_mac_header(%struct.sk_buff* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call i32 @skb_mac_header(%struct.sk_buff* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @memcpy(i32 %65, i32 %67, i64 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i8, i8* @PPP_FLAG, align 1
  %79 = call i32 @skb_put_u8(%struct.sk_buff* %77, i8 zeroext %78)
  br label %80

80:                                               ; preds = %117, %56
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 8
  %85 = icmp ne i32 %83, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %80
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @muststuff(i8 zeroext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load i8, i8* @PPP_ESCAPE, align 1
  %96 = call i32 @skb_put_u8(%struct.sk_buff* %94, i8 zeroext %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %99, align 8
  %102 = load i8, i8* %100, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @PPP_TRANS, align 1
  %105 = zext i8 %104 to i32
  %106 = xor i32 %103, %105
  %107 = trunc i32 %106 to i8
  %108 = call i32 @skb_put_u8(%struct.sk_buff* %97, i8 zeroext %107)
  br label %117

109:                                              ; preds = %86
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %112, align 8
  %115 = load i8, i8* %113, align 1
  %116 = call i32 @skb_put_u8(%struct.sk_buff* %110, i8 zeroext %115)
  br label %117

117:                                              ; preds = %109, %93
  br label %80

118:                                              ; preds = %80
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, 255
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %6, align 1
  %122 = load i8, i8* %6, align 1
  %123 = call i64 @muststuff(i8 zeroext %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %118
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = load i8, i8* @PPP_ESCAPE, align 1
  %128 = call i32 @skb_put_u8(%struct.sk_buff* %126, i8 zeroext %127)
  %129 = load i8, i8* @PPP_TRANS, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* %6, align 1
  %132 = zext i8 %131 to i32
  %133 = xor i32 %132, %130
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %6, align 1
  br label %135

135:                                              ; preds = %125, %118
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = load i8, i8* %6, align 1
  %138 = call i32 @skb_put_u8(%struct.sk_buff* %136, i8 zeroext %137)
  %139 = load i32, i32* %5, align 4
  %140 = ashr i32 %139, 8
  %141 = and i32 %140, 255
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %6, align 1
  %143 = load i8, i8* %6, align 1
  %144 = call i64 @muststuff(i8 zeroext %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %135
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = load i8, i8* @PPP_ESCAPE, align 1
  %149 = call i32 @skb_put_u8(%struct.sk_buff* %147, i8 zeroext %148)
  %150 = load i8, i8* @PPP_TRANS, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8, i8* %6, align 1
  %153 = zext i8 %152 to i32
  %154 = xor i32 %153, %151
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %6, align 1
  br label %156

156:                                              ; preds = %146, %135
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = load i8, i8* %6, align 1
  %159 = call i32 @skb_put_u8(%struct.sk_buff* %157, i8 zeroext %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = load i8, i8* @PPP_FLAG, align 1
  %162 = call i32 @skb_put_u8(%struct.sk_buff* %160, i8 zeroext %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %164 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %165, %struct.sk_buff** %2, align 8
  br label %166

166:                                              ; preds = %156, %53
  %167 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %167
}

declare dso_local i64 @muststuff(i8 zeroext) #1

declare dso_local i32 @crc_ccitt_byte(i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
