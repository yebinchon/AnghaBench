; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep0_out_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep0_out_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nbu2ss_req = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@EP0_LDATA = common dso_local global i32 0, align 4
@EP0_PACKETSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c" *** Overrun Error\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@EP0_ONAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, %struct.nbu2ss_req*)* @_nbu2ss_ep0_out_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nbu2ss_ep0_out_transfer(%struct.nbu2ss_udc* %0, %struct.nbu2ss_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbu2ss_udc*, align 8
  %5 = alloca %struct.nbu2ss_req*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %4, align 8
  store %struct.nbu2ss_req* %1, %struct.nbu2ss_req** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %12 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = call i32 @_nbu2ss_readl(i32* %14)
  %16 = load i32, i32* @EP0_LDATA, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %89

20:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %21 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %22 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %26 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %24, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %31 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %6, align 8
  %35 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %36 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %6, align 8
  %42 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @min(i32 %44, i32 %45)
  %47 = call i32 @ep0_out_pio(%struct.nbu2ss_udc* %42, i32* %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %20
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %169

52:                                               ; preds = %20
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %55 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %52
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 4
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @min(i32 %78, i32 %79)
  %81 = call i32 @ep0_out_overbytes(%struct.nbu2ss_udc* %76, i32* %77, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %84 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %68, %64, %52
  br label %90

89:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %92 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %96 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %90
  %101 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %102 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @EP0_PACKETSIZE, align 4
  %106 = srem i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %100
  %109 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %110 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %115 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %117 = call i32 @EP0_receive_NULL(%struct.nbu2ss_udc* %116, i32 0)
  store i32 1, i32* %3, align 4
  br label %169

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %100
  store i32 0, i32* %3, align 4
  br label %169

120:                                              ; preds = %90
  %121 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %122 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @EP0_PACKETSIZE, align 4
  %126 = srem i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %169

129:                                              ; preds = %120
  %130 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %131 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %135 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp sgt i32 %133, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %129
  %140 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %141 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dev_err(i32 %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %144 = load i32, i32* @EOVERFLOW, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %169

146:                                              ; preds = %129
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %151 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = call i32 @_nbu2ss_readl(i32* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @EP0_ONAK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %149
  %160 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %161 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* @EP0_ONAK, align 4
  %165 = call i32 @_nbu2ss_bitclr(i32* %163, i32 %164)
  br label %166

166:                                              ; preds = %159, %149
  store i32 1, i32* %9, align 4
  br label %167

167:                                              ; preds = %166, %146
  %168 = load i32, i32* %9, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %139, %128, %119, %113, %50
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @_nbu2ss_readl(i32*) #1

declare dso_local i32 @ep0_out_pio(%struct.nbu2ss_udc*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ep0_out_overbytes(%struct.nbu2ss_udc*, i32*, i32) #1

declare dso_local i32 @EP0_receive_NULL(%struct.nbu2ss_udc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @_nbu2ss_bitclr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
