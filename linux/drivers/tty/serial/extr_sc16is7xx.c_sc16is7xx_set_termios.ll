; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32, i32* }
%struct.sc16is7xx_port = type { i32, i32 }

@CMSPAR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_WORD_LEN_5 = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_WORD_LEN_6 = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_WORD_LEN_7 = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_WORD_LEN_8 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_PARITY_BIT = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_EVENPARITY_BIT = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_STOPLEN_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_LSR_OE_BIT = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@SC16IS7XX_LSR_PE_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_LSR_FE_BIT = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@SC16IS7XX_LSR_BI_BIT = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@SC16IS7XX_LSR_BRK_ERROR_MASK = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_CONF_MODE_B = common dso_local global i32 0, align 4
@SC16IS7XX_XON1_REG = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@SC16IS7XX_XOFF1_REG = common dso_local global i32 0, align 4
@VSTOP = common dso_local global i64 0, align 8
@CRTSCTS = common dso_local global i32 0, align 4
@SC16IS7XX_EFR_AUTOCTS_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_EFR_AUTORTS_BIT = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@SC16IS7XX_EFR_SWFLOW3_BIT = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@SC16IS7XX_EFR_SWFLOW1_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_EFR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @sc16is7xx_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc16is7xx_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.sc16is7xx_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sc16is7xx_port* @dev_get_drvdata(i32 %13)
  store %struct.sc16is7xx_port* %14, %struct.sc16is7xx_port** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @CMSPAR, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %18 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %22 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CSIZE, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %34 [
    i32 131, label %26
    i32 130, label %28
    i32 129, label %30
    i32 128, label %32
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* @SC16IS7XX_LCR_WORD_LEN_5, align 4
  store i32 %27, i32* %8, align 4
  br label %46

28:                                               ; preds = %3
  %29 = load i32, i32* @SC16IS7XX_LCR_WORD_LEN_6, align 4
  store i32 %29, i32* %8, align 4
  br label %46

30:                                               ; preds = %3
  %31 = load i32, i32* @SC16IS7XX_LCR_WORD_LEN_7, align 4
  store i32 %31, i32* %8, align 4
  br label %46

32:                                               ; preds = %3
  %33 = load i32, i32* @SC16IS7XX_LCR_WORD_LEN_8, align 4
  store i32 %33, i32* %8, align 4
  br label %46

34:                                               ; preds = %3
  %35 = load i32, i32* @SC16IS7XX_LCR_WORD_LEN_8, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @CSIZE, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %39 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %43 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, 128
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %34, %32, %30, %28, %26
  %47 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %48 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PARENB, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load i32, i32* @SC16IS7XX_LCR_PARITY_BIT, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %58 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PARODD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @SC16IS7XX_LCR_EVENPARITY_BIT, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %53
  br label %68

68:                                               ; preds = %67, %46
  %69 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %70 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CSTOPB, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @SC16IS7XX_LCR_STOPLEN_BIT, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %68
  %80 = load i32, i32* @SC16IS7XX_LSR_OE_BIT, align 4
  %81 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %84 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @INPCK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load i32, i32* @SC16IS7XX_LSR_PE_BIT, align 4
  %91 = load i32, i32* @SC16IS7XX_LSR_FE_BIT, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %89, %79
  %98 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %99 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @BRKINT, align 4
  %102 = load i32, i32* @PARMRK, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load i32, i32* @SC16IS7XX_LSR_BI_BIT, align 4
  %108 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %97
  %113 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %116 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IGNBRK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %112
  %122 = load i32, i32* @SC16IS7XX_LSR_BI_BIT, align 4
  %123 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %124 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %112
  %128 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %129 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CREAD, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* @SC16IS7XX_LSR_BRK_ERROR_MASK, align 4
  %136 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %137 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %127
  %141 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %7, align 8
  %142 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %141, i32 0, i32 0
  %143 = call i32 @mutex_lock(i32* %142)
  %144 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %145 = load i32, i32* @SC16IS7XX_LCR_REG, align 4
  %146 = load i32, i32* @SC16IS7XX_LCR_CONF_MODE_B, align 4
  %147 = call i32 @sc16is7xx_port_write(%struct.uart_port* %144, i32 %145, i32 %146)
  %148 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %7, align 8
  %149 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @regcache_cache_bypass(i32 %150, i32 1)
  %152 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %153 = load i32, i32* @SC16IS7XX_XON1_REG, align 4
  %154 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %155 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @VSTART, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @sc16is7xx_port_write(%struct.uart_port* %152, i32 %153, i32 %159)
  %161 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %162 = load i32, i32* @SC16IS7XX_XOFF1_REG, align 4
  %163 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %164 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @VSTOP, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @sc16is7xx_port_write(%struct.uart_port* %161, i32 %162, i32 %168)
  %170 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %171 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @CRTSCTS, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %140
  %177 = load i32, i32* @SC16IS7XX_EFR_AUTOCTS_BIT, align 4
  %178 = load i32, i32* @SC16IS7XX_EFR_AUTORTS_BIT, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %9, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %176, %140
  %183 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %184 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @IXON, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = load i32, i32* @SC16IS7XX_EFR_SWFLOW3_BIT, align 4
  %191 = load i32, i32* %9, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %9, align 4
  br label %193

193:                                              ; preds = %189, %182
  %194 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %195 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @IXOFF, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load i32, i32* @SC16IS7XX_EFR_SWFLOW1_BIT, align 4
  %202 = load i32, i32* %9, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %9, align 4
  br label %204

204:                                              ; preds = %200, %193
  %205 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %206 = load i32, i32* @SC16IS7XX_EFR_REG, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @sc16is7xx_port_write(%struct.uart_port* %205, i32 %206, i32 %207)
  %209 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %7, align 8
  %210 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @regcache_cache_bypass(i32 %211, i32 0)
  %213 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %214 = load i32, i32* @SC16IS7XX_LCR_REG, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @sc16is7xx_port_write(%struct.uart_port* %213, i32 %214, i32 %215)
  %217 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %7, align 8
  %218 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %217, i32 0, i32 0
  %219 = call i32 @mutex_unlock(i32* %218)
  %220 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %221 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %222 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %223 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %224 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = sdiv i32 %225, 16
  %227 = sdiv i32 %226, 4
  %228 = sdiv i32 %227, 65535
  %229 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %230 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = sdiv i32 %231, 16
  %233 = call i32 @uart_get_baud_rate(%struct.uart_port* %220, %struct.ktermios* %221, %struct.ktermios* %222, i32 %228, i32 %232)
  store i32 %233, i32* %10, align 4
  %234 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @sc16is7xx_set_baud(%struct.uart_port* %234, i32 %235)
  store i32 %236, i32* %10, align 4
  %237 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %238 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %239 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @uart_update_timeout(%struct.uart_port* %237, i32 %240, i32 %241)
  ret void
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sc16is7xx_port_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @sc16is7xx_set_baud(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
