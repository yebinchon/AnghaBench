; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_i2c.c_st21nfca_hci_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_i2c.c_st21nfca_hci_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i32 }
%struct.st21nfca_i2c_phy = type { i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ST21NFCA_HCI_LLC_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"st21nfca_hci_i2c_write\00", align 1
@ST21NFCA_SOF_EOF = common dso_local global i32 0, align 4
@ST21NFCA_ESCAPE_BYTE_STUFFING = common dso_local global i32 0, align 4
@ST21NFCA_BYTE_STUFFING_MASK = common dso_local global i32 0, align 4
@wait_tab = common dso_local global i32* null, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*)* @st21nfca_hci_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_i2c_write(i8* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.st21nfca_i2c_phy*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 -1, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.st21nfca_i2c_phy*
  store %struct.st21nfca_i2c_phy* %15, %struct.st21nfca_i2c_phy** %9, align 8
  %16 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %9, align 8
  %17 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %16, i32 0, i32 2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load i32, i32* @ST21NFCA_HCI_LLC_MAX_SIZE, align 4
  %20 = mul nsw i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @I2C_DUMP_SKB(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %24)
  %26 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %9, align 8
  %27 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %9, align 8
  %32 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %176

35:                                               ; preds = %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @st21nfca_hci_add_len_crc(%struct.sk_buff* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @ST21NFCA_SOF_EOF, align 4
  %40 = call i32 @skb_put_u8(%struct.sk_buff* %38, i32 %39)
  %41 = load i32, i32* @ST21NFCA_SOF_EOF, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i64 @skb_push(%struct.sk_buff* %42, i32 1)
  %44 = inttoptr i64 %43 to i32*
  store i32 %41, i32* %44, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %49, i32* %50, align 16
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %109, %35
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %114

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ST21NFCA_SOF_EOF, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %78, label %68

68:                                               ; preds = %58
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ST21NFCA_ESCAPE_BYTE_STUFFING, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %68, %58
  %79 = load i32, i32* @ST21NFCA_ESCAPE_BYTE_STUFFING, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %23, i64 %81
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ST21NFCA_BYTE_STUFFING_MASK, align 4
  %93 = xor i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %23, i64 %95
  store i32 %93, i32* %96, align 4
  br label %108

97:                                               ; preds = %68
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %23, i64 %106
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %97, %78
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %51

114:                                              ; preds = %51
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %23, i64 %123
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  %127 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %9, align 8
  %128 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %127, i32 0, i32 1
  %129 = call i32 @mutex_lock(i32* %128)
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %154, %114
  %131 = load i32, i32* %7, align 4
  %132 = load i32*, i32** @wait_tab, align 8
  %133 = call i32 @ARRAY_SIZE(i32* %132)
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 0
  br label %138

138:                                              ; preds = %135, %130
  %139 = phi i1 [ false, %130 ], [ %137, %135 ]
  br i1 %139, label %140, label %157

140:                                              ; preds = %138
  %141 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @i2c_master_send(%struct.i2c_client* %141, i32* %23, i32 %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load i32*, i32** @wait_tab, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @msleep(i32 %151)
  br label %153

153:                                              ; preds = %146, %140
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %130

157:                                              ; preds = %138
  %158 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %9, align 8
  %159 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %158, i32 0, i32 1
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %6, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %157
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, i32* @EREMOTEIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %6, align 4
  br label %171

170:                                              ; preds = %163
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %170, %167
  br label %172

172:                                              ; preds = %171, %157
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = call i32 @st21nfca_hci_remove_len_crc(%struct.sk_buff* %173)
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %176

176:                                              ; preds = %172, %30
  %177 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @I2C_DUMP_SKB(i8*, %struct.sk_buff*) #2

declare dso_local i32 @st21nfca_hci_add_len_crc(%struct.sk_buff*) #2

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #2

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @st21nfca_hci_remove_len_crc(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
