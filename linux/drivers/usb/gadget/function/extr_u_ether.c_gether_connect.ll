; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_ether.c_gether_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_ether.c_gether_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gether = type { %struct.TYPE_3__*, %struct.TYPE_3__*, i32 (%struct.gether*)*, i32 (%struct.gether*)*, i32, i32, i32, i32, %struct.eth_dev* }
%struct.TYPE_3__ = type { i32, %struct.eth_dev* }
%struct.eth_dev = type { %struct.net_device*, i32, %struct.gether*, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"enable %s --> %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"qlen %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @gether_connect(%struct.gether* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gether*, align 8
  %4 = alloca %struct.eth_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.gether* %0, %struct.gether** %3, align 8
  %6 = load %struct.gether*, %struct.gether** %3, align 8
  %7 = getelementptr inbounds %struct.gether, %struct.gether* %6, i32 0, i32 8
  %8 = load %struct.eth_dev*, %struct.eth_dev** %7, align 8
  store %struct.eth_dev* %8, %struct.eth_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %10 = icmp ne %struct.eth_dev* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.net_device* @ERR_PTR(i32 %13)
  store %struct.net_device* %14, %struct.net_device** %2, align 8
  br label %184

15:                                               ; preds = %1
  %16 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %17 = load %struct.gether*, %struct.gether** %3, align 8
  %18 = getelementptr inbounds %struct.gether, %struct.gether* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store %struct.eth_dev* %16, %struct.eth_dev** %20, align 8
  %21 = load %struct.gether*, %struct.gether** %3, align 8
  %22 = getelementptr inbounds %struct.gether, %struct.gether* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @usb_ep_enable(%struct.TYPE_3__* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %15
  %28 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %29 = load %struct.gether*, %struct.gether** %3, align 8
  %30 = getelementptr inbounds %struct.gether, %struct.gether* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (%struct.eth_dev*, i8*, i32, ...) @DBG(%struct.eth_dev* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %174

36:                                               ; preds = %15
  %37 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %38 = load %struct.gether*, %struct.gether** %3, align 8
  %39 = getelementptr inbounds %struct.gether, %struct.gether* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store %struct.eth_dev* %37, %struct.eth_dev** %41, align 8
  %42 = load %struct.gether*, %struct.gether** %3, align 8
  %43 = getelementptr inbounds %struct.gether, %struct.gether* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @usb_ep_enable(%struct.TYPE_3__* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %50 = load %struct.gether*, %struct.gether** %3, align 8
  %51 = getelementptr inbounds %struct.gether, %struct.gether* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (%struct.eth_dev*, i8*, i32, ...) @DBG(%struct.eth_dev* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  br label %168

57:                                               ; preds = %36
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %62 = load %struct.gether*, %struct.gether** %3, align 8
  %63 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %64 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %67 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qlen(i32 %65, i32 %68)
  %70 = call i32 @alloc_requests(%struct.eth_dev* %61, %struct.gether* %62, i32 %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %60, %57
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %163

74:                                               ; preds = %71
  %75 = load %struct.gether*, %struct.gether** %3, align 8
  %76 = getelementptr inbounds %struct.gether, %struct.gether* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %79 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 8
  %80 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %81 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @gadget_avoids_skb_reserve(i32 %82)
  %84 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %85 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  %86 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %87 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %88 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %91 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @qlen(i32 %89, i32 %92)
  %94 = call i32 (%struct.eth_dev*, i8*, i32, ...) @DBG(%struct.eth_dev* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.gether*, %struct.gether** %3, align 8
  %96 = getelementptr inbounds %struct.gether, %struct.gether* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %99 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load %struct.gether*, %struct.gether** %3, align 8
  %101 = getelementptr inbounds %struct.gether, %struct.gether* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %104 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load %struct.gether*, %struct.gether** %3, align 8
  %106 = getelementptr inbounds %struct.gether, %struct.gether* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %109 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %111 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %110, i32 0, i32 1
  %112 = call i32 @spin_lock(i32* %111)
  %113 = load %struct.gether*, %struct.gether** %3, align 8
  %114 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %115 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %114, i32 0, i32 2
  store %struct.gether* %113, %struct.gether** %115, align 8
  %116 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %117 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %116, i32 0, i32 0
  %118 = load %struct.net_device*, %struct.net_device** %117, align 8
  %119 = call i64 @netif_running(%struct.net_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %74
  %122 = load %struct.gether*, %struct.gether** %3, align 8
  %123 = getelementptr inbounds %struct.gether, %struct.gether* %122, i32 0, i32 3
  %124 = load i32 (%struct.gether*)*, i32 (%struct.gether*)** %123, align 8
  %125 = icmp ne i32 (%struct.gether*)* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.gether*, %struct.gether** %3, align 8
  %128 = getelementptr inbounds %struct.gether, %struct.gether* %127, i32 0, i32 3
  %129 = load i32 (%struct.gether*)*, i32 (%struct.gether*)** %128, align 8
  %130 = load %struct.gether*, %struct.gether** %3, align 8
  %131 = call i32 %129(%struct.gether* %130)
  br label %132

132:                                              ; preds = %126, %121
  br label %145

133:                                              ; preds = %74
  %134 = load %struct.gether*, %struct.gether** %3, align 8
  %135 = getelementptr inbounds %struct.gether, %struct.gether* %134, i32 0, i32 2
  %136 = load i32 (%struct.gether*)*, i32 (%struct.gether*)** %135, align 8
  %137 = icmp ne i32 (%struct.gether*)* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.gether*, %struct.gether** %3, align 8
  %140 = getelementptr inbounds %struct.gether, %struct.gether* %139, i32 0, i32 2
  %141 = load i32 (%struct.gether*)*, i32 (%struct.gether*)** %140, align 8
  %142 = load %struct.gether*, %struct.gether** %3, align 8
  %143 = call i32 %141(%struct.gether* %142)
  br label %144

144:                                              ; preds = %138, %133
  br label %145

145:                                              ; preds = %144, %132
  %146 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %147 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %146, i32 0, i32 1
  %148 = call i32 @spin_unlock(i32* %147)
  %149 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %150 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %149, i32 0, i32 0
  %151 = load %struct.net_device*, %struct.net_device** %150, align 8
  %152 = call i32 @netif_carrier_on(%struct.net_device* %151)
  %153 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %154 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %153, i32 0, i32 0
  %155 = load %struct.net_device*, %struct.net_device** %154, align 8
  %156 = call i64 @netif_running(%struct.net_device* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %145
  %159 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %160 = load i32, i32* @GFP_ATOMIC, align 4
  %161 = call i32 @eth_start(%struct.eth_dev* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %145
  br label %173

163:                                              ; preds = %71
  %164 = load %struct.gether*, %struct.gether** %3, align 8
  %165 = getelementptr inbounds %struct.gether, %struct.gether* %164, i32 0, i32 1
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = call i32 @usb_ep_disable(%struct.TYPE_3__* %166)
  br label %168

168:                                              ; preds = %163, %48
  %169 = load %struct.gether*, %struct.gether** %3, align 8
  %170 = getelementptr inbounds %struct.gether, %struct.gether* %169, i32 0, i32 0
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = call i32 @usb_ep_disable(%struct.TYPE_3__* %171)
  br label %173

173:                                              ; preds = %168, %162
  br label %174

174:                                              ; preds = %173, %27
  %175 = load i32, i32* %5, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* %5, align 4
  %179 = call %struct.net_device* @ERR_PTR(i32 %178)
  store %struct.net_device* %179, %struct.net_device** %2, align 8
  br label %184

180:                                              ; preds = %174
  %181 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %182 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %181, i32 0, i32 0
  %183 = load %struct.net_device*, %struct.net_device** %182, align 8
  store %struct.net_device* %183, %struct.net_device** %2, align 8
  br label %184

184:                                              ; preds = %180, %177, %11
  %185 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %185
}

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_3__*) #1

declare dso_local i32 @DBG(%struct.eth_dev*, i8*, i32, ...) #1

declare dso_local i32 @alloc_requests(%struct.eth_dev*, %struct.gether*, i32) #1

declare dso_local i32 @qlen(i32, i32) #1

declare dso_local i32 @gadget_avoids_skb_reserve(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @eth_start(%struct.eth_dev*, i32) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
