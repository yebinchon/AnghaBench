; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_one_round.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_one_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i32, %struct.usb_request*, i32*, i32*, i32, i64, i64 }
%struct.usb_request = type { i32 }

@IUDMA_EP0_RXCHAN = common dso_local global i64 0, align 8
@BCM63XX_MAX_CTRL_PKT = common dso_local global i32 0, align 4
@IUDMA_EP0_TXCHAN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm63xx_udc*)* @bcm63xx_ep0_one_round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_ep0_one_round(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm63xx_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_request*, align 8
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %3, align 8
  %7 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %8 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %11 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %16 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i1 [ true, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %23 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %163 [
    i32 129, label %25
    i32 136, label %30
    i32 134, label %33
    i32 135, label %51
    i32 131, label %76
    i32 132, label %94
    i32 130, label %122
    i32 133, label %145
    i32 128, label %162
  ]

25:                                               ; preds = %19
  %26 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %27 = load i64, i64* @IUDMA_EP0_RXCHAN, align 8
  %28 = load i32, i32* @BCM63XX_MAX_CTRL_PKT, align 4
  %29 = call i32 @bcm63xx_ep0_internal_request(%struct.bcm63xx_udc* %26, i64 %27, i32 %28)
  store i32 136, i32* %4, align 4
  br label %163

30:                                               ; preds = %19
  %31 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %32 = call i32 @bcm63xx_ep0_do_idle(%struct.bcm63xx_udc* %31)
  store i32 %32, i32* %2, align 4
  br label %176

33:                                               ; preds = %19
  %34 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %35 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %34, i32 0, i32 1
  %36 = load %struct.usb_request*, %struct.usb_request** %35, align 8
  %37 = icmp ne %struct.usb_request* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %40 = load i64, i64* @IUDMA_EP0_TXCHAN, align 8
  %41 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %42 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %41, i32 0, i32 1
  %43 = load %struct.usb_request*, %struct.usb_request** %42, align 8
  %44 = call i32 @bcm63xx_ep0_map_write(%struct.bcm63xx_udc* %39, i64 %40, %struct.usb_request* %43)
  store i32 135, i32* %4, align 4
  br label %50

45:                                               ; preds = %33
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 129, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %45
  br label %50

50:                                               ; preds = %49, %38
  br label %163

51:                                               ; preds = %19
  %52 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %53 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %58 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %57, i32 0, i32 1
  store %struct.usb_request* null, %struct.usb_request** %58, align 8
  %59 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %60 = call i32 @bcm63xx_ep0_read_complete(%struct.bcm63xx_udc* %59)
  store i32 129, i32* %4, align 4
  br label %75

61:                                               ; preds = %51
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %66 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %67 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @IUDMA_EP0_TXCHAN, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = call i32 @iudma_reset_channel(%struct.bcm63xx_udc* %65, i32* %70)
  %72 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %73 = call i32 @bcm63xx_ep0_nuke_reply(%struct.bcm63xx_udc* %72, i32 1)
  store i32 129, i32* %4, align 4
  br label %74

74:                                               ; preds = %64, %61
  br label %75

75:                                               ; preds = %74, %56
  br label %163

76:                                               ; preds = %19
  %77 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %78 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %77, i32 0, i32 1
  %79 = load %struct.usb_request*, %struct.usb_request** %78, align 8
  %80 = icmp ne %struct.usb_request* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %83 = load i64, i64* @IUDMA_EP0_RXCHAN, align 8
  %84 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %85 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %84, i32 0, i32 1
  %86 = load %struct.usb_request*, %struct.usb_request** %85, align 8
  %87 = call i32 @bcm63xx_ep0_map_write(%struct.bcm63xx_udc* %82, i64 %83, %struct.usb_request* %86)
  store i32 132, i32* %4, align 4
  br label %93

88:                                               ; preds = %76
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 129, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %88
  br label %93

93:                                               ; preds = %92, %81
  br label %163

94:                                               ; preds = %19
  %95 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %96 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %101 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %100, i32 0, i32 1
  store %struct.usb_request* null, %struct.usb_request** %101, align 8
  %102 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %103 = call i32 @bcm63xx_ep0_read_complete(%struct.bcm63xx_udc* %102)
  %104 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %105 = load i64, i64* @IUDMA_EP0_TXCHAN, align 8
  %106 = call i32 @bcm63xx_ep0_internal_request(%struct.bcm63xx_udc* %104, i64 %105, i32 0)
  store i32 130, i32* %4, align 4
  br label %121

107:                                              ; preds = %94
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %112 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %113 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @IUDMA_EP0_RXCHAN, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = call i32 @iudma_reset_channel(%struct.bcm63xx_udc* %111, i32* %116)
  %118 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %119 = call i32 @bcm63xx_ep0_nuke_reply(%struct.bcm63xx_udc* %118, i32 0)
  store i32 129, i32* %4, align 4
  br label %120

120:                                              ; preds = %110, %107
  br label %121

121:                                              ; preds = %120, %99
  br label %163

122:                                              ; preds = %19
  %123 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %124 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %129 = call i32 @bcm63xx_ep0_read_complete(%struct.bcm63xx_udc* %128)
  store i32 129, i32* %4, align 4
  br label %144

130:                                              ; preds = %122
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %135 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %136 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @IUDMA_EP0_TXCHAN, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = call i32 @iudma_reset_channel(%struct.bcm63xx_udc* %134, i32* %139)
  %141 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %142 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %141, i32 0, i32 2
  store i32* null, i32** %142, align 8
  store i32 129, i32* %4, align 4
  br label %143

143:                                              ; preds = %133, %130
  br label %144

144:                                              ; preds = %143, %127
  br label %163

145:                                              ; preds = %19
  %146 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %147 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %146, i32 0, i32 1
  %148 = load %struct.usb_request*, %struct.usb_request** %147, align 8
  store %struct.usb_request* %148, %struct.usb_request** %6, align 8
  %149 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %150 = icmp ne %struct.usb_request* %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 136, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %151
  br label %163

156:                                              ; preds = %145
  %157 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %158 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %159 = call i32 @bcm63xx_ep0_complete(%struct.bcm63xx_udc* %157, %struct.usb_request* %158, i32 0)
  %160 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %161 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %160, i32 0, i32 1
  store %struct.usb_request* null, %struct.usb_request** %161, align 8
  store i32 136, i32* %4, align 4
  br label %163

162:                                              ; preds = %19
  br label %163

163:                                              ; preds = %19, %162, %156, %155, %144, %121, %93, %75, %50, %25
  %164 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %165 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i32, i32* @EAGAIN, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %176

172:                                              ; preds = %163
  %173 = load i32, i32* %4, align 4
  %174 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %175 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %172, %169, %30
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @bcm63xx_ep0_internal_request(%struct.bcm63xx_udc*, i64, i32) #1

declare dso_local i32 @bcm63xx_ep0_do_idle(%struct.bcm63xx_udc*) #1

declare dso_local i32 @bcm63xx_ep0_map_write(%struct.bcm63xx_udc*, i64, %struct.usb_request*) #1

declare dso_local i32 @bcm63xx_ep0_read_complete(%struct.bcm63xx_udc*) #1

declare dso_local i32 @iudma_reset_channel(%struct.bcm63xx_udc*, i32*) #1

declare dso_local i32 @bcm63xx_ep0_nuke_reply(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @bcm63xx_ep0_complete(%struct.bcm63xx_udc*, %struct.usb_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
