; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_init_queue_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_init_queue_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32, i32*, i32, i8**, i32, i32, i32 }

@TRXDMA_QUEUE_HIGH = common dso_local global i32 0, align 4
@TRXDMA_QUEUE_LOW = common dso_local global i32 0, align 4
@TRXDMA_QUEUE_NORMAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REG_TRXDMA_CTRL = common dso_local global i32 0, align 4
@TRXDMA_CTRL_VOQ_SHIFT = common dso_local global i32 0, align 4
@TRXDMA_CTRL_VIQ_SHIFT = common dso_local global i32 0, align 4
@TRXDMA_CTRL_BEQ_SHIFT = common dso_local global i32 0, align 4
@TRXDMA_CTRL_BKQ_SHIFT = common dso_local global i32 0, align 4
@TRXDMA_CTRL_MGQ_SHIFT = common dso_local global i32 0, align 4
@TRXDMA_CTRL_HIQ_SHIFT = common dso_local global i32 0, align 4
@TXDESC_QUEUE_VO = common dso_local global i64 0, align 8
@TXDESC_QUEUE_VI = common dso_local global i64 0, align 8
@TXDESC_QUEUE_BE = common dso_local global i64 0, align 8
@TXDESC_QUEUE_BK = common dso_local global i64 0, align 8
@TXDESC_QUEUE_BEACON = common dso_local global i64 0, align 8
@TXDESC_QUEUE_MGNT = common dso_local global i64 0, align 8
@TXDESC_QUEUE_HIGH = common dso_local global i64 0, align 8
@TXDESC_QUEUE_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8xxxu_init_queue_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_init_queue_priority(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %20 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %125 [
    i32 1, label %22
    i32 2, label %55
    i32 3, label %106
  ]

22:                                               ; preds = %1
  %23 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %24 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @TRXDMA_QUEUE_HIGH, align 4
  store i32 %28, i32* %4, align 4
  br label %48

29:                                               ; preds = %22
  %30 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %31 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @TRXDMA_QUEUE_LOW, align 4
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %29
  %37 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %38 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @TRXDMA_QUEUE_NORMAL, align 4
  store i32 %42, i32* %4, align 4
  br label %46

43:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %18, align 4
  br label %46

46:                                               ; preds = %43, %41
  br label %47

47:                                               ; preds = %46, %34
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %128

55:                                               ; preds = %1
  %56 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %57 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %62 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @TRXDMA_QUEUE_HIGH, align 4
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @TRXDMA_QUEUE_LOW, align 4
  store i32 %67, i32* %5, align 4
  br label %99

68:                                               ; preds = %60, %55
  %69 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %70 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %75 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @TRXDMA_QUEUE_NORMAL, align 4
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* @TRXDMA_QUEUE_LOW, align 4
  store i32 %80, i32* %5, align 4
  br label %98

81:                                               ; preds = %73, %68
  %82 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %83 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %88 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @TRXDMA_QUEUE_HIGH, align 4
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* @TRXDMA_QUEUE_NORMAL, align 4
  store i32 %93, i32* %5, align 4
  br label %97

94:                                               ; preds = %86, %81
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %18, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %78
  br label %99

99:                                               ; preds = %98, %65
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %128

106:                                              ; preds = %1
  %107 = load i32, i32* @TRXDMA_QUEUE_LOW, align 4
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* @TRXDMA_QUEUE_LOW, align 4
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @TRXDMA_QUEUE_NORMAL, align 4
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* @TRXDMA_QUEUE_HIGH, align 4
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* @TRXDMA_QUEUE_HIGH, align 4
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* @TRXDMA_QUEUE_HIGH, align 4
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = xor i32 %113, 3
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %7, align 4
  %116 = xor i32 %115, 3
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %8, align 4
  %118 = xor i32 %117, 3
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %9, align 4
  %120 = xor i32 %119, 3
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %10, align 4
  %122 = xor i32 %121, 3
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %10, align 4
  %124 = xor i32 %123, 3
  store i32 %124, i32* %17, align 4
  br label %128

125:                                              ; preds = %1
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %125, %106, %99, %48
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %290, label %131

131:                                              ; preds = %128
  %132 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %133 = load i32, i32* @REG_TRXDMA_CTRL, align 4
  %134 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %132, i32 %133)
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = and i32 %135, 7
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @TRXDMA_CTRL_VOQ_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @TRXDMA_CTRL_VIQ_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = or i32 %139, %142
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @TRXDMA_CTRL_BEQ_SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = or i32 %143, %146
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @TRXDMA_CTRL_BKQ_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = or i32 %147, %150
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @TRXDMA_CTRL_MGQ_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = or i32 %151, %154
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @TRXDMA_CTRL_HIQ_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = or i32 %155, %158
  %160 = load i32, i32* %3, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %3, align 4
  %162 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %163 = load i32, i32* @REG_TRXDMA_CTRL, align 4
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %162, i32 %163, i32 %164)
  %166 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %167 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %170 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @usb_sndbulkpipe(i32 %168, i32 %175)
  %177 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %178 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %177, i32 0, i32 3
  %179 = load i8**, i8*** %178, align 8
  %180 = load i64, i64* @TXDESC_QUEUE_VO, align 8
  %181 = getelementptr inbounds i8*, i8** %179, i64 %180
  store i8* %176, i8** %181, align 8
  %182 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %183 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %186 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @usb_sndbulkpipe(i32 %184, i32 %191)
  %193 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %194 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %193, i32 0, i32 3
  %195 = load i8**, i8*** %194, align 8
  %196 = load i64, i64* @TXDESC_QUEUE_VI, align 8
  %197 = getelementptr inbounds i8*, i8** %195, i64 %196
  store i8* %192, i8** %197, align 8
  %198 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %199 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %202 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @usb_sndbulkpipe(i32 %200, i32 %207)
  %209 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %210 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %209, i32 0, i32 3
  %211 = load i8**, i8*** %210, align 8
  %212 = load i64, i64* @TXDESC_QUEUE_BE, align 8
  %213 = getelementptr inbounds i8*, i8** %211, i64 %212
  store i8* %208, i8** %213, align 8
  %214 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %215 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %218 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i8* @usb_sndbulkpipe(i32 %216, i32 %223)
  %225 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %226 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %225, i32 0, i32 3
  %227 = load i8**, i8*** %226, align 8
  %228 = load i64, i64* @TXDESC_QUEUE_BK, align 8
  %229 = getelementptr inbounds i8*, i8** %227, i64 %228
  store i8* %224, i8** %229, align 8
  %230 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %231 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %234 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @usb_sndbulkpipe(i32 %232, i32 %237)
  %239 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %240 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %239, i32 0, i32 3
  %241 = load i8**, i8*** %240, align 8
  %242 = load i64, i64* @TXDESC_QUEUE_BEACON, align 8
  %243 = getelementptr inbounds i8*, i8** %241, i64 %242
  store i8* %238, i8** %243, align 8
  %244 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %245 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %248 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @usb_sndbulkpipe(i32 %246, i32 %253)
  %255 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %256 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %255, i32 0, i32 3
  %257 = load i8**, i8*** %256, align 8
  %258 = load i64, i64* @TXDESC_QUEUE_MGNT, align 8
  %259 = getelementptr inbounds i8*, i8** %257, i64 %258
  store i8* %254, i8** %259, align 8
  %260 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %261 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %264 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %12, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = call i8* @usb_sndbulkpipe(i32 %262, i32 %269)
  %271 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %272 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %271, i32 0, i32 3
  %273 = load i8**, i8*** %272, align 8
  %274 = load i64, i64* @TXDESC_QUEUE_HIGH, align 8
  %275 = getelementptr inbounds i8*, i8** %273, i64 %274
  store i8* %270, i8** %275, align 8
  %276 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %277 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %280 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = call i8* @usb_sndbulkpipe(i32 %278, i32 %283)
  %285 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %286 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %285, i32 0, i32 3
  %287 = load i8**, i8*** %286, align 8
  %288 = load i64, i64* @TXDESC_QUEUE_CMD, align 8
  %289 = getelementptr inbounds i8*, i8** %287, i64 %288
  store i8* %284, i8** %289, align 8
  br label %290

290:                                              ; preds = %131, %128
  %291 = load i32, i32* %18, align 4
  ret i32 %291
}

declare dso_local i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i8* @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
