; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_omap_ep_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_omap_ep_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.omap_ep* }
%struct.TYPE_6__ = type { i32 }
%struct.omap_ep = type { i32*, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@udc = common dso_local global %struct.TYPE_8__* null, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@UDC_EPN_RX_ISO = common dso_local global i32 0, align 4
@use_dma = common dso_local global i32 0, align 4
@UDC_EPN_RX_DB = common dso_local global i32 0, align 4
@pio_out_timer = common dso_local global i32 0, align 4
@UDC_EPN_RX_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s addr %02x rxtx %04x maxp %d%s buf %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@omap_ep_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i32)* @omap_ep_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_ep_setup(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.omap_ep*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.omap_ep*, %struct.omap_ep** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 15
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %17, i64 %20
  store %struct.omap_ep* %21, %struct.omap_ep** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @USB_DIR_IN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %28 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %27, i64 16
  store %struct.omap_ep* %28, %struct.omap_ep** %13, align 8
  br label %29

29:                                               ; preds = %26, %6
  %30 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %31 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = load i32, i32* %11, align 4
  switch i32 %39, label %47 [
    i32 8, label %40
    i32 16, label %41
    i32 32, label %42
    i32 64, label %43
    i32 128, label %44
    i32 256, label %45
    i32 512, label %46
  ]

40:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  br label %49

41:                                               ; preds = %38
  store i32 4096, i32* %14, align 4
  br label %49

42:                                               ; preds = %38
  store i32 8192, i32* %14, align 4
  br label %49

43:                                               ; preds = %38
  store i32 12288, i32* %14, align 4
  br label %49

44:                                               ; preds = %38
  store i32 16384, i32* %14, align 4
  br label %49

45:                                               ; preds = %38
  store i32 20480, i32* %14, align 4
  br label %49

46:                                               ; preds = %38
  store i32 24576, i32* %14, align 4
  br label %49

47:                                               ; preds = %38
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47, %46, %45, %44, %43, %42, %41, %40
  %50 = load i32, i32* @UDC_EPN_RX_ISO, align 4
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  store i32 1, i32* %12, align 4
  br label %83

53:                                               ; preds = %29
  %54 = load i32, i32* @use_dma, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i64 (...) @cpu_is_omap15xx()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %53
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %11, align 4
  switch i32 %61, label %66 [
    i32 8, label %62
    i32 16, label %63
    i32 32, label %64
    i32 64, label %65
  ]

62:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %68

63:                                               ; preds = %60
  store i32 4096, i32* %14, align 4
  br label %68

64:                                               ; preds = %60
  store i32 8192, i32* %14, align 4
  br label %68

65:                                               ; preds = %60
  store i32 12288, i32* %14, align 4
  br label %68

66:                                               ; preds = %60
  %67 = call i32 (...) @BUG()
  br label %68

68:                                               ; preds = %66, %65, %64, %63, %62
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @UDC_EPN_RX_DB, align 4
  %76 = load i32, i32* %14, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %74, %71, %68
  %79 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %80 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %79, i32 0, i32 9
  %81 = load i32, i32* @pio_out_timer, align 4
  %82 = call i32 @timer_setup(i32* %80, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %78, %49
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @UDC_EPN_RX_VALID, align 4
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, 7
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = lshr i32 %94, 3
  %96 = load i32, i32* %14, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %14, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %98, i32 %99, i32 %100, i32 %101, i8* %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @USB_DIR_IN, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %90
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, 15
  %116 = call i32 @UDC_EP_TX(i32 %115)
  %117 = call i32 @omap_writew(i32 %113, i32 %116)
  br label %123

118:                                              ; preds = %90
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @UDC_EP_RX(i32 %120)
  %122 = call i32 @omap_writew(i32 %119, i32 %121)
  br label %123

123:                                              ; preds = %118, %112
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %10, align 4
  %126 = add i32 %125, %124
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %129, %123
  %134 = load i32, i32* %10, align 4
  %135 = icmp ugt i32 %134, 2048
  %136 = zext i1 %135 to i32
  %137 = call i32 @BUG_ON(i32 %136)
  %138 = load i8*, i8** %7, align 8
  %139 = call i32 @strlen(i8* %138)
  %140 = sext i32 %139 to i64
  %141 = icmp uge i64 %140, 8
  %142 = zext i1 %141 to i32
  %143 = call i32 @BUG_ON(i32 %142)
  %144 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %145 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 @strlcpy(i32* %146, i8* %147, i32 8)
  %149 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %150 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %149, i32 0, i32 8
  %151 = call i32 @INIT_LIST_HEAD(i32* %150)
  %152 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %153 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %152, i32 0, i32 7
  %154 = call i32 @INIT_LIST_HEAD(i32* %153)
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %157 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %160 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %163 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc, align 8
  %165 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %166 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %165, i32 0, i32 6
  store %struct.TYPE_8__* %164, %struct.TYPE_8__** %166, align 8
  %167 = load i32, i32* %9, align 4
  switch i32 %167, label %196 [
    i32 130, label %168
    i32 128, label %181
    i32 131, label %186
    i32 129, label %191
  ]

168:                                              ; preds = %133
  %169 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %170 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  %173 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %174 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  store i32 1, i32* %176, align 4
  %177 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %178 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  store i32 1, i32* %180, align 8
  br label %196

181:                                              ; preds = %133
  %182 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %183 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 3
  store i32 1, i32* %185, align 4
  br label %196

186:                                              ; preds = %133
  %187 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %188 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 4
  store i32 1, i32* %190, align 8
  br label %196

191:                                              ; preds = %133
  %192 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %193 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 5
  store i32 1, i32* %195, align 4
  br label %196

196:                                              ; preds = %133, %191, %186, %181, %168
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @USB_DIR_IN, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %203 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  store i32 1, i32* %205, align 4
  br label %211

206:                                              ; preds = %196
  %207 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %208 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  store i32 1, i32* %210, align 8
  br label %211

211:                                              ; preds = %206, %201
  %212 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %213 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %216 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  store i32* %214, i32** %217, align 8
  %218 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %219 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  store i32* @omap_ep_ops, i32** %220, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %223 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 4
  %224 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %225 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %224, i32 0, i32 5
  %226 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %227 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_7__* %225, i32 %228)
  %230 = load %struct.omap_ep*, %struct.omap_ep** %13, align 8
  %231 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** @udc, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = call i32 @list_add_tail(i32* %232, i32* %235)
  %237 = load i32, i32* %10, align 4
  ret i32 %237
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @DBG(i8*, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @UDC_EP_TX(i32) #1

declare dso_local i32 @UDC_EP_RX(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i32*, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
