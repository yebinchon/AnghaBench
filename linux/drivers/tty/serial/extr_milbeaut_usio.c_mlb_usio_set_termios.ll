; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ktermios = type { i32, i32 }

@MLB_USIO_SMR_SOE = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@MLB_USIO_ESCR_L_5BIT = common dso_local global i32 0, align 4
@MLB_USIO_ESCR_L_6BIT = common dso_local global i32 0, align 4
@MLB_USIO_ESCR_L_7BIT = common dso_local global i32 0, align 4
@MLB_USIO_ESCR_L_8BIT = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@MLB_USIO_SMR_SBL = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@MLB_USIO_ESCR_PEN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@MLB_USIO_ESCR_P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"auto-flow-control\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@MLB_USIO_ESCR_FLWEN = common dso_local global i32 0, align 4
@MLB_USIO_SSR_ORE = common dso_local global i32 0, align 4
@MLB_USIO_SSR_RDRF = common dso_local global i32 0, align 4
@MLB_USIO_SSR_TDRE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@MLB_USIO_SSR_FRE = common dso_local global i32 0, align 4
@MLB_USIO_SSR_PE = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@MLB_USIO_REG_SCR = common dso_local global i64 0, align 8
@MLB_USIO_SCR_UPCL = common dso_local global i32 0, align 4
@MLB_USIO_SSR_REC = common dso_local global i32 0, align 4
@MLB_USIO_REG_SSR = common dso_local global i64 0, align 8
@MLB_USIO_REG_FCR = common dso_local global i64 0, align 8
@MLB_USIO_REG_SMR = common dso_local global i64 0, align 8
@MLB_USIO_REG_ESCR = common dso_local global i64 0, align 8
@MLB_USIO_REG_BGR = common dso_local global i64 0, align 8
@MLB_USIO_FCR_FCL1 = common dso_local global i64 0, align 8
@MLB_USIO_FCR_FCL2 = common dso_local global i64 0, align 8
@MLB_USIO_FCR_FE1 = common dso_local global i64 0, align 8
@MLB_USIO_FCR_FE2 = common dso_local global i64 0, align 8
@MLB_USIO_FCR_FRIIE = common dso_local global i64 0, align 8
@MLB_USIO_REG_FBYTE = common dso_local global i64 0, align 8
@MLB_USIO_SCR_RIE = common dso_local global i32 0, align 4
@MLB_USIO_SCR_RXE = common dso_local global i32 0, align 4
@MLB_USIO_SCR_TBIE = common dso_local global i32 0, align 4
@MLB_USIO_SCR_TXE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @mlb_usio_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlb_usio_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load i32, i32* @MLB_USIO_SMR_SOE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %14 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CSIZE, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %25 [
    i32 131, label %18
    i32 130, label %20
    i32 129, label %22
    i32 128, label %24
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @MLB_USIO_ESCR_L_5BIT, align 4
  store i32 %19, i32* %7, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @MLB_USIO_ESCR_L_6BIT, align 4
  store i32 %21, i32* %7, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load i32, i32* @MLB_USIO_ESCR_L_7BIT, align 4
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %3, %24
  %26 = load i32, i32* @MLB_USIO_ESCR_L_8BIT, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %22, %20, %18
  %28 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %29 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CSTOPB, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @MLB_USIO_SMR_SBL, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %40 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PARENB, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  %46 = load i32, i32* @MLB_USIO_ESCR_PEN, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %50 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PARODD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @MLB_USIO_ESCR_P, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %45
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 5
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @of_property_read_bool(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %60
  %69 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %70 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CRTSCTS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68, %60
  %76 = load i32, i32* @MLB_USIO_ESCR_FLWEN, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %81 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %82 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %83 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @uart_get_baud_rate(%struct.uart_port* %80, %struct.ktermios* %81, %struct.ktermios* %82, i32 0, i64 %85)
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp ugt i64 %87, 1
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = udiv i64 %92, %93
  %95 = sub i64 %94, 1
  store i64 %95, i64* %11, align 8
  br label %97

96:                                               ; preds = %79
  store i64 0, i64* %11, align 8
  br label %97

97:                                               ; preds = %96, %89
  %98 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 3
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %103 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %104 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @uart_update_timeout(%struct.uart_port* %102, i32 %105, i64 %106)
  %108 = load i32, i32* @MLB_USIO_SSR_ORE, align 4
  %109 = load i32, i32* @MLB_USIO_SSR_RDRF, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @MLB_USIO_SSR_TDRE, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %116 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @INPCK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %97
  %122 = load i32, i32* @MLB_USIO_SSR_FRE, align 4
  %123 = load i32, i32* @MLB_USIO_SSR_PE, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %126 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %121, %97
  %130 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %131 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %130, i32 0, i32 2
  store i32 0, i32* %131, align 4
  %132 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %133 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IGNPAR, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %129
  %139 = load i32, i32* @MLB_USIO_SSR_FRE, align 4
  %140 = load i32, i32* @MLB_USIO_SSR_PE, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %143 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %138, %129
  %147 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %148 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @IGNBRK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %146
  %154 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %155 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IGNPAR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load i32, i32* @MLB_USIO_SSR_ORE, align 4
  %162 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %163 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %153, %146
  %167 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %168 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @CREAD, align 4
  %171 = and i32 %169, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load i32, i32* @MLB_USIO_SSR_RDRF, align 4
  %175 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %176 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %173, %166
  %180 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %181 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writeb(i32 0, i64 %184)
  %186 = load i32, i32* @MLB_USIO_SCR_UPCL, align 4
  %187 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %188 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writeb(i32 %186, i64 %191)
  %193 = load i32, i32* @MLB_USIO_SSR_REC, align 4
  %194 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %195 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @MLB_USIO_REG_SSR, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @writeb(i32 %193, i64 %198)
  %200 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %201 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @writew(i64 0, i64 %204)
  %206 = load i32, i32* %8, align 4
  %207 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %208 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @MLB_USIO_REG_SMR, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @writeb(i32 %206, i64 %211)
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %215 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @MLB_USIO_REG_ESCR, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @writeb(i32 %213, i64 %218)
  %220 = load i64, i64* %11, align 8
  %221 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %222 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @MLB_USIO_REG_BGR, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writew(i64 %220, i64 %225)
  %227 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %228 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i32 @writew(i64 0, i64 %231)
  %233 = load i64, i64* @MLB_USIO_FCR_FCL1, align 8
  %234 = load i64, i64* @MLB_USIO_FCR_FCL2, align 8
  %235 = or i64 %233, %234
  %236 = load i64, i64* @MLB_USIO_FCR_FE1, align 8
  %237 = or i64 %235, %236
  %238 = load i64, i64* @MLB_USIO_FCR_FE2, align 8
  %239 = or i64 %237, %238
  %240 = load i64, i64* @MLB_USIO_FCR_FRIIE, align 8
  %241 = or i64 %239, %240
  %242 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %243 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @writew(i64 %241, i64 %246)
  %248 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %249 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @MLB_USIO_REG_FBYTE, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 @writew(i64 0, i64 %252)
  %254 = call i64 @BIT(i32 12)
  %255 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %256 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @MLB_USIO_REG_FBYTE, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @writew(i64 %254, i64 %259)
  %261 = load i32, i32* @MLB_USIO_SCR_RIE, align 4
  %262 = load i32, i32* @MLB_USIO_SCR_RXE, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @MLB_USIO_SCR_TBIE, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* @MLB_USIO_SCR_TXE, align 4
  %267 = or i32 %265, %266
  %268 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %269 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i32 @writeb(i32 %267, i64 %272)
  %274 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %275 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %274, i32 0, i32 3
  %276 = load i64, i64* %9, align 8
  %277 = call i32 @spin_unlock_irqrestore(i32* %275, i64 %276)
  ret void
}

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i64 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @writew(i64, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
