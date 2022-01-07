; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amifb.c_ami_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32** }
%struct.amifb_par = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BPC0_LACE = common dso_local global i32 0, align 4
@custom = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@IS_OCS = common dso_local global i64 0, align 8
@BPC2_KILLEHB = common dso_local global i32 0, align 4
@BPC2_PF2P2 = common dso_local global i32 0, align 4
@BPC2_PF1P2 = common dso_local global i32 0, align 4
@IS_AGA = common dso_local global i64 0, align 8
@BPC4_ESPRM4 = common dso_local global i32 0, align 4
@BPC4_OSPRM4 = common dso_local global i32 0, align 4
@BMC0_VARBEAMEN = common dso_local global i32 0, align 4
@amiga_audio_min_period = common dso_local global i32 0, align 4
@is_lace = common dso_local global i32 0, align 4
@copdisplay = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@currentcop = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amifb_par*)* @ami_init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ami_init_display(%struct.amifb_par* %0) #0 {
  %2 = alloca %struct.amifb_par*, align 8
  %3 = alloca i32, align 4
  store %struct.amifb_par* %0, %struct.amifb_par** %2, align 8
  %4 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %5 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @BPC0_LACE, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 0), align 8
  %10 = load i64, i64* @IS_OCS, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @BPC2_KILLEHB, align 4
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ 0, %12 ], [ %14, %13 ]
  %17 = load i32, i32* @BPC2_PF2P2, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @BPC2_PF1P2, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 1), align 4
  %21 = load i64, i64* @IS_OCS, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %86, label %23

23:                                               ; preds = %15
  %24 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %25 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 19), align 8
  %27 = load i64, i64* @IS_AGA, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @BPC4_ESPRM4, align 4
  %31 = load i32, i32* @BPC4_OSPRM4, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 2), align 8
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %35 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BMC0_VARBEAMEN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %85

40:                                               ; preds = %33
  %41 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %42 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @htotal2hw(i32 %43)
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 18), align 4
  %45 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %46 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @hbstrt2hw(i32 %47)
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 17), align 8
  %49 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %50 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @hbstop2hw(i32 %51)
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 16), align 4
  %53 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %54 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @hsstrt2hw(i32 %55)
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 15), align 8
  %57 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %58 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @hsstop2hw(i64 %59)
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 14), align 4
  %61 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %62 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hcenter2hw(i32 %63)
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 13), align 8
  %65 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %66 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @vtotal2hw(i32 %67)
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 12), align 4
  %69 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %70 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @vbstrt2hw(i32 %71)
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 11), align 8
  %73 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %74 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @vbstop2hw(i32 %75)
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 10), align 4
  %77 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %78 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @vsstrt2hw(i32 %79)
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 9), align 8
  %81 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %82 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @vsstop2hw(i32 %83)
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 8), align 4
  br label %85

85:                                               ; preds = %40, %33
  br label %86

86:                                               ; preds = %85, %15
  %87 = load i64, i64* @IS_OCS, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %91 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89, %86
  %95 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %96 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 3), align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i64, i64* @IS_AGA, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %103 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 7), align 8
  br label %105

105:                                              ; preds = %101, %98
  %106 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %107 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @div16(i32 %108)
  store i32 %109, i32* @amiga_audio_min_period, align 4
  %110 = load %struct.amifb_par*, %struct.amifb_par** %2, align 8
  %111 = getelementptr inbounds %struct.amifb_par, %struct.amifb_par* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @BPC0_LACE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  store i32 %117, i32* @is_lace, align 4
  %118 = load i32, i32* @is_lace, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %105
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 4), align 8
  %122 = ashr i32 %121, 15
  store i32 %122, i32* %3, align 4
  br label %126

123:                                              ; preds = %105
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 4), align 8
  %125 = or i32 %124, 32768
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 5), align 4
  store i32 1, i32* %3, align 4
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @copdisplay, i32 0, i32 0), align 8
  %128 = load i64, i64* @currentcop, align 8
  %129 = getelementptr inbounds i32*, i32** %127, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @ZTWO_PADDR(i32 %134)
  %136 = inttoptr i64 %135 to i32*
  store i32* %136, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @custom, i32 0, i32 6), align 8
  ret void
}

declare dso_local i32 @htotal2hw(i32) #1

declare dso_local i32 @hbstrt2hw(i32) #1

declare dso_local i32 @hbstop2hw(i32) #1

declare dso_local i32 @hsstrt2hw(i32) #1

declare dso_local i32 @hsstop2hw(i64) #1

declare dso_local i32 @hcenter2hw(i32) #1

declare dso_local i32 @vtotal2hw(i32) #1

declare dso_local i32 @vbstrt2hw(i32) #1

declare dso_local i32 @vbstop2hw(i32) #1

declare dso_local i32 @vsstrt2hw(i32) #1

declare dso_local i32 @vsstop2hw(i32) #1

declare dso_local i32 @div16(i32) #1

declare dso_local i64 @ZTWO_PADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
