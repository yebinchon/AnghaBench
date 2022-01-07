; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_epn_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_epn_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.nbu2ss_ep = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i64 0, align 8
@EPN_ONAK = common dso_local global i64 0, align 8
@EPN_BCLR = common dso_local global i64 0, align 8
@EPN_EN = common dso_local global i64 0, align 8
@EPN_DIR0 = common dso_local global i64 0, align 8
@EPN_OUT_EN = common dso_local global i64 0, align 8
@EPN_OUT_END_EN = common dso_local global i64 0, align 8
@EPN_AUTO = common dso_local global i64 0, align 8
@EPN_IN_EN = common dso_local global i64 0, align 8
@EPN_IN_END_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, %struct.nbu2ss_ep*)* @_nbu2ss_epn_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nbu2ss_epn_exit(%struct.nbu2ss_udc* %0, %struct.nbu2ss_ep* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbu2ss_udc*, align 8
  %5 = alloca %struct.nbu2ss_ep*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %4, align 8
  store %struct.nbu2ss_ep* %1, %struct.nbu2ss_ep** %5, align 8
  %8 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %9 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %14 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %131

20:                                               ; preds = %12
  %21 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %22 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %27 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = call i32 @_nbu2ss_writel(i32* %33, i32 0)
  %35 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %36 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 8
  %39 = shl i32 1, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %7, align 8
  %41 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %42 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @_nbu2ss_bitclr(i32* %44, i64 %45)
  %47 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %5, align 8
  %48 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USB_DIR_OUT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %20
  %53 = load i64, i64* @EPN_ONAK, align 8
  %54 = load i64, i64* @EPN_BCLR, align 8
  %55 = or i64 %53, %54
  store i64 %55, i64* %7, align 8
  %56 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %57 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @_nbu2ss_bitset(i32* %63, i64 %64)
  %66 = load i64, i64* @EPN_EN, align 8
  %67 = load i64, i64* @EPN_DIR0, align 8
  %68 = or i64 %66, %67
  store i64 %68, i64* %7, align 8
  %69 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %70 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @_nbu2ss_bitclr(i32* %76, i64 %77)
  %79 = load i64, i64* @EPN_OUT_EN, align 8
  %80 = load i64, i64* @EPN_OUT_END_EN, align 8
  %81 = or i64 %79, %80
  store i64 %81, i64* %7, align 8
  %82 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %83 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @_nbu2ss_bitclr(i32* %89, i64 %90)
  br label %130

92:                                               ; preds = %20
  %93 = load i64, i64* @EPN_BCLR, align 8
  store i64 %93, i64* %7, align 8
  %94 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %95 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @_nbu2ss_bitset(i32* %101, i64 %102)
  %104 = load i64, i64* @EPN_EN, align 8
  %105 = load i64, i64* @EPN_AUTO, align 8
  %106 = or i64 %104, %105
  store i64 %106, i64* %7, align 8
  %107 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %108 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @_nbu2ss_bitclr(i32* %114, i64 %115)
  %117 = load i64, i64* @EPN_IN_EN, align 8
  %118 = load i64, i64* @EPN_IN_END_EN, align 8
  %119 = or i64 %117, %118
  store i64 %119, i64* %7, align 8
  %120 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %121 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i64, i64* %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @_nbu2ss_bitclr(i32* %127, i64 %128)
  br label %130

130:                                              ; preds = %92, %52
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %17
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @_nbu2ss_writel(i32*, i32) #1

declare dso_local i32 @_nbu2ss_bitclr(i32*, i64) #1

declare dso_local i32 @_nbu2ss_bitset(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
