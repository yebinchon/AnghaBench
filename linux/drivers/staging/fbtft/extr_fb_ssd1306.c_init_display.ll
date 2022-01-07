; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1306.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1306.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %5, align 8
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %8 = bitcast %struct.fbtft_par* %7 to %struct.fbtft_par.0*
  %9 = call i32 %6(%struct.fbtft_par.0* %8)
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %1
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %19 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %23 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 64
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %31 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 207, i32* %34, align 4
  br label %41

35:                                               ; preds = %17
  %36 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %37 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 143, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %43 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %46

46:                                               ; preds = %41, %1
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %48 = call i32 @write_reg(%struct.fbtft_par* %47, i32 174)
  %49 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %50 = call i32 @write_reg(%struct.fbtft_par* %49, i32 213)
  %51 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %52 = call i32 @write_reg(%struct.fbtft_par* %51, i32 128)
  %53 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %54 = call i32 @write_reg(%struct.fbtft_par* %53, i32 168)
  %55 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %56 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 64
  br i1 %61, label %62, label %65

62:                                               ; preds = %46
  %63 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %64 = call i32 @write_reg(%struct.fbtft_par* %63, i32 63)
  br label %80

65:                                               ; preds = %46
  %66 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %67 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 48
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %75 = call i32 @write_reg(%struct.fbtft_par* %74, i32 47)
  br label %79

76:                                               ; preds = %65
  %77 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %78 = call i32 @write_reg(%struct.fbtft_par* %77, i32 31)
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %62
  %81 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %82 = call i32 @write_reg(%struct.fbtft_par* %81, i32 211)
  %83 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %84 = call i32 @write_reg(%struct.fbtft_par* %83, i32 0)
  %85 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %86 = call i32 @write_reg(%struct.fbtft_par* %85, i32 64)
  %87 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %88 = call i32 @write_reg(%struct.fbtft_par* %87, i32 141)
  %89 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %90 = call i32 @write_reg(%struct.fbtft_par* %89, i32 20)
  %91 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %92 = call i32 @write_reg(%struct.fbtft_par* %91, i32 32)
  %93 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %94 = call i32 @write_reg(%struct.fbtft_par* %93, i32 1)
  %95 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %96 = call i32 @write_reg(%struct.fbtft_par* %95, i32 161)
  %97 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %98 = call i32 @write_reg(%struct.fbtft_par* %97, i32 200)
  %99 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %100 = call i32 @write_reg(%struct.fbtft_par* %99, i32 218)
  %101 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %102 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 64
  br i1 %107, label %108, label %111

108:                                              ; preds = %80
  %109 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %110 = call i32 @write_reg(%struct.fbtft_par* %109, i32 18)
  br label %126

111:                                              ; preds = %80
  %112 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %113 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 48
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %121 = call i32 @write_reg(%struct.fbtft_par* %120, i32 18)
  br label %125

122:                                              ; preds = %111
  %123 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %124 = call i32 @write_reg(%struct.fbtft_par* %123, i32 2)
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %108
  %127 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %128 = call i32 @write_reg(%struct.fbtft_par* %127, i32 217)
  %129 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %130 = call i32 @write_reg(%struct.fbtft_par* %129, i32 241)
  %131 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %132 = call i32 @write_reg(%struct.fbtft_par* %131, i32 219)
  %133 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %134 = call i32 @write_reg(%struct.fbtft_par* %133, i32 64)
  %135 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %136 = call i32 @write_reg(%struct.fbtft_par* %135, i32 164)
  %137 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %138 = call i32 @write_reg(%struct.fbtft_par* %137, i32 166)
  %139 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %140 = call i32 @write_reg(%struct.fbtft_par* %139, i32 175)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
