; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c__rtl92s_fill_h2c_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c__rtl92s_fill_h2c_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@H2C_TX_CMD_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff*, i64, i64, i64*, i64*, i64**, i64*)* @_rtl92s_fill_h2c_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_rtl92s_fill_h2c_cmd(%struct.sk_buff* %0, i64 %1, i64 %2, i64* %3, i64* %4, i64** %5, i64* %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64** %5, i64*** %13, align 8
  store i64* %6, i64** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %118, %7
  %22 = load i32, i32* @H2C_TX_CMD_HDR_LEN, align 4
  %23 = load i64*, i64** %12, align 8
  %24 = load i64, i64* %20, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @N_BYTE_ALIGMENT(i64 %26, i32 8)
  %28 = add nsw i32 %22, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* %16, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* %17, align 8
  %35 = add i64 %33, %34
  %36 = icmp ult i64 %30, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %123

38:                                               ; preds = %21
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load i64, i64* %16, align 8
  %41 = call i64* @skb_put(%struct.sk_buff* %39, i64 %40)
  store i64* %41, i64** %19, align 8
  %42 = load i64*, i64** %19, align 8
  %43 = load i64, i64* %15, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %17, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %16, align 8
  %48 = call i32 @memset(i64* %46, i32 0, i64 %47)
  %49 = load i64*, i64** %19, align 8
  %50 = load i64, i64* %15, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %17, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64*, i64** %12, align 8
  %55 = load i64, i64* %20, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @SET_BITS_TO_LE_4BYTE(i64* %53, i32 0, i32 16, i32 %58)
  %60 = load i64*, i64** %19, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %17, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %20, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @SET_BITS_TO_LE_4BYTE(i64* %64, i32 16, i32 8, i32 %69)
  %71 = load i64*, i64** %14, align 8
  %72 = load i64, i64* %71, align 8
  %73 = urem i64 %72, 128
  %74 = load i64*, i64** %14, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i64*, i64** %19, align 8
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %17, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64*, i64** %14, align 8
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @SET_BITS_TO_LE_4BYTE(i64* %79, i32 24, i32 7, i32 %82)
  %84 = load i64*, i64** %14, align 8
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load i64*, i64** %19, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %17, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i32, i32* @H2C_TX_CMD_HDR_LEN, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64**, i64*** %13, align 8
  %96 = load i64, i64* %20, align 8
  %97 = getelementptr inbounds i64*, i64** %95, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = load i64*, i64** %12, align 8
  %100 = load i64, i64* %20, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @memcpy(i64* %94, i64* %98, i64 %102)
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* %10, align 8
  %106 = sub i64 %105, 1
  %107 = icmp ult i64 %104, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %38
  %109 = load i64*, i64** %19, align 8
  %110 = load i64, i64* %18, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = call i32 @SET_BITS_TO_LE_4BYTE(i64* %111, i32 31, i32 1, i32 1)
  br label %113

113:                                              ; preds = %108, %38
  %114 = load i64, i64* %15, align 8
  store i64 %114, i64* %18, align 8
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %15, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %15, align 8
  br label %118

118:                                              ; preds = %113
  %119 = load i64, i64* %20, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %20, align 8
  %121 = load i64, i64* %10, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %21, label %123

123:                                              ; preds = %118, %37
  %124 = load i64, i64* %15, align 8
  ret i64 %124
}

declare dso_local i32 @N_BYTE_ALIGMENT(i64, i32) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @SET_BITS_TO_LE_4BYTE(i64*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
