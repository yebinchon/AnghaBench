; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.nbu2ss_ep = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPN_BULK = common dso_local global i32 0, align 4
@EPN_BUF_SINGLE = common dso_local global i32 0, align 4
@EPN_INTERRUPT = common dso_local global i32 0, align 4
@EPN_ISO = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@EPN_EN = common dso_local global i32 0, align 4
@EPN_BCLR = common dso_local global i32 0, align 4
@EPN_DIR0 = common dso_local global i32 0, align 4
@EPN_ONAK = common dso_local global i32 0, align 4
@EPN_OSTL_EN = common dso_local global i32 0, align 4
@EPN_OSTL = common dso_local global i32 0, align 4
@EPN_OUT_EN = common dso_local global i32 0, align 4
@EPN_OUT_END_EN = common dso_local global i32 0, align 4
@EPN_AUTO = common dso_local global i32 0, align 4
@EPN_ISTL = common dso_local global i32 0, align 4
@EPN_IN_EN = common dso_local global i32 0, align 4
@EPN_IN_END_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, %struct.nbu2ss_ep*)* @_nbu2ss_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nbu2ss_ep_init(%struct.nbu2ss_udc* %0, %struct.nbu2ss_ep* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbu2ss_udc*, align 8
  %5 = alloca %struct.nbu2ss_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %4, align 8
  store %struct.nbu2ss_ep* %1, %struct.nbu2ss_ep** %5, align 8
  %9 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %10 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %181

16:                                               ; preds = %2
  %17 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %18 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %22 = call i32 @_nbu2ss_get_begin_ram_address(%struct.nbu2ss_udc* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 16
  %25 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %26 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %24, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %31 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @_nbu2ss_writel(i32* %38, i32 %39)
  %41 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %42 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 8
  %45 = shl i32 1, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %47 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @_nbu2ss_bitset(i32* %49, i32 %50)
  %52 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %53 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %63 [
    i32 130, label %55
    i32 129, label %57
    i32 128, label %61
  ]

55:                                               ; preds = %16
  %56 = load i32, i32* @EPN_BULK, align 4
  store i32 %56, i32* %7, align 4
  br label %64

57:                                               ; preds = %16
  %58 = load i32, i32* @EPN_BUF_SINGLE, align 4
  %59 = load i32, i32* @EPN_INTERRUPT, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %7, align 4
  br label %64

61:                                               ; preds = %16
  %62 = load i32, i32* @EPN_ISO, align 4
  store i32 %62, i32* %7, align 4
  br label %64

63:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %61, %57, %55
  %65 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %66 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @_nbu2ss_bitset(i32* %73, i32 %74)
  %76 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %77 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %78 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %81 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %79, %82
  %84 = call i32 @_nbu2ss_endpoint_toggle_reset(%struct.nbu2ss_udc* %76, i32 %83)
  %85 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %86 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @USB_DIR_OUT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %137

90:                                               ; preds = %64
  %91 = load i32, i32* @EPN_EN, align 4
  %92 = load i32, i32* @EPN_BCLR, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @EPN_DIR0, align 4
  %95 = or i32 %93, %94
  store i32 %95, i32* %7, align 4
  %96 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %97 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @_nbu2ss_bitset(i32* %104, i32 %105)
  %107 = load i32, i32* @EPN_ONAK, align 4
  %108 = load i32, i32* @EPN_OSTL_EN, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @EPN_OSTL, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %7, align 4
  %112 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %113 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @_nbu2ss_bitclr(i32* %120, i32 %121)
  %123 = load i32, i32* @EPN_OUT_EN, align 4
  %124 = load i32, i32* @EPN_OUT_END_EN, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %7, align 4
  %126 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %127 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @_nbu2ss_bitset(i32* %134, i32 %135)
  br label %180

137:                                              ; preds = %64
  %138 = load i32, i32* @EPN_EN, align 4
  %139 = load i32, i32* @EPN_BCLR, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @EPN_AUTO, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %7, align 4
  %143 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %144 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @_nbu2ss_bitset(i32* %151, i32 %152)
  %154 = load i32, i32* @EPN_ISTL, align 4
  store i32 %154, i32* %7, align 4
  %155 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %156 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @_nbu2ss_bitclr(i32* %163, i32 %164)
  %166 = load i32, i32* @EPN_IN_EN, align 4
  %167 = load i32, i32* @EPN_IN_END_EN, align 4
  %168 = or i32 %166, %167
  store i32 %168, i32* %7, align 4
  %169 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %170 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %169, i32 0, i32 0
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @_nbu2ss_bitset(i32* %177, i32 %178)
  br label %180

180:                                              ; preds = %137, %90
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %13
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @_nbu2ss_get_begin_ram_address(%struct.nbu2ss_udc*) #1

declare dso_local i32 @_nbu2ss_writel(i32*, i32) #1

declare dso_local i32 @_nbu2ss_bitset(i32*, i32) #1

declare dso_local i32 @_nbu2ss_endpoint_toggle_reset(%struct.nbu2ss_udc*, i32) #1

declare dso_local i32 @_nbu2ss_bitclr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
